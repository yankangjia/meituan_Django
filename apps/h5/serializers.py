"""
登录序列化
"""
from rest_framework import serializers
from django.core.cache import cache


class LoginSerializer(serializers.Serializer):
    telephone = serializers.CharField(max_length=11,min_length=11)
    smscode = serializers.CharField(max_length=6,min_length=6)

    def validate(self, attrs):
        telephone = attrs.get('telephone')
        smscode = attrs.get('smscode')
        cached_code = cache.get(telephone)
        print(cached_code)
        if cached_code != smscode:
            raise serializers.ValidationError('验证码错误')
        return attrs