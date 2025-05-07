// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankModel _$BankModelFromJson(Map<String, dynamic> json) => _BankModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      bankBranch: json['bank_branch'] as String?,
    );

Map<String, dynamic> _$BankModelToJson(_BankModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bank_branch': instance.bankBranch,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableBankModel = TableBuilder(
  tableName: "banks",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('name'),
    ColumnBuilder('bank_branch'),
  ],
);
