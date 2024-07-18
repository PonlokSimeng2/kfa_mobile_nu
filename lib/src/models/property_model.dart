// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/property_model.table.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

enum PropertyListingType { sale, rent }

enum PropertyStatus { pending, approved, rejected }

@TableStructure(
  'properties',
  classPrefixName: 'Property',
  columns: [
    'id',
    'property_id',
    'listing_type',
    'images',
    'title',
    'description',
    'latitude',
    'longitude',
    'price',
    'sqm',
    'bedrooms',
    'bathrooms',
    'floors',
    'parking',
    'living_rooms',
    'land_length',
    'land_width',
    'house_length',
    'house_width',
    'price_per_sqm',
    'created_at',
    'user_id',
    'property_type_id',
    'province_id',
    'approved_at',
    'approved_by',
    'rejected_at',
    'reject_reason',
    'status',
  ],
)
@freezed
class PropertyModel with _$PropertyModel {
  const PropertyModel._();

  @TableModel(PropertyTable.table)
  factory PropertyModel({
    @JsonKey(name: PropertyTable.id) required int id,
    @JsonKey(name: PropertyTable.status) required PropertyStatus status,
    @JsonKey(name: PropertyTable.propertyId) required String propertyId,
    @JsonKey(name: PropertyTable.listingType) required PropertyListingType listingType,
    @JsonKey(name: PropertyTable.images) required List<String> images,
    @JsonKey(name: PropertyTable.title) required String title,
    @JsonKey(name: PropertyTable.description) required String description,
    @JsonKey(name: PropertyTable.latitude) required double latitude,
    @JsonKey(name: PropertyTable.longitude) required double longitude,
    @JsonKey(name: PropertyTable.price) required double price,
    @JsonKey(name: PropertyTable.sqm) required double sqm,
    @JsonKey(name: PropertyTable.bedrooms) required int? bedrooms,
    @JsonKey(name: PropertyTable.bathrooms) required int? bathrooms,
    @JsonKey(name: PropertyTable.floors) required int? floors,
    @JsonKey(name: PropertyTable.parking) required int? parking,
    @JsonKey(name: PropertyTable.livingRooms) required int? livingRooms,
    @JsonKey(name: PropertyTable.landLength) required double landLength,
    @JsonKey(name: PropertyTable.landWidth) required double landWidth,
    @JsonKey(name: PropertyTable.houseLength) required double? houseLength,
    @JsonKey(name: PropertyTable.pricePerSqm) required double pricePerSqm,
    @JsonKey(name: PropertyTable.houseWidth) required double? houseWidth,
    @JsonKey(name: PropertyTable.createdAt) required DateTime createdAt,
    @JoinedColumn(foreignKey: PropertyTable.userId) required UserModel user,
    @JoinedColumn(foreignKey: PropertyTable.propertyTypeId) required PropertyTypeModel propertyType,
    @JoinedColumn(foreignKey: PropertyTable.provinceId) required ProvinceModel province,
    @JsonKey(name: PropertyTable.approvedAt) DateTime? approvedAt,
    @JoinedColumn(foreignKey: PropertyTable.approvedBy) UserModel? approvedBy,
    @JsonKey(name: PropertyTable.rejectedAt) DateTime? rejectedAt,
    @JsonKey(name: PropertyTable.rejectReason) String? rejectReason,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) => _$PropertyModelFromJson(json);

  static const TableBuilder table = _tablePropertyModel;
}
