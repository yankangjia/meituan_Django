"""
cms后端路径
"""
from django.urls import path,re_path
from django.views.generic import TemplateView
from rest_framework.routers import DefaultRouter

from . import views

app_name = 'cms'

# trailing_slash表示url末尾是否需要斜线
router = DefaultRouter(trailing_slash=False)
router.register('merchant',views.MerchantViewSet,base_name='merchant')
router.register('category',views.CategoryViewSet,base_name='category')
router.register('goods',views.GoodsViewSet,base_name='goods')

urlpatterns = [
    re_path('^$', TemplateView.as_view(template_name='cms_index.html'),name='index'),
    path('login',views.LoginView.as_view(),name='login'),
    path('upload',views.PictureUploadView.as_view(),name='upload'),
    path('initstaff',views.InitStaff.as_view(),name='initstaff')
] + router.urls