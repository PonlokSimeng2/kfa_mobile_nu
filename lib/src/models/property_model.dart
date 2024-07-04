// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/models/province_model.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

enum PropertyListingType { sale, rent }

@freezed
class PropertyModel with _$PropertyModel {
  const PropertyModel._();

  @TableModel('properties')
  factory PropertyModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'property_id') required String propertyId,
    @JsonKey(name: 'listing_type') required PropertyListingType listingType,
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'sqm') required double sqm,
    @JsonKey(name: 'bedrooms') required int? bedrooms,
    @JsonKey(name: 'bathrooms') required int? bathrooms,
    @JsonKey(name: 'floors') required int? floors,
    @JsonKey(name: 'parking') required int? parking,
    @JsonKey(name: 'living_rooms') required int? livingRooms,
    @JsonKey(name: 'land_length') required double landLength,
    @JsonKey(name: 'land_width') required double landWidth,
    @JsonKey(name: 'house_length') required double? houseLength,
    @JsonKey(name: 'house_width') required double? houseWidth,
    @JsonKey(name: 'price_per_sqm') required double pricePerSqm,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JoinedColumn(foreignKey: 'user_id') required UserModel user,
    @JoinedColumn(foreignKey: 'property_type_id')
    required PropertyTypeModel propertyType,
    @JoinedColumn(foreignKey: 'province_id') required ProvinceModel province,
  }) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  static const TableBuilder table = _tablePropertyModel;
}
