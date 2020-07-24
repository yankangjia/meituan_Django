from rest_framework import views,viewsets,status,mixins,generics,permissions,filters
from rest_framework.response import Response
from utils.CCPSDK import CCPRestSDK
from .throttles import SMSCodeRateThrottle
import random,os,json
from django.core.cache import cache
from .serializers import LoginSerializer
from django.contrib.auth import get_user_model
from django.utils.timezone import now
from apps.mtauth.serializers import UserSerializer
from apps.mtauth.authentications import generic_jwt
from apps.meituan import models
from apps.meituan import serializers
from rest_framework.decorators import action
from rest_framework.pagination import PageNumberPagination
from alipay import AliPay
from django.conf import settings
from django.shortcuts import redirect,reverse

User = get_user_model()

class BaseView(object):
    permission_classes = [permissions.IsAuthenticated]

class SMSCodeView(views.APIView):
    # throttle_classes = [AnonRateThrottle]
    throttle_classes = [SMSCodeRateThrottle]
    def __init__(self,*args,**kwargs):
        super(SMSCodeView,self).__init__(*args,**kwargs)
        self.numbers = [str(i) for i in range(10)]
        self.accoundSid = '8a216da86f9cc12f0170046bcca2230e'
        self.accountToken = '89e779f980ce4cd9b8ac6adf82209f34'
        self.appId = '8a216da86f9cc12f0170046bcd092314'

    def generate_sms_code(self):
        return ''.join(random.choices(self.numbers,k=6))

    def get(self,request):
        telephone = request.query_params.get('tel')
        if not telephone:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        code = self.generate_sms_code()
        cache.set(telephone,code,60*5)
        print(code)
        return Response({'sms_code':code})
        # rest = CCPRestSDK.REST(self.accoundSid, self.accountToken, self.appId)
        # result = rest.sendTemplateSMS(telephone,[code,5],'1')
        # if result['statusCode'] == '000000':
        #     return Response()
        # else:
        #     return Response(status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class LoginView(views.APIView):

    def generic_number(self):
        numbers = [str(i) for i in range(10)]
        return ''.join(random.choices(numbers,k=6))

    def post(self,request):
        serializer = LoginSerializer(data=request.data)
        if serializer.is_valid():
            telephone = serializer.validated_data.get('telephone')
            try:
                user = User.objects.get(telephone=telephone)
                user.last_login = now()
                user.save()
            except:
                username = '美团用户'+self.generic_number()
                user = User.objects.create(telephone=telephone,username=username,password='',last_login=now())
            user_serializer = UserSerializer(instance=user)
            token = generic_jwt(user)
            return Response(data={'user':user_serializer.data,'token':token})
        else:
            return Response(data={'message':dict(serializer.errors)},status=status.HTTP_400_BAD_REQUEST)

class LogoutView(views.APIView):

    def post(self,request):
        request.session.flush()
        return Response()

class MerchantPagination(PageNumberPagination):
    page_query_params = 'page'
    page_size = 8

class MerchantViewSet(
    # BaseView,
    viewsets.GenericViewSet,
    mixins.ListModelMixin,
    mixins.RetrieveModelMixin
):
    queryset = models.Merchant.objects.all()
    serializer_class = serializers.MerchantSerializer
    pagination_class = MerchantPagination

# viewsets.GenericViewSet
# generics
class CategoryViewSet(
    # BaseView,
    viewsets.GenericViewSet,
):
    queryset = models.GoodsCategory.objects.all()
    serializer_class = serializers.GoodsCategorySerializer

    # /cms/category/merchant/<int:merchant_id>
    @action(['GET'],detail=False,url_path='merchant/(?P<merchant_id>\d+)')
    def merchant_category(self,request,merchant_id):
        queryset = self.get_queryset().filter(merchant=merchant_id)
        serializer = self.get_serializer(instance=queryset,many=True)
        return Response(data=serializer.data)

class MerchantSearchView(generics.ListAPIView):
    # 继承SearchFilter，修改搜索参数
    class MerchantSearchFilter(filters.SearchFilter):
        search_param = 'q'
    queryset = models.Merchant.objects.all()
    serializer_class = serializers.MerchantSerializer
    filter_backends = [MerchantSearchFilter]
    # 过滤的字段
    search_fields = ['name','categories__name','categories__goods_list__name']

class AddressViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.AddressSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return self.request.user.addresses.all()

    def perform_create(self, serializer):
        if serializer.validated_data.get('is_default'):
            self.request.user.addresses.update(is_default=False)
        serializer.save(user=self.request.user)

    def perform_update(self, serializer):
        if serializer.validated_data.get('is_default'):
            self.request.user.addresses.update(is_default=False)
        serializer.save()

    # 获取默认地址    /address/default
    @action(['GET'],detail=False,url_path='default')
    def default_address(self,request):
        try:
            address = self.request.user.addresses.get(is_default=True)
        except:
            address = self.request.user.addresses.first()
        serializer = self.get_serializer(instance=address)
        return Response(data=serializer.data)

class CreateOrderView(views.APIView):
    def post(self,request):
        serializer = serializers.CreateOrderSerializer(data=request.data)
        if serializer.is_valid():
            address_id = serializer.validated_data.get('address_id')
            goods_list_param = serializer.validated_data.get('goods_list')
            print(goods_list_param)
            merchant_id = serializer.validated_data.get('merchant_id')
            address = models.UserAddress.objects.get(pk=address_id)

            # 获取订单中所有商品
            goods_id_list = []
            for goods in goods_list_param:
                goods_id_list.append(goods['goods_id'])
            goods_list = models.Goods.objects.filter(pk__in=goods_id_list)

            # 获取商家
            try:
                merchant = models.Merchant.objects.get(pk=merchant_id)
            except:
                return Response(status=400)

            # 获取商品总数量和总价格
            goods_list_dict = {}        # key: goods_id, value: count
            for goods in goods_list_param:
                goods_list_dict[goods['goods_id']] = goods['count']
            goods_count = 0
            total_price = 0
            for goods in goods_list:
                goods_count += goods_list_dict[goods.id]
                total_price += goods.price * goods_count

            # 创建订单
            order = models.Order.objects.create(
                address=address,
                goods_count=goods_count,
                total_price=total_price,
                user=request.user,
                merchant=merchant
            )
            # 由于不是真实业务，因此直接设置为支付已完成，真实环境下以下两行要删掉
            order.pay_method = 2
            order.order_status = 3
            order.save()

            # 批量创建订单项
            order_items = []
            for goods in goods_list:
                order_item = models.OrderItem(order=order, goods=goods,count=goods_list_dict[goods.id])
                order_items.append(order_item)
            models.OrderItem.objects.bulk_create(order_items)

            return Response({'pay_url': '/#/orders/'})

            # 支付宝支付
            alipay = AliPay(
                appid="2016102000727796",
                app_notify_url=None,  # 默认回调url
                app_private_key_string=open(os.path.join(settings.BASE_DIR,'keys','app_private_key.txt'),'r').read(),
                # 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥,
                alipay_public_key_string=open(os.path.join(settings.BASE_DIR,'keys','alipay_public_key.txt'),'r').read(),
                sign_type="RSA2",  # RSA 或者 RSA2
                debug = True  # 默认False
            )
            # 手机网站支付，需要跳转到
            # 真实环境：https://openapi.alipay.com/gateway.do? + order_string
            # 沙箱环境：https://openapi.alipaydev.com/gateway.do? + order_string
            order_string = alipay.api_alipay_trade_wap_pay(
                out_trade_no=order.pk,
                total_amount=str(order.total_price), # str(Decimal) => JSON
                subject='外卖',
                return_url=request.build_absolute_uri(reverse('h5:callback')), # get
                notify_url=request.build_absolute_uri(reverse('h5:callback'))  # post 可选, 不填则使用默认notify url
            )
            print(request.build_absolute_uri(reverse('h5:callback')))
            pay_url = 'https://openapi.alipaydev.com/gateway.do?' + order_string
            return Response({'pay_url':pay_url})
        else:
            return Response({'message':dict(serializer.errors)},status=status.HTTP_400_BAD_REQUEST)

class AlipayCallbackView(views.APIView):
    # 支付完成跳转
    def get(self,request):
        return redirect('/orders')
    # 支付完成通知
    def post(self,request):
        data = request.data
        alipay_data = dict(list(data.items()))
        print('=====================================')
        print(alipay_data)
        signature = alipay_data.pop('sign')
        alipay = AliPay(
            appid="2016102000727796",
            app_notify_url=None,  # 默认回调url
            app_private_key_string=open(os.path.join(settings.BASE_DIR, 'keys', 'app_private_key.txt'), 'r').read(),
            # 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥,
            alipay_public_key_string=open(os.path.join(settings.BASE_DIR, 'keys', 'alipay_public_key.txt'), 'r').read(),
            sign_type="RSA2",  # RSA 或者 RSA2
            debug=True  # 默认False
        )
        success = alipay.verify(alipay_data,signature)
        if success and alipay_data["trade_status"] in ("TRADE_SUCCESS", "TRADE_FINISHED" ):
            order_id = alipay_data.get('out_trade_no')
            order = models.Order.objects.get(pk=order_id)
            print('order_id: ' + order_id)
            order.pay_method = 2
            order.order_status = 2
            order.save()
            return Response()
        else:
            return Response({'message':'订单支付失败！'},status=status.HTTP_400_BAD_REQUEST)

class OrderViewSet(viewsets.ModelViewSet):
    serializer_class = serializers.OrderSerializer
    permission_classes = [permissions.IsAuthenticated]

    def get_queryset(self):
        return self.request.user.orders.all().order_by('-create_time')

class GoodsListView(views.APIView):
    def get(self,request):
        goods_id_list = request.GET.get('goods_id_list')
        goods_id_list = json.loads(goods_id_list)
        goodses = models.Goods.objects.filter(id__in=goods_id_list)
        serializer = serializers.GoodsSerializer(instance=goodses,many=True)
        return Response(serializer.data)

class MerchantByIdView(views.APIView):
    def get(self, request):
        merchant_id_list = request.GET.get('merchant_id_list')
        merchant_id_list = json.loads(merchant_id_list)
        merchants = models.Merchant.objects.filter(id__in=merchant_id_list)
        serializer = serializers.MerchantSerializer(instance=merchants, many=True)
        return Response(serializer.data)