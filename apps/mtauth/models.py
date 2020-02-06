from django.db import models
from django.contrib.auth.models import BaseUserManager,AbstractBaseUser,PermissionsMixin
from shortuuidfield import ShortUUIDField

class UserManager(BaseUserManager):
    def _create_user(self,telephone,username,password,**kwargs):
        if not telephone:
            raise ValueError("请填入手机号码！")
        user = self.model(telephone=telephone,username=username,**kwargs)
        user.set_password(password)
        user.save()
        return user
    def create_user(self,telephone,username,password,**kwargs):
        kwargs.setdefault('is_superuser',False)
        return self._create_user(telephone,username,password)
    def create_superuser(self,telephone,username,password,**kwargs):
        kwargs['is_superuser'] = True
        kwargs['is_staff'] = True
        return self._create_user(telephone,username,password,**kwargs)

class MTUser(AbstractBaseUser,PermissionsMixin):
    id = ShortUUIDField(primary_key=True,verbose_name='用户表主键')
    telephone = models.CharField(max_length=11,unique=True,verbose_name='手机号码')
    email = models.EmailField(max_length=100,unique=True,null=True,verbose_name='邮箱')
    username = models.CharField(max_length=100,unique=False,verbose_name='用户名')
    avatar = models.CharField(max_length=200,verbose_name='头像链接')
    date_joined = models.DateTimeField(auto_now_add=True,verbose_name='加入时间')
    is_active = models.BooleanField(default=True,verbose_name='是否可用')
    is_staff = models.BooleanField(default=False,verbose_name='是否是员工')
    is_merchant = models.BooleanField(default=False,verbose_name='是否是商家')

    USERNAME_FIELD = 'telephone'
    REQUIRED_FIELDS = ['username']

    EMAIL_FIELD = 'email'

    objects = UserManager()

    def get_full_name(self):
        return self.username
    def get_short_name(self):
        return self.username