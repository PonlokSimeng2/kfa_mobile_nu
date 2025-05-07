// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'property_comment_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyCommentModel _$PropertyCommentModelFromJson(
        Map<String, dynamic> json) =>
    _PropertyCommentModel(
      id: PropertyCommentId.fromJson(json['id']),
      propertyId: (json['property_id'] as num).toInt(),
      userId: json['user_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      content: json['content'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropertyCommentModelToJson(
        _PropertyCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'property_id': instance.propertyId,
      'user_id': instance.userId,
      'created_at': instance.createdAt.toIso8601String(),
      'content': instance.content,
      'user': instance.user.toJson(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tablePropertyCommentModel = TableBuilder(
  tableName: "property_comments",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('property_id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('created_at'),
    ColumnBuilder('content'),
    ColumnBuilder.join(UserModel.table,
        key: "user", candidateKey: null, foreignKey: 'user_id'),
  ],
);
