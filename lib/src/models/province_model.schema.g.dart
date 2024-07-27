// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'province_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceModelImpl _$$ProvinceModelImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ProvinceModelImplToJson(_$ProvinceModelImpl instance) =>
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
