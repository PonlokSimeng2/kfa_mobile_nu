// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoadModelImpl _$$RoadModelImplFromJson(Map<String, dynamic> json) =>
    _$RoadModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RoadModelImplToJson(_$RoadModelImpl instance) =>
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
