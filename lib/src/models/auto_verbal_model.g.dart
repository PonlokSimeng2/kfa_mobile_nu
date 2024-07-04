// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoVerbalModelImpl _$$AutoVerbalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoVerbalModelImpl(
      id: (json['id'] as num).toInt(),
      autoVerbalId: json['autoVerbalId'] as String,
      image: json['image'] as String,
      propertyTypeId: (json['propertyTypeId'] as num).toInt(),
      bankid: (json['bankid'] as num?)?.toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      userId: json['userId'] as String,
      ownerName: json['ownerName'] as String,
      ownerPhone: json['ownerPhone'] as String,
      bankOfficerName: json['bankOfficerName'] as String?,
      bankOfficerPhone: json['bankOfficerPhone'] as String?,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$AutoVerbalModelImplToJson(
        _$AutoVerbalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'autoVerbalId': instance.autoVerbalId,
      'image': instance.image,
      'propertyTypeId': instance.propertyTypeId,
      'bankid': instance.bankid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'userId': instance.userId,
      'ownerName': instance.ownerName,
      'ownerPhone': instance.ownerPhone,
      'bankOfficerName': instance.bankOfficerName,
      'bankOfficerPhone': instance.bankOfficerPhone,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
    };
