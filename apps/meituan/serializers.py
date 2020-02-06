from rest_framework import serializers
from .models import Merchant,GoodsCategory,Goods,UserAddress


class MerchantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Merchant
        fields = '__all__'

class GoodsSerializer(serializers.ModelSerializer):
    category_id = serializers.IntegerField()
    class Meta:
        model = Goods
        exclude = ['category']

    def validate_category_id(self,value):
        if not GoodsCategory.objects.filter(pk=value).exists():
            raise serializers.ValidationError("分类不存在！")
        return value

    def create(self,validated_data):
        category_id = validated_data.pop('category_id')
        category = GoodsCategory.objects.get(pk=category_id)
        return Goods.objects.create(**validated_data,category=category)

class GoodsCategorySerializer(serializers.ModelSerializer):
    # 获取分类时同时获取分类所属的商家信息
    # merchant = MerchantSerializer(read_only=True)
    # 创建分类时指定merchant_id
    merchant_id = serializers.IntegerField()
    # 获取分类时同时获取该分类下的所有商品
    goods_list = GoodsSerializer(many=True,read_only=True)
    class Meta:
        model = GoodsCategory
        exclude = ['merchant']

    def validate_merchant_id(self,value):
        if Merchant.objects.filter(pk=value).exists():
            return value
        else:
            raise serializers.ValidationError('商家不存在')

    def create(self, validated_data):
        merchant_id = validated_data.get('merchant_id')
        merchant = Merchant.objects.get(pk=merchant_id)
        return GoodsCategory.objects.create(**validated_data,merchant=merchant)

class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserAddress
        exclude = ['user']

class CreateOrderSerializer(serializers.Serializer):
    address_id = serializers.IntegerField()
    goods_id_list = serializers.ListField(min_length=1)