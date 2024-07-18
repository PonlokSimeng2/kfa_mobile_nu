// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoVerbalModelImpl _$$AutoVerbalModelImplFromJson(Map<String, dynamic> json) =>
    _$AutoVerbalModelImpl(
      id: (json['id'] as num).toInt(),
      autoVerbalId: json['auto_verbal_id'] as String,
      image: json['image'] as String,
      propertyTypeId: (json['property_type_id'] as num).toInt(),
      bankid: (json['bank_id'] as num?)?.toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ownerName: json['owner_name'] as String,
      ownerPhone: json['owner_phone'] as String,
      bankOfficerName: json['bank_officer_name'] as String?,
      bankOfficerPhone: json['bank_officer_phone'] as String?,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      approvedAt: DateTime.parse(json['approved_at'] as String),
      rejectedAt: json['reject_at'] == null ? null : DateTime.parse(json['reject_at'] as String),
      status: json['status'] as String?,
      rejectReason: json['reject_reason'] as String?,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      approvedBy: UserModel.fromJson(json['approvedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AutoVerbalModelImplToJson(_$AutoVerbalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auto_verbal_id': instance.autoVerbalId,
      'image': instance.image,
      'property_type_id': instance.propertyTypeId,
      'bank_id': instance.bankid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'owner_name': instance.ownerName,
      'owner_phone': instance.ownerPhone,
      'bank_officer_name': instance.bankOfficerName,
      'bank_officer_phone': instance.bankOfficerPhone,
      'address': instance.address,
      'created_at': instance.createdAt.toIso8601String(),
      'approved_at': instance.approvedAt.toIso8601String(),
      'reject_at': instance.rejectedAt?.toIso8601String(),
      'status': instance.status,
      'reject_reason': instance.rejectReason,
      'user': instance.user.toJson(),
      'approvedBy': instance.approvedBy.toJson(),
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableAutoVerbalModel = TableBuilder(
  tableName: "auto_verbals",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('auto_verbal_id'),
    ColumnBuilder('image'),
    ColumnBuilder('property_type_id'),
    ColumnBuilder('bank_id'),
    ColumnBuilder('latitude'),
    ColumnBuilder('longitude'),
    ColumnBuilder('owner_name'),
    ColumnBuilder('owner_phone'),
    ColumnBuilder('bank_officer_name'),
    ColumnBuilder('bank_officer_phone'),
    ColumnBuilder('address'),
    ColumnBuilder('created_at'),
    ColumnBuilder('approved_at'),
    ColumnBuilder('reject_at'),
    ColumnBuilder('status'),
    ColumnBuilder('reject_reason'),
    ColumnBuilder.join(UserModel.table, key: "user", candidateKey: null, foreignKey: 'user_id'),
    ColumnBuilder.join(UserModel.table,
        key: "approvedBy", candidateKey: null, foreignKey: 'approved_by'),
  ],
);
