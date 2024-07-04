// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      photo: json['photo'] as String?,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      vpoints: (json['vpoints'] as num).toInt(),
      joinedAt: DateTime.parse(json['joined_at'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'photo': instance.photo,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'vpoints': instance.vpoints,
      'joined_at': instance.joinedAt.toIso8601String(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableUserModel = TableBuilder(
  tableName: "users",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('user_id'),
    ColumnBuilder('photo'),
    ColumnBuilder('first_name'),
    ColumnBuilder('last_name'),
    ColumnBuilder('email'),
    ColumnBuilder('phone'),
    ColumnBuilder('vpoints'),
    ColumnBuilder('joined_at'),
  ],
);
