// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v_point_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VPointTransactionModelImpl _$$VPointTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VPointTransactionModelImpl(
      id: (json['id'] as num).toInt(),
      transactionId: json['transactionId'] as String,
      type: json['type'] as String,
      userId: json['userId'] as String,
      vpoints: (json['vpoints'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$VPointTransactionModelImplToJson(
        _$VPointTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionId': instance.transactionId,
      'type': instance.type,
      'userId': instance.userId,
      'vpoints': instance.vpoints,
      'createdAt': instance.createdAt.toIso8601String(),
    };
