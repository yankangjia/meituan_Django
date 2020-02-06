from rest_framework.views import APIView
from rest_framework.authtoken.serializers import AuthTokenSerializer
from apps.mtauth.serializers import UserSerializer
from apps.mtauth.authentications import generic_jwt
from django.utils.timezone import now
from rest_framework.response import Response
from rest_framework import status
from rest_framework.viewsets import ModelViewSet,GenericViewSet
from apps.meituan import models
from apps.meituan import serializers
from apps.mtauth.authentications import JWTAuthentication
from rest_framework.permissions import IsAuthenticated,IsAdminUser
from rest_framework.pagination import PageNumberPagination
from rest_framework import mixins
import shortuuid,os
from django.conf import settings
from rest_framework.decorators import action

class CmsBaseView(object):
    permission_classes = [IsAuthenticated, IsAdminUser]

# 登录
class LoginView(APIView):
    def post(self,request):
        serializer = AuthTokenSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.validated_data.get('user')
            user.last_login = now()
            user.save()
            user_serializer = UserSerializer(instance=user)
            token = generic_jwt(user)
            return Response(data={'token':token,'user':user_serializer.data})
        else:
            return Response(data={'message':'用户名或密码错误'},status=status.HTTP_400_BAD_REQUEST)


class MerchantPagination(PageNumberPagination):
    page_size = 12
    page_query_param = 'page'
# 商家
class MerchantViewSet(CmsBaseView,ModelViewSet):
    queryset = models.Merchant.objects.order_by('-create_time').all()
    serializer_class = serializers.MerchantSerializer
    pagination_class = MerchantPagination

# 商品分类
# class GoodsCategoryViewSet(CmsBaseView,ModelViewSet):
#     queryset = models.GoodsCategory.objects.all()
#     serializer_class = serializers.GoodsCategorySerializer
#
#     def list(self, request, *args, **kwargs):
#         goods_categorys = self.get_queryset()
#         merchant_id = request.query_params.get('merchant_id')
#         if merchant_id is not None:
#             try:
#                 merchant = models.Merchant.objects.get(pk=merchant_id)
#             except:
#                 models.GoodsCategory.DoesNotExist('商家不存在')
#             else:
#                 goods_categorys = goods_categorys.filter(merchant=merchant)
#         page = self.paginate_queryset(goods_categorys)
#         if page is not None:
#             serializer = self.get_serializer(page, many=True)
#             return self.get_paginated_response(serializer.data)
#
#         serializer = self.get_serializer(instance=goods_categorys, many=True)
#         return Response(data=serializer.data)


# 商品分类

class CategoryViewSet(
    CmsBaseView,
    GenericViewSet,
    mixins.CreateModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    mixins.RetrieveModelMixin
):
    queryset = models.GoodsCategory.objects.all()
    serializer_class = serializers.GoodsCategorySerializer

    # /cms/category/merchant/<int:merchant_id>
    @action(['GET'],detail=False,url_path='merchant/(?P<merchant_id>\d+)')
    def merchant_category(self,request,merchant_id):
        queryset = self.get_queryset().filter(merchant=merchant_id)
        serializer = self.get_serializer(instance=queryset,many=True)
        return Response(data=serializer.data)

    def destroy(self, request, *args, **kwargs):
        # 删除分类时分类下不能有商品
        instance = self.get_object()
        if instance.goods_list.count() > 0:
            return Response(status=status.HTTP_400_BAD_REQUEST)
        else:
            self.perform_destroy(instance)
            return Response(status=status.HTTP_204_NO_CONTENT)

class GoodsViewSet(
    CmsBaseView,
    GenericViewSet,
    mixins.CreateModelMixin,
    mixins.UpdateModelMixin,
    mixins.DestroyModelMixin,
    mixins.RetrieveModelMixin
):
    queryset = models.Goods.objects.all()
    serializer_class = serializers.GoodsSerializer

# 上传图片
class PictureUploadView(CmsBaseView,APIView):
    def post(self,request):
        file = request.data.get('file')
        file_url = self.save_file(file)
        return Response({'picture':file_url})
    def save_file(self,file):
        filename = shortuuid.uuid() + os.path.splitext(file.name)[-1]
        filepath = os.path.join(settings.MEDIA_ROOT,filename)
        with open(filepath,'wb') as fp:
            for chunk in file.chunks():
                fp.write(chunk)
        # 将路径和域名拼接成url
        return self.request.build_absolute_uri(settings.MEDIA_URL + filename)
