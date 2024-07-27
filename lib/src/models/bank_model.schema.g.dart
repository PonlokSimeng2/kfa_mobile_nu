// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'bank_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankModelImpl _$$BankModelImplFromJson(Map<String, dynamic> json) =>
    _$BankModelImpl(
      id: BankId.fromJson(json['id']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BankModelImplToJson(_$BankModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
    };

_$BankDetailModelImpl _$$BankDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankDetailModelImpl(
      id: BankId.fromJson(json['id']),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      adress: json['adress'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$BankDetailModelImplToJson(
        _$BankDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'adress': instance.adress,
      'phone': instance.phone,
      'email': instance.email,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBankModel = TableBuilder(
  tableName: "banks",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
  ],
);

const _tableBankDetailModel = TableBuilder(
  tableName: "banks",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
    ColumnBuilder('created_at'),
    ColumnBuilder('updated_at'),
    ColumnBuilder('adress'),
    ColumnBuilder('phone'),
    ColumnBuilder('email'),
  ],
);
