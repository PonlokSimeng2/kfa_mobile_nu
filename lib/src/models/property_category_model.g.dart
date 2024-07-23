// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyCategoryModelImpl _$$PropertyCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyCategoryModelImpl(
      id: (json['property_type_category_id'] as num).toInt(),
      name: json['category_name'] as String,
      totalSale: (json['sale_count'] as num?)?.toInt(),
      totalRent: (json['rent_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PropertyCategoryModelImplToJson(
        _$PropertyCategoryModelImpl instance) =>
    <String, dynamic>{
      'property_type_category_id': instance.id,
      'category_name': instance.name,
      'sale_count': instance.totalSale,
      'rent_count': instance.totalRent,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tablePropertyCategoryModel = TableBuilder(
  tableName: "property_type_categories",
  columns: [
    ColumnBuilder('property_type_category_id'),
    ColumnBuilder('category_name'),
    ColumnBuilder('sale_count'),
    ColumnBuilder('rent_count'),
  ],
);
