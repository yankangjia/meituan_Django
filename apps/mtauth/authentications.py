"""
自定义用户认证类
"""
import jwt
import time
from django.conf import settings
from django.contrib.auth import get_user_model
from rest_framework.authentication import BaseAuthentication,get_authorization_header
from rest_framework import exceptions


User = get_user_model()


# 生成token
def generic_jwt(user):
    expires_time = int(time.time() + 60*60*24*7)
    # expires_time = int(time.time() + 2)
    # 因为jwt.encode返回的是bytes数据，所以使用decode解码成utf-8
    return jwt.encode({'userid':user.id,'exp':expires_time},key=settings.SECRET_KEY).decode('utf-8')


# 自定义JWT认证
class JWTAuthentication(BaseAuthentication):
    """
    Authorization: JWT 401f7ac837da42b97f613d789819ff93537bee6a
    """
    keyword = 'JWT'
    model = None

    def authenticate(self, request):
        # 获取并分割headers中authorization的值
        auth = get_authorization_header(request).split()

        if not auth or auth[0].lower() != self.keyword.lower().encode():
            return None

        if len(auth) == 1:
            msg = 'Authorization 不可用！'
            raise exceptions.AuthenticationFailed(msg)
        elif len(auth) > 2:
            msg = 'Authorization 不可用！应该提供一个空格！'
            raise exceptions.AuthenticationFailed(msg)

        try:
            jwt_token = auth[1]
            # 解析后会自动判断token是否过期，如果过期则会抛出异常
            token_info = jwt.decode(jwt_token,key=settings.SECRET_KEY)
            userid = token_info.get('userid')
            try:
                user = User.objects.get(pk=userid)
                return (user,token_info)
            except:
                msg = '用户不存在！'
                raise exceptions.AuthenticationFailed(msg)
        except jwt.ExpiredSignatureError:
            msg = 'Token已经过期了！'
            raise exceptions.AuthenticationFailed(msg)
