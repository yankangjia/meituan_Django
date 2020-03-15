"""
美团后端路由
"""
from django.urls import path
from rest_framework.routers import DefaultRouter
from . import views

app_name = 'h5'

router = DefaultRouter(trailing_slash=False)
router.register('merchant',views.MerchantViewSet,base_name='merchant')
router.register('category',views.CategoryViewSet,base_name='category')
router.register('address',views.AddressViewSet,base_name='address')

urlpatterns = [
    path('smscode',views.SMSCodeView.as_view(),name='smscode'),
    path('login',views.LoginView.as_view(),name='login'),
    path('search',views.MerchantSearchView.as_view(),name='search'),
    path('submitorder',views.OrderView.as_view(),name='submitorder'),
    path('callback',views.AlipayCallbackView.as_view(),name='callback')
] + router.urls