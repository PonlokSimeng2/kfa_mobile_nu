// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyTypeModelImpl _$$PropertyTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyTypeModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PropertyTypeModelImplToJson(
        _$PropertyTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tablePropertyTypeModel = TableBuilder(
  tableName: "properties_types",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);
