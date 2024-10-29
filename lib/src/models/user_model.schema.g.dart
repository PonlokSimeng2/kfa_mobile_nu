// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_model.schema.dart';

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
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      joinedAt: DateTime.parse(json['joined_at'] as String),
      active: json['active'] as bool,
      managedBy: json['managedBy'] == null
          ? null
          : UserLiteModel.fromJson(json['managedBy'] as Map<String, dynamic>),
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
      'role': _$UserRoleEnumMap[instance.role]!,
      'joined_at': instance.joinedAt.toIso8601String(),
      'active': instance.active,
      'managedBy': instance.managedBy?.toJson(),
    };

const _$UserRoleEnumMap = {
  UserRole.user: 'user',
  UserRole.admin: 'admin',
  UserRole.superAdmin: 'superAdmin',
};

_$UserLiteModelImpl _$$UserLiteModelImplFromJson(Map<String, dynamic> json) =>
    _$UserLiteModelImpl(
      id: json['id'] as String,
      photo: json['photo'] as String?,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$$UserLiteModelImplToJson(_$UserLiteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
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
    ColumnBuilder('role'),
    ColumnBuilder('joined_at'),
    ColumnBuilder('active'),
    ColumnBuilder.join(UserLiteModel.table,
        key: "managedBy", candidateKey: null, foreignKey: 'managed_by_id'),
  ],
);

const _tableUserLiteModel = TableBuilder(
  tableName: "users",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('photo'),
    ColumnBuilder('first_name'),
    ColumnBuilder('last_name'),
  ],
);
