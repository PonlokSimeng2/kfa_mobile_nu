// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'property_like_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyLikeModel _$PropertyLikeModelFromJson(Map<String, dynamic> json) =>
    _PropertyLikeModel(
      id: PropertyViewId.fromJson(json['id']),
      propertyId: json['property_id'] as String,
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertyLikeModelToJson(_PropertyLikeModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'property_id': instance.propertyId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tablePropertyLikeModel = TableBuilder(
  tableName: "property_likes",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('property_id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(UserModel.table,
        key: "user", candidateKey: null, foreignKey: 'user_id'),
  ],
);
