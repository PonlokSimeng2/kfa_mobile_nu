// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'province_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProvinceModel _$ProvinceModelFromJson(Map<String, dynamic> json) =>
    _ProvinceModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProvinceModelToJson(_ProvinceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableProvinceModel = TableBuilder(
  tableName: "provinces",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);
