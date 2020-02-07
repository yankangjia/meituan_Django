from rest_framework.permissions import BasePermission

class IsEditUser(BasePermission):
    def has_permission(self, request, view):
        if request.user.is_superuser or request.user.has_perm('meituan.change_merchant'):
            return True
        return False

class IsFinanceUser(BasePermission):
    def has_permission(self, request, view):
        if request.user.is_superuser or request.user.has_perm('meituan.change_order'):
            return True
        return False
