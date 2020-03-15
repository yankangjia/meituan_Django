"""
自定义序列化类
"""
from django.contrib.auth.models import Group
from rest_framework.serializers import ModelSerializer

from .models import MTUser


class GroupSerializer(ModelSerializer):
    """
    用户组序列化类
    """

    class Meta:
        model = Group
        fields = ['id','name']


class UserSerializer(ModelSerializer):
    """
    用户序列化类
    """
    groups = GroupSerializer(many=True)

    class Meta:
        model = MTUser
        exclude = ['password']

