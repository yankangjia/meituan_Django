from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group,ContentType,Permission
from apps.meituan.models import Merchant,GoodsCategory,Goods,Order

class Command(BaseCommand):
    def handle(self, *args, **options):
        # 编辑组
        edit_content_types = [
            ContentType.objects.get_for_model(Merchant),
            ContentType.objects.get_for_model(GoodsCategory),
            ContentType.objects.get_for_model(Goods),
        ]
        edit_permissions = Permission.objects.filter(content_type__in=edit_content_types)
        edit_group = Group.objects.create(name='编辑')
        edit_group.permissions.set(edit_permissions)
        edit_group.save()
        self.stdout.write('编辑组创建成功')

        # 财务组
        finance_content_types = [
            ContentType.objects.get_for_model(Order)
        ]
        finance_permissions = Permission.objects.filter(content_type__in=finance_content_types)
        finance_group = Group.objects.create(name='财务')
        finance_group.permissions.set(finance_permissions)
        finance_group.save()
        self.stdout.write('财务组创建成功')

        # 管理组
        admin_permissions = edit_permissions.union(finance_permissions)
        admin_group = Group.objects.create(name='管理')
        admin_group.permissions.set(admin_permissions)
        admin_group.save()
        self.stdout.write('管理组创建成功')