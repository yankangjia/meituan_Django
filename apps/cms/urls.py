from django.urls import path
from . import views
from rest_framework.routers import DefaultRouter

app_name = 'cms'

# trailing_slash表示url末尾是否需要斜线
router = DefaultRouter(trailing_slash=False)
router.register('merchant',views.MerchantViewSet,base_name='merchant')
router.register('category',views.CategoryViewSet,base_name='category')
router.register('goods',views.GoodsViewSet,base_name='goods')

urlpatterns = [
    path('login',views.LoginView.as_view(),name='login'),
    path('upload',views.PictureUploadView.as_view(),name='upload'),
] + router.urls