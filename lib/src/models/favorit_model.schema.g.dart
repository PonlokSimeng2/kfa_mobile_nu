// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'favorit_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteModelImpl _$$FavoriteModelImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteModelImpl(
      id: (json['id'] as num).toInt(),
      userId: json['user_id'] as String,
      propertyId: json['property_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      property:
          PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoriteModelImplToJson(_$FavoriteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'property_id': instance.propertyId,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'property': instance.property.toJson(),
    };

_$CreateFavoriteParamImpl _$$CreateFavoriteParamImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateFavoriteParamImpl(
      userId: json['user_id'] as String,
      propertyId: json['property_id'] as String,
    );

Map<String, dynamic> _$$CreateFavoriteParamImplToJson(
        _$CreateFavoriteParamImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'property_id': instance.propertyId,
    };

_$UpdateFavoriteParamImpl _$$UpdateFavoriteParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFavoriteParamImpl(
      userId: json['user_id'] as String,
      propertyId: json['property_id'] as String,
    );

Map<String, dynamic> _$$UpdateFavoriteParamImplToJson(
        _$UpdateFavoriteParamImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'property_id': instance.propertyId,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableFavoriteModel = TableBuilder(
  tableName: "favorite",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('property_id'),
    ColumnBuilder('created_at'),
    ColumnBuilder.join(UserModel.table,
        key: "user", candidateKey: null, foreignKey: 'user_id'),
    ColumnBuilder.join(PropertyModel.table,
        key: "property", candidateKey: null, foreignKey: 'property_id'),
  ],
);
