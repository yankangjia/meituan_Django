from django.urls import path
from . import views
from rest_framework.routers import DefaultRouter
from . import views

app_name = 'h5'

router = DefaultRouter(trailing_slash=False)
router.register('merchant',views.MerchantViewSet,base_name='merchant')
router.register('category',views.CategoryViewSet,base_name='category')
router.register('address',views.AddressViewSet,base_name='address')
router.register('order',views.OrderViewSet,base_name='order')

urlpatterns = [
    path('smscode',views.SMSCodeView.as_view(),name='smscode'),
    path('login',views.LoginView.as_view(),name='login'),
    path('logout',views.LogoutView.as_view(),name='logout'),
    path('search',views.MerchantSearchView.as_view(),name='search'),
    path('submitorder',views.CreateOrderView.as_view(),name='submitorder'),
    path('callback',views.AlipayCallbackView.as_view(),name='callback'),
    path('goods_list',views.GoodsListView.as_view(),name='goods_list'),
    path('get_merchant_by_ids',views.MerchantByIdView.as_view(),name='get_merchant_by_ids')
] + router.urls