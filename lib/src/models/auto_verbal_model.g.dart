// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoVerbalModelImpl _$$AutoVerbalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoVerbalModelImpl(
      id: (json['id'] as num).toInt(),
      autoVerbalId: json['auto_verbal_id'] as String,
      image: json['image'] as String,
      propertyType: PropertyTypeModel.fromJson(
          json['propertyType'] as Map<String, dynamic>),
      bank: json['bank'] == null
          ? null
          : BankModel.fromJson(json['bank'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      ownerName: json['owner_name'] as String,
      ownerPhone: json['owner_phone'] as String,
      bankOfficerName: json['bank_officer_name'] as String?,
      bankOfficerPhone: json['bank_officer_phone'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      approvedAt: json['approved_at'] == null
          ? null
          : DateTime.parse(json['approved_at'] as String),
      approvedBy: json['approvedBy'] == null
          ? null
          : UserModel.fromJson(json['approvedBy'] as Map<String, dynamic>),
      rejectAt: json['reject_at'] == null
          ? null
          : DateTime.parse(json['reject_at'] as String),
      status: json['status'] as String?,
      rejectReason: json['reject_reason'] as String?,
      province:
          ProvinceModel.fromJson(json['province'] as Map<String, dynamic>),
      minValue: (json['min_value'] as num).toDouble(),
      maxValue: (json['max_value'] as num).toDouble(),
      minValueSqm: (json['min_value_sqm'] as num).toDouble(),
      maxValueSqm: (json['max_value_sqm'] as num).toDouble(),
      area: (json['area'] as num).toDouble(),
      head: (json['head'] as num).toDouble(),
      length: (json['length'] as num).toDouble(),
    );

Map<String, dynamic> _$$AutoVerbalModelImplToJson(
        _$AutoVerbalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auto_verbal_id': instance.autoVerbalId,
      'image': instance.image,
      'propertyType': instance.propertyType.toJson(),
      'bank': instance.bank?.toJson(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'user': instance.user?.toJson(),
      'owner_name': instance.ownerName,
      'owner_phone': instance.ownerPhone,
      'bank_officer_name': instance.bankOfficerName,
      'bank_officer_phone': instance.bankOfficerPhone,
      'created_at': instance.createdAt.toIso8601String(),
      'approved_at': instance.approvedAt?.toIso8601String(),
      'approvedBy': instance.approvedBy?.toJson(),
      'reject_at': instance.rejectAt?.toIso8601String(),
      'status': instance.status,
      'reject_reason': instance.rejectReason,
      'province': instance.province.toJson(),
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'min_value_sqm': instance.minValueSqm,
      'max_value_sqm': instance.maxValueSqm,
      'area': instance.area,
      'head': instance.head,
      'length': instance.length,
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
    ColumnBuilder.join(PropertyTypeModel.table,
        key: "propertyType",
        candidateKey: null,
        foreignKey: 'property_type_id'),
    ColumnBuilder.join(BankModel.table,
        key: "bank", candidateKey: null, foreignKey: 'bank_id'),
    ColumnBuilder('latitude'),
    ColumnBuilder('longitude'),
    ColumnBuilder.join(UserModel.table,
        key: "user",
        candidateKey: 'auto_verbals_user_id_fkey',
        foreignKey: null),
    ColumnBuilder('owner_name'),
    ColumnBuilder('owner_phone'),
    ColumnBuilder('bank_officer_name'),
    ColumnBuilder('bank_officer_phone'),
    ColumnBuilder('created_at'),
    ColumnBuilder('approved_at'),
    ColumnBuilder.join(UserModel.table,
        key: "approvedBy", candidateKey: null, foreignKey: 'approved_by'),
    ColumnBuilder('reject_at'),
    ColumnBuilder('status'),
    ColumnBuilder('reject_reason'),
    ColumnBuilder.join(ProvinceModel.table,
        key: "province", candidateKey: null, foreignKey: 'province_id'),
    ColumnBuilder('min_value'),
    ColumnBuilder('max_value'),
    ColumnBuilder('min_value_sqm'),
    ColumnBuilder('max_value_sqm'),
    ColumnBuilder('area'),
    ColumnBuilder('head'),
    ColumnBuilder('length'),
  ],
);
