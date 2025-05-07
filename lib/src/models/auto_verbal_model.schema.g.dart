// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'auto_verbal_model.schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AutoVerbalModel _$AutoVerbalModelFromJson(Map<String, dynamic> json) =>
    _AutoVerbalModel(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$PropertyAndAutoVerbalStatusEnumMap, json['status']),
      autoVerbalId: json['auto_verbal_id'] as String,
      image: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      bankBranch: json['bankbranch'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ownerName: json['owner_name'] as String,
      ownerPhone: json['owner_phone'] as String,
      bankOfficerName: json['bank_officer_name'] as String?,
      bankOfficerPhone: json['bank_officer_phone'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      approvedAt: json['approved_at'] == null
          ? null
          : DateTime.parse(json['approved_at'] as String),
      rejectAt: json['reject_at'] == null
          ? null
          : DateTime.parse(json['reject_at'] as String),
      rejectReason: json['reject_reason'] as String?,
      minValue: (json['min_value'] as num).toDouble(),
      maxValue: (json['max_value'] as num).toDouble(),
      minValueSqm: (json['min_value_sqm'] as num).toDouble(),
      maxValueSqm: (json['max_value_sqm'] as num).toDouble(),
      area: (json['area'] as num).toDouble(),
      buildinglength: (json['buildinglength'] as num?)?.toDouble(),
      buildingwidth: (json['buildingwidth'] as num?)?.toDouble(),
      landlength: (json['landlength'] as num).toDouble(),
      landwidth: (json['landwidth'] as num).toDouble(),
      bed: (json['bed'] as num?)?.toInt(),
      bath: (json['bath'] as num?)?.toInt(),
      livingroom: (json['livingroom'] as num?)?.toInt(),
      floor: (json['floor'] as num?)?.toInt(),
      propertyType: PropertyTypeModel.fromJson(
          json['propertyType'] as Map<String, dynamic>),
      bank: json['bank'] == null
          ? null
          : BankModel.fromJson(json['bank'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      approvedBy: json['approvedBy'] == null
          ? null
          : UserModel.fromJson(json['approvedBy'] as Map<String, dynamic>),
      province:
          ProvinceModel.fromJson(json['province'] as Map<String, dynamic>),
      road: json['road'] == null
          ? null
          : RoadModel.fromJson(json['road'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AutoVerbalModelToJson(_AutoVerbalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$PropertyAndAutoVerbalStatusEnumMap[instance.status]!,
      'auto_verbal_id': instance.autoVerbalId,
      'images': instance.image,
      'bankbranch': instance.bankBranch,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'owner_name': instance.ownerName,
      'owner_phone': instance.ownerPhone,
      'bank_officer_name': instance.bankOfficerName,
      'bank_officer_phone': instance.bankOfficerPhone,
      'created_at': instance.createdAt.toIso8601String(),
      'approved_at': instance.approvedAt?.toIso8601String(),
      'reject_at': instance.rejectAt?.toIso8601String(),
      'reject_reason': instance.rejectReason,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'min_value_sqm': instance.minValueSqm,
      'max_value_sqm': instance.maxValueSqm,
      'area': instance.area,
      'buildinglength': instance.buildinglength,
      'buildingwidth': instance.buildingwidth,
      'landlength': instance.landlength,
      'landwidth': instance.landwidth,
      'bed': instance.bed,
      'bath': instance.bath,
      'livingroom': instance.livingroom,
      'floor': instance.floor,
      'propertyType': instance.propertyType.toJson(),
      'bank': instance.bank?.toJson(),
      'user': instance.user?.toJson(),
      'approvedBy': instance.approvedBy?.toJson(),
      'province': instance.province.toJson(),
      'road': instance.road?.toJson(),
    };

const _$PropertyAndAutoVerbalStatusEnumMap = {
  PropertyAndAutoVerbalStatus.pending: 'pending',
  PropertyAndAutoVerbalStatus.resubmit: 'resubmit',
  PropertyAndAutoVerbalStatus.rejected: 'rejected',
  PropertyAndAutoVerbalStatus.approved: 'approved',
};

_CreateAutoVerbalParam _$CreateAutoVerbalParamFromJson(
        Map<String, dynamic> json) =>
    _CreateAutoVerbalParam(
      image: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      bankBranch: json['bankbranch'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ownerName: json['owner_name'] as String,
      ownerPhone: json['owner_phone'] as String,
      bankOfficerName: json['bank_officer_name'] as String?,
      bankOfficerPhone: json['bank_officer_phone'] as String?,
      minValue: (json['min_value'] as num).toDouble(),
      maxValue: (json['max_value'] as num).toDouble(),
      minValueSqm: (json['min_value_sqm'] as num).toDouble(),
      maxValueSqm: (json['max_value_sqm'] as num).toDouble(),
      area: (json['area'] as num).toDouble(),
      buildinglength: (json['buildinglength'] as num?)?.toDouble(),
      buildingwidth: (json['buildingwidth'] as num?)?.toDouble(),
      landlength: (json['landlength'] as num).toDouble(),
      landwidth: (json['landwidth'] as num).toDouble(),
      bed: (json['bed'] as num?)?.toInt(),
      bath: (json['bath'] as num?)?.toInt(),
      livingroom: (json['livingroom'] as num?)?.toInt(),
      floor: (json['floor'] as num?)?.toInt(),
      propertyTypeId: (json['property_type_id'] as num).toInt(),
      provinceId: (json['province_id'] as num).toInt(),
      roadId: (json['road_id'] as num?)?.toInt(),
      bankId: (json['bank_id'] as num?)?.toInt(),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$CreateAutoVerbalParamToJson(
        _CreateAutoVerbalParam instance) =>
    <String, dynamic>{
      'images': instance.image,
      'bankbranch': instance.bankBranch,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'owner_name': instance.ownerName,
      'owner_phone': instance.ownerPhone,
      'bank_officer_name': instance.bankOfficerName,
      'bank_officer_phone': instance.bankOfficerPhone,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'min_value_sqm': instance.minValueSqm,
      'max_value_sqm': instance.maxValueSqm,
      'area': instance.area,
      'buildinglength': instance.buildinglength,
      'buildingwidth': instance.buildingwidth,
      'landlength': instance.landlength,
      'landwidth': instance.landwidth,
      'bed': instance.bed,
      'bath': instance.bath,
      'livingroom': instance.livingroom,
      'floor': instance.floor,
      'property_type_id': instance.propertyTypeId,
      'province_id': instance.provinceId,
      'road_id': instance.roadId,
      'bank_id': instance.bankId,
      'user_id': instance.userId,
    };

_UpdateAutoVerbalParam _$UpdateAutoVerbalParamFromJson(
        Map<String, dynamic> json) =>
    _UpdateAutoVerbalParam(
      status: $enumDecode(_$PropertyAndAutoVerbalStatusEnumMap, json['status']),
      image: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      bankBranch: json['bankbranch'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ownerName: json['owner_name'] as String,
      ownerPhone: json['owner_phone'] as String,
      bankOfficerName: json['bank_officer_name'] as String?,
      bankOfficerPhone: json['bank_officer_phone'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      minValue: (json['min_value'] as num).toDouble(),
      maxValue: (json['max_value'] as num).toDouble(),
      minValueSqm: (json['min_value_sqm'] as num).toDouble(),
      maxValueSqm: (json['max_value_sqm'] as num).toDouble(),
      area: (json['area'] as num).toDouble(),
      buildinglength: (json['buildinglength'] as num?)?.toDouble(),
      buildingwidth: (json['buildingwidth'] as num?)?.toDouble(),
      landlength: (json['landlength'] as num).toDouble(),
      landwidth: (json['landwidth'] as num).toDouble(),
      bed: (json['bed'] as num?)?.toInt(),
      bath: (json['bath'] as num?)?.toInt(),
      livingroom: (json['livingroom'] as num?)?.toInt(),
      floor: (json['floor'] as num?)?.toInt(),
      propertyTypeId: (json['property_type_id'] as num).toInt(),
      provinceId: (json['province_id'] as num).toInt(),
      roadId: (json['road_id'] as num?)?.toInt(),
      bankId: (json['bank_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateAutoVerbalParamToJson(
        _UpdateAutoVerbalParam instance) =>
    <String, dynamic>{
      'status': _$PropertyAndAutoVerbalStatusEnumMap[instance.status]!,
      'images': instance.image,
      'bankbranch': instance.bankBranch,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'owner_name': instance.ownerName,
      'owner_phone': instance.ownerPhone,
      'bank_officer_name': instance.bankOfficerName,
      'bank_officer_phone': instance.bankOfficerPhone,
      'created_at': instance.createdAt.toIso8601String(),
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
      'min_value_sqm': instance.minValueSqm,
      'max_value_sqm': instance.maxValueSqm,
      'area': instance.area,
      'buildinglength': instance.buildinglength,
      'buildingwidth': instance.buildingwidth,
      'landlength': instance.landlength,
      'landwidth': instance.landwidth,
      'bed': instance.bed,
      'bath': instance.bath,
      'livingroom': instance.livingroom,
      'floor': instance.floor,
      'property_type_id': instance.propertyTypeId,
      'province_id': instance.provinceId,
      'road_id': instance.roadId,
      'bank_id': instance.bankId,
    };

// **************************************************************************
// TableModelGenerator
// **************************************************************************

const _tableAutoVerbalModel = TableBuilder(
  tableName: "auto_verbals",
  columns: [
    ColumnBuilder('id'),
    ColumnBuilder('status'),
    ColumnBuilder('auto_verbal_id'),
    ColumnBuilder('images'),
    ColumnBuilder('bankbranch'),
    ColumnBuilder('latitude'),
    ColumnBuilder('longitude'),
    ColumnBuilder('owner_name'),
    ColumnBuilder('owner_phone'),
    ColumnBuilder('bank_officer_name'),
    ColumnBuilder('bank_officer_phone'),
    ColumnBuilder('created_at'),
    ColumnBuilder('approved_at'),
    ColumnBuilder('reject_at'),
    ColumnBuilder('reject_reason'),
    ColumnBuilder('min_value'),
    ColumnBuilder('max_value'),
    ColumnBuilder('min_value_sqm'),
    ColumnBuilder('max_value_sqm'),
    ColumnBuilder('area'),
    ColumnBuilder('buildinglength'),
    ColumnBuilder('buildingwidth'),
    ColumnBuilder('landlength'),
    ColumnBuilder('landwidth'),
    ColumnBuilder('bed'),
    ColumnBuilder('bath'),
    ColumnBuilder('livingroom'),
    ColumnBuilder('floor'),
    ColumnBuilder.join(PropertyTypeModel.table,
        key: "propertyType",
        candidateKey: null,
        foreignKey: 'property_type_id'),
    ColumnBuilder.join(BankModel.table,
        key: "bank", candidateKey: null, foreignKey: 'bank_id'),
    ColumnBuilder.join(UserModel.table,
        key: "user",
        candidateKey: 'auto_verbals_user_id_fkey',
        foreignKey: null),
    ColumnBuilder.join(UserModel.table,
        key: "approvedBy", candidateKey: null, foreignKey: 'approved_by'),
    ColumnBuilder.join(ProvinceModel.table,
        key: "province", candidateKey: null, foreignKey: 'province_id'),
    ColumnBuilder.join(RoadModel.table,
        key: "road", candidateKey: null, foreignKey: 'road_id'),
  ],
);
