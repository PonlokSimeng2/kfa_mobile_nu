// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'v_point_transaction_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VPointTransactionModel _$VPointTransactionModelFromJson(
        Map<String, dynamic> json) =>
    _VPointTransactionModel(
      id: (json['id'] as num).toInt(),
      transactionId: json['transaction_id'] as String,
      type: json['type'] as String,
      userId: json['user_id'] as String,
      vpoints: (json['vpoints'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$VPointTransactionModelToJson(
        _VPointTransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'type': instance.type,
      'user_id': instance.userId,
      'vpoints': instance.vpoints,
      'created_at': instance.createdAt.toIso8601String(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableVPointTransactionModel = TableBuilder(
  tableName: "v_point_transactions",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('transaction_id'),
    ColumnBuilder('type'),
    ColumnBuilder('user_id'),
    ColumnBuilder('vpoints'),
    ColumnBuilder('created_at'),
  ],
);
