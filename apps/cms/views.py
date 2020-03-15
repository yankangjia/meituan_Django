import shortuuid
import os

from django.conf import settings
from django.contrib.auth import get_user_model
from django.contrib.auth.models import Group
from django.utils.timezone import now

from rest_framework.response import Response
from rest_framework import status
from rest_framework.viewsets import ModelViewSet,GenericViewSet
from rest_framework.views import APIView
from rest_framework.authtoken.serializers import AuthTokenSerializer
from rest_framework.permissions import IsAuthenticated,IsAdminUser
from rest_framework.pagination import PageNumberPagination
from rest_framework import mixins
from rest_framework.decorators import action
from rest_framework.decorators import api_view

from apps.mtauth.serializers import UserSerializer
from apps.mtauth.authentications import generic_jwt
from apps.meituan import models
from apps.meituan import serializers
from apps.mtauth.permissions import IsEditUser,IsFinanceUser
from apps.mtauth.authentications import JWTAuthentication


MTUser = get_user_model()


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
class MerchantViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated,IsEditUser]
    queryset = models.Merchant.objects.order_by('-create_time').all()
    serializer_class = serializers.MerchantSerializer
    pagination_class = MerchantPagination


# 商品分类
class CategoryViewSet(GenericViewSet,
                      mixins.CreateModelMixin,
                      mixins.UpdateModelMixin,
                      mixins.DestroyModelMixin,
                      mixins.RetrieveModelMixin):
    permission_classes = [IsAuthenticated,IsEditUser]
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


class GoodsViewSet(GenericViewSet,
                   mixins.CreateModelMixin,
                   mixins.UpdateModelMixin,
                   mixins.DestroyModelMixin,
                   mixins.RetrieveModelMixin):
    permission_classes = [IsAuthenticated,IsEditUser]
    queryset = models.Goods.objects.all()
    serializer_class = serializers.GoodsSerializer


class OrderViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated,IsFinanceUser]
    queryset = models.Order.objects.all()


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


class InitStaff(APIView):
    permission_classes = []

    def get(self,request):
        users = models.MTUser.objects.all()
        for user in users:
            user.set_password("111111")
            user.save()

        edit_group = Group.objects.get(name="编辑")
        user1 = MTUser.objects.get(telephone="18899990000")
        user1.groups.add(edit_group)
        user1.save()

        finance_group = Group.objects.get(name="财务")
        user2 = MTUser.objects.get(telephone="18800009999")
        user2.groups.add(finance_group)
        user2.save()
        return Response("success")