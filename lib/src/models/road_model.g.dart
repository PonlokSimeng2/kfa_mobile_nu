// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'road_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoadModel _$RoadModelFromJson(Map<String, dynamic> json) => _RoadModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RoadModelToJson(_RoadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableRoadModel = TableBuilder(
  tableName: "roads",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);
