// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'property_type_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyTypeModel _$PropertyTypeModelFromJson(Map<String, dynamic> json) =>
    _PropertyTypeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PropertyTypeModelToJson(_PropertyTypeModel instance) =>
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
