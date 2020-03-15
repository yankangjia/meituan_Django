"""
自定义用户权限验证类
"""
from rest_framework.permissions import BasePermission


class IsEditUser(BasePermission):
    """
    编辑员工权限验证类
    """

    def has_permission(self, request, view):
        if request.user.is_superuser or request.user.has_perm('meituan.change_merchant'):
            return True
        return False


class IsFinanceUser(BasePermission):
    """
    财务员工权限验证类
    """

    def has_permission(self, request, view):
        if request.user.is_superuser or request.user.has_perm('meituan.change_order'):
            return True
        return False
