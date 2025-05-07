// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// KimappSchemaGenerator
// **************************************************************************

// ignore_for_file: invalid_annotation_target, unused_import, require_trailing_commas
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kimapp/kimapp.dart';

import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'property_model.dart';

part 'property_model.schema.freezed.dart';
part 'property_model.schema.g.dart';

/// Defines the table structure for Property.
/// This class provides constant string values for table and column names,
/// facilitating type-safe database operations and query building.
class PropertyTable {
  const PropertyTable._();

  /// The name of the database table for Property entities.
  /// Use this constant for constructing SQL queries to ensure consistency.
  static const String table = "properties";

  /// Column: id
  /// Data type: `int`
  /// Key: `id`
  static const String id = "id";

  /// Column: status
  /// Data type: `PropertyAndAutoVerbalStatus`
  /// Key: `status`
  static const String status = "status";

  /// Column: property_id
  /// Data type: `String`
  /// Key: `property_id`
  static const String propertyId = "property_id";

  /// Column: listing_type
  /// Data type: `PropertyListingType`
  /// Key: `listing_type`
  static const String listingType = "listing_type";

  /// Column: images
  /// Data type: `List<String>`
  /// Key: `images`
  static const String images = "images";

  /// Column: title
  /// Data type: `String`
  /// Key: `title`
  static const String title = "title";

  /// Column: description
  /// Data type: `String`
  /// Key: `description`
  static const String description = "description";

  /// Column: latitude
  /// Data type: `double`
  /// Key: `latitude`
  static const String latitude = "latitude";

  /// Column: longitude
  /// Data type: `double`
  /// Key: `longitude`
  static const String longitude = "longitude";

  /// Column: price
  /// Data type: `double`
  /// Key: `price`
  static const String price = "price";

  /// Column: sqm
  /// Data type: `double`
  /// Key: `sqm`
  static const String sqm = "sqm";

  /// Column: bedrooms
  /// Data type: `int?`
  /// Key: `bedrooms`
  static const String bedrooms = "bedrooms";

  /// Column: bathrooms
  /// Data type: `int?`
  /// Key: `bathrooms`
  static const String bathrooms = "bathrooms";

  /// Column: floors
  /// Data type: `int?`
  /// Key: `floors`
  static const String floors = "floors";

  /// Column: parking
  /// Data type: `int?`
  /// Key: `parking`
  static const String parking = "parking";

  /// Column: living_rooms
  /// Data type: `int?`
  /// Key: `living_rooms`
  static const String livingRooms = "living_rooms";

  /// Column: land_length
  /// Data type: `double`
  /// Key: `land_length`
  static const String landLength = "land_length";

  /// Column: land_width
  /// Data type: `double`
  /// Key: `land_width`
  static const String landWidth = "land_width";

  /// Column: house_length
  /// Data type: `double?`
  /// Key: `house_length`
  static const String houseLength = "house_length";

  /// Column: house_width
  /// Data type: `double?`
  /// Key: `house_width`
  static const String houseWidth = "house_width";

  /// Column: price_per_sqm
  /// Data type: `double`
  /// Key: `price_per_sqm`
  static const String pricePerSqm = "price_per_sqm";

  /// Column: created_at
  /// Data type: `DateTime`
  /// Key: `created_at`
  static const String createdAt = "created_at";

  /// Column: user_id
  /// Data type: `String`
  /// Key: `user_id`
  static const String userId = "user_id";

  /// Column: property_type_id
  /// Data type: `int`
  /// Key: `property_type_id`
  static const String propertyTypeId = "property_type_id";

  /// Column: province_id
  /// Data type: `int`
  /// Key: `province_id`
  static const String provinceId = "province_id";

  /// Column: approved_at
  /// Data type: `DateTime?`
  /// Key: `approved_at`
  static const String approvedAt = "approved_at";

  /// Column: rejected_at
  /// Data type: `DateTime?`
  /// Key: `rejected_at`
  static const String rejectedAt = "rejected_at";

  /// Column: reject_reason
  /// Data type: `String?`
  /// Key: `reject_reason`
  static const String rejectReason = "reject_reason";

  /// Column: view_count
  /// Data type: `int`
  /// Key: `view_count`
  static const String viewCount = "view_count";

  /// Column: like_count
  /// Data type: `int`
  /// Key: `like_count`
  static const String likeCount = "like_count";

  /// Column: auto_verbal_added
  /// Data type: `bool`
  /// Key: `auto_verbal_added`
  static const String autoVerbalAdded = "auto_verbal_added";

  /// Column: hidden_from_home_page
  /// Data type: `bool`
  /// Key: `hidden_from_home_page`
  static const String hiddenFromHomePage = "hidden_from_home_page";

  /// Column: property_type_id
  /// This is a join key for field propertyType.
  /// Data type: `PropertyTypeModel`
  /// Key: `propertyType`
  static const String propertyType = "propertyType";

  /// Column: province_id
  /// This is a join key for field province.
  /// Data type: `ProvinceModel`
  /// Key: `province`
  static const String province = "province";

  /// Column: approvedBy
  /// This is a join key for field approvedBy.
  /// Data type: `UserModel?`
  /// Key: `approvedBy`
  static const String approvedBy = "approvedBy";

  /// Column: user_id
  /// This is a join key for field user.
  /// Data type: `UserModel`
  /// Key: `user`
  static const String user = "user";
}

/// Base class of this schema, this is the parent of all generated models in this schema
abstract class BasePropertySchema {}

/// Base model class for this schema, this includes all properties of the base model, and get inherited by all generated models in this schema where [inheritAllFromBase()] is called and without any excepted fields.
abstract class IPropertyModel {
  int get id;
  PropertyAndAutoVerbalStatus get status;
  String get propertyId;
  PropertyListingType get listingType;
  List<String> get images;
  String get title;
  String get description;
  double get latitude;
  double get longitude;
  double get price;
  double get sqm;
  int? get bedrooms;
  int? get bathrooms;
  int? get floors;
  int? get parking;
  int? get livingRooms;
  double get landLength;
  double get landWidth;
  double? get houseLength;
  double? get houseWidth;
  double get pricePerSqm;
  DateTime get createdAt;
  String get userId;
  int get propertyTypeId;
  int get provinceId;
  DateTime? get approvedAt;
  DateTime? get rejectedAt;
  String? get rejectReason;
  int get viewCount;
  int get likeCount;
  bool get autoVerbalAdded;
  bool get hiddenFromHomePage;
  PropertyTypeModel get propertyType;
  ProvinceModel get province;
  UserModel? get approvedBy;
  UserModel get user;
}

/// Base model class for PropertyModel.
@freezed
sealed class PropertyModel
    with _$PropertyModel
    implements BasePropertySchema, IPropertyModel {
  const PropertyModel._();

  /// Constructor for PropertyModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled` (`properties`)
  ///
  /// Fields:
  /// - int id : JsonKey('id')
  /// - PropertyAndAutoVerbalStatus status : JsonKey('status')
  /// - String propertyId : JsonKey('property_id')
  /// - PropertyListingType listingType : JsonKey('listing_type')
  /// - List<String> images : JsonKey('images')
  /// - String title : JsonKey('title')
  /// - String description : JsonKey('description')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - double price : JsonKey('price')
  /// - double sqm : JsonKey('sqm')
  /// - int? bedrooms : JsonKey('bedrooms')
  /// - int? bathrooms : JsonKey('bathrooms')
  /// - int? floors : JsonKey('floors')
  /// - int? parking : JsonKey('parking')
  /// - int? livingRooms : JsonKey('living_rooms')
  /// - double landLength : JsonKey('land_length')
  /// - double landWidth : JsonKey('land_width')
  /// - double? houseLength : JsonKey('house_length')
  /// - double? houseWidth : JsonKey('house_width')
  /// - double pricePerSqm : JsonKey('price_per_sqm')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - String userId : JsonKey('user_id')
  /// - int propertyTypeId : JsonKey('property_type_id')
  /// - int provinceId : JsonKey('province_id')
  /// - DateTime? approvedAt : JsonKey('approved_at')
  /// - DateTime? rejectedAt : JsonKey('rejected_at')
  /// - String? rejectReason : JsonKey('reject_reason')
  /// - int viewCount : JsonKey('view_count')
  /// - int likeCount : JsonKey('like_count')
  /// - bool autoVerbalAdded : JsonKey('auto_verbal_added')
  /// - bool hiddenFromHomePage : JsonKey('hidden_from_home_page')
  /// - PropertyTypeModel propertyType : JsonKey('propertyType')
  /// - ProvinceModel province : JsonKey('province')
  /// - UserModel? approvedBy : JsonKey('approvedBy')
  /// - UserModel user : JsonKey('user')
  @TableModel(PropertyModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory PropertyModel({
    @JsonKey(name: PropertyModel.idKey) required int id,
    @JsonKey(name: PropertyModel.statusKey)
    required PropertyAndAutoVerbalStatus status,
    @JsonKey(name: PropertyModel.propertyIdKey) required String propertyId,
    @JsonKey(name: PropertyModel.listingTypeKey)
    required PropertyListingType listingType,
    @JsonKey(name: PropertyModel.imagesKey) required List<String> images,
    @JsonKey(name: PropertyModel.titleKey) required String title,
    @JsonKey(name: PropertyModel.descriptionKey) required String description,
    @JsonKey(name: PropertyModel.latitudeKey) required double latitude,
    @JsonKey(name: PropertyModel.longitudeKey) required double longitude,
    @JsonKey(name: PropertyModel.priceKey) required double price,
    @JsonKey(name: PropertyModel.sqmKey) required double sqm,
    @JsonKey(name: PropertyModel.bedroomsKey) required int? bedrooms,
    @JsonKey(name: PropertyModel.bathroomsKey) required int? bathrooms,
    @JsonKey(name: PropertyModel.floorsKey) required int? floors,
    @JsonKey(name: PropertyModel.parkingKey) required int? parking,
    @JsonKey(name: PropertyModel.livingRoomsKey) required int? livingRooms,
    @JsonKey(name: PropertyModel.landLengthKey) required double landLength,
    @JsonKey(name: PropertyModel.landWidthKey) required double landWidth,
    @JsonKey(name: PropertyModel.houseLengthKey) required double? houseLength,
    @JsonKey(name: PropertyModel.houseWidthKey) required double? houseWidth,
    @JsonKey(name: PropertyModel.pricePerSqmKey) required double pricePerSqm,
    @JsonKey(name: PropertyModel.createdAtKey) required DateTime createdAt,
    @JsonKey(name: PropertyModel.userIdKey) required String userId,
    @JsonKey(name: PropertyModel.propertyTypeIdKey) required int propertyTypeId,
    @JsonKey(name: PropertyModel.provinceIdKey) required int provinceId,
    @JsonKey(name: PropertyModel.approvedAtKey) required DateTime? approvedAt,
    @JsonKey(name: PropertyModel.rejectedAtKey) required DateTime? rejectedAt,
    @JsonKey(name: PropertyModel.rejectReasonKey) required String? rejectReason,
    @JsonKey(name: PropertyModel.viewCountKey) required int viewCount,
    @JsonKey(name: PropertyModel.likeCountKey) required int likeCount,
    @JsonKey(name: PropertyModel.autoVerbalAddedKey)
    required bool autoVerbalAdded,
    @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
    required bool hiddenFromHomePage,
    @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
    @JsonKey(name: PropertyModel.propertyTypeKey)
    required PropertyTypeModel propertyType,
    @JoinedColumn(foreignKey: "province_id", candidateKey: null)
    @JsonKey(name: PropertyModel.provinceKey)
    required ProvinceModel province,
    @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
    @JsonKey(name: PropertyModel.approvedByKey)
    required UserModel? approvedBy,
    @JoinedColumn(foreignKey: "user_id", candidateKey: null)
    @JsonKey(name: PropertyModel.userKey)
    required UserModel user,
  }) = _PropertyModel;

  /// Creates an instance of PropertyModel from a JSON map.
  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tablePropertyModel;

  /// Table name: `properties`
  static const String tableName = "properties";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for propertyId field with JsonKey('property_id')
  static const String propertyIdKey = "property_id";

  /// Field name for listingType field with JsonKey('listing_type')
  static const String listingTypeKey = "listing_type";

  /// Field name for images field with JsonKey('images')
  static const String imagesKey = "images";

  /// Field name for title field with JsonKey('title')
  static const String titleKey = "title";

  /// Field name for description field with JsonKey('description')
  static const String descriptionKey = "description";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for price field with JsonKey('price')
  static const String priceKey = "price";

  /// Field name for sqm field with JsonKey('sqm')
  static const String sqmKey = "sqm";

  /// Field name for bedrooms field with JsonKey('bedrooms')
  static const String bedroomsKey = "bedrooms";

  /// Field name for bathrooms field with JsonKey('bathrooms')
  static const String bathroomsKey = "bathrooms";

  /// Field name for floors field with JsonKey('floors')
  static const String floorsKey = "floors";

  /// Field name for parking field with JsonKey('parking')
  static const String parkingKey = "parking";

  /// Field name for livingRooms field with JsonKey('living_rooms')
  static const String livingRoomsKey = "living_rooms";

  /// Field name for landLength field with JsonKey('land_length')
  static const String landLengthKey = "land_length";

  /// Field name for landWidth field with JsonKey('land_width')
  static const String landWidthKey = "land_width";

  /// Field name for houseLength field with JsonKey('house_length')
  static const String houseLengthKey = "house_length";

  /// Field name for houseWidth field with JsonKey('house_width')
  static const String houseWidthKey = "house_width";

  /// Field name for pricePerSqm field with JsonKey('price_per_sqm')
  static const String pricePerSqmKey = "price_per_sqm";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for userId field with JsonKey('user_id')
  static const String userIdKey = "user_id";

  /// Field name for propertyTypeId field with JsonKey('property_type_id')
  static const String propertyTypeIdKey = "property_type_id";

  /// Field name for provinceId field with JsonKey('province_id')
  static const String provinceIdKey = "province_id";

  /// Field name for approvedAt field with JsonKey('approved_at')
  static const String approvedAtKey = "approved_at";

  /// Field name for rejectedAt field with JsonKey('rejected_at')
  static const String rejectedAtKey = "rejected_at";

  /// Field name for rejectReason field with JsonKey('reject_reason')
  static const String rejectReasonKey = "reject_reason";

  /// Field name for viewCount field with JsonKey('view_count')
  static const String viewCountKey = "view_count";

  /// Field name for likeCount field with JsonKey('like_count')
  static const String likeCountKey = "like_count";

  /// Field name for autoVerbalAdded field with JsonKey('auto_verbal_added')
  static const String autoVerbalAddedKey = "auto_verbal_added";

  /// Field name for hiddenFromHomePage field with JsonKey('hidden_from_home_page')
  static const String hiddenFromHomePageKey = "hidden_from_home_page";

  /// Field name for propertyType field with JsonKey('propertyType')
  /// This is json key for joined field. with foreign key: property_type_id and candidate key: null
  static const String propertyTypeKey = "propertyType";

  /// Field name for province field with JsonKey('province')
  /// This is json key for joined field. with foreign key: province_id and candidate key: null
  static const String provinceKey = "province";

  /// Field name for approvedBy field with JsonKey('approvedBy')
  /// This is json key for joined field. with foreign key: null and candidate key: properties_approved_by_fkey
  static const String approvedByKey = "approvedBy";

  /// Field name for user field with JsonKey('user')
  /// This is json key for joined field. with foreign key: user_id and candidate key: null
  static const String userKey = "user";
}

/// Represents the CreatePropertyParam model. generated by kimapp_generator
@freezed
sealed class CreatePropertyParam
    with _$CreatePropertyParam
    implements BasePropertySchema {
  const CreatePropertyParam._();

  /// Constructor for CreatePropertyParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - PropertyListingType listingType : JsonKey('listing_type')
  /// - List<String> images : JsonKey('images')
  /// - String title : JsonKey('title')
  /// - String description : JsonKey('description')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - double price : JsonKey('price')
  /// - double sqm : JsonKey('sqm')
  /// - int? bedrooms : JsonKey('bedrooms')
  /// - int? bathrooms : JsonKey('bathrooms')
  /// - int? floors : JsonKey('floors')
  /// - int? parking : JsonKey('parking')
  /// - int? livingRooms : JsonKey('living_rooms')
  /// - double landLength : JsonKey('land_length')
  /// - double landWidth : JsonKey('land_width')
  /// - double? houseLength : JsonKey('house_length')
  /// - double? houseWidth : JsonKey('house_width')
  /// - double pricePerSqm : JsonKey('price_per_sqm')
  /// - String userId : JsonKey('user_id')
  /// - int propertyTypeId : JsonKey('property_type_id')
  /// - int provinceId : JsonKey('province_id')
  @JsonSerializable(explicitToJson: true)
  const factory CreatePropertyParam({
    @JsonKey(name: CreatePropertyParam.listingTypeKey)
    required PropertyListingType listingType,
    @JsonKey(name: CreatePropertyParam.imagesKey) required List<String> images,
    @JsonKey(name: CreatePropertyParam.titleKey) required String title,
    @JsonKey(name: CreatePropertyParam.descriptionKey)
    required String description,
    @JsonKey(name: CreatePropertyParam.latitudeKey) required double latitude,
    @JsonKey(name: CreatePropertyParam.longitudeKey) required double longitude,
    @JsonKey(name: CreatePropertyParam.priceKey) required double price,
    @JsonKey(name: CreatePropertyParam.sqmKey) required double sqm,
    @JsonKey(name: CreatePropertyParam.bedroomsKey) required int? bedrooms,
    @JsonKey(name: CreatePropertyParam.bathroomsKey) required int? bathrooms,
    @JsonKey(name: CreatePropertyParam.floorsKey) required int? floors,
    @JsonKey(name: CreatePropertyParam.parkingKey) required int? parking,
    @JsonKey(name: CreatePropertyParam.livingRoomsKey)
    required int? livingRooms,
    @JsonKey(name: CreatePropertyParam.landLengthKey)
    required double landLength,
    @JsonKey(name: CreatePropertyParam.landWidthKey) required double landWidth,
    @JsonKey(name: CreatePropertyParam.houseLengthKey)
    required double? houseLength,
    @JsonKey(name: CreatePropertyParam.houseWidthKey)
    required double? houseWidth,
    @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
    required double pricePerSqm,
    @JsonKey(name: CreatePropertyParam.userIdKey) required String userId,
    @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
    required int propertyTypeId,
    @JsonKey(name: CreatePropertyParam.provinceIdKey) required int provinceId,
  }) = _CreatePropertyParam;

  /// Creates an instance of CreatePropertyParam from a JSON map.
  factory CreatePropertyParam.fromJson(Map<String, dynamic> json) =>
      _$CreatePropertyParamFromJson(json);

  /// Field name for listingType field with JsonKey('listing_type')
  static const String listingTypeKey = "listing_type";

  /// Field name for images field with JsonKey('images')
  static const String imagesKey = "images";

  /// Field name for title field with JsonKey('title')
  static const String titleKey = "title";

  /// Field name for description field with JsonKey('description')
  static const String descriptionKey = "description";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for price field with JsonKey('price')
  static const String priceKey = "price";

  /// Field name for sqm field with JsonKey('sqm')
  static const String sqmKey = "sqm";

  /// Field name for bedrooms field with JsonKey('bedrooms')
  static const String bedroomsKey = "bedrooms";

  /// Field name for bathrooms field with JsonKey('bathrooms')
  static const String bathroomsKey = "bathrooms";

  /// Field name for floors field with JsonKey('floors')
  static const String floorsKey = "floors";

  /// Field name for parking field with JsonKey('parking')
  static const String parkingKey = "parking";

  /// Field name for livingRooms field with JsonKey('living_rooms')
  static const String livingRoomsKey = "living_rooms";

  /// Field name for landLength field with JsonKey('land_length')
  static const String landLengthKey = "land_length";

  /// Field name for landWidth field with JsonKey('land_width')
  static const String landWidthKey = "land_width";

  /// Field name for houseLength field with JsonKey('house_length')
  static const String houseLengthKey = "house_length";

  /// Field name for houseWidth field with JsonKey('house_width')
  static const String houseWidthKey = "house_width";

  /// Field name for pricePerSqm field with JsonKey('price_per_sqm')
  static const String pricePerSqmKey = "price_per_sqm";

  /// Field name for userId field with JsonKey('user_id')
  static const String userIdKey = "user_id";

  /// Field name for propertyTypeId field with JsonKey('property_type_id')
  static const String propertyTypeIdKey = "property_type_id";

  /// Field name for provinceId field with JsonKey('province_id')
  static const String provinceIdKey = "province_id";
}

/// Represents the UpdatePropertyParam model. generated by kimapp_generator
@freezed
sealed class UpdatePropertyParam
    with _$UpdatePropertyParam
    implements BasePropertySchema {
  const UpdatePropertyParam._();

  /// Constructor for UpdatePropertyParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - PropertyListingType listingType : JsonKey('listing_type')
  /// - List<String> images : JsonKey('images')
  /// - String title : JsonKey('title')
  /// - String description : JsonKey('description')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - double price : JsonKey('price')
  /// - double sqm : JsonKey('sqm')
  /// - int? bedrooms : JsonKey('bedrooms')
  /// - int? bathrooms : JsonKey('bathrooms')
  /// - int? floors : JsonKey('floors')
  /// - int? parking : JsonKey('parking')
  /// - int? livingRooms : JsonKey('living_rooms')
  /// - double landLength : JsonKey('land_length')
  /// - double landWidth : JsonKey('land_width')
  /// - double? houseLength : JsonKey('house_length')
  /// - double? houseWidth : JsonKey('house_width')
  /// - double pricePerSqm : JsonKey('price_per_sqm')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - String userId : JsonKey('user_id')
  /// - int propertyTypeId : JsonKey('property_type_id')
  /// - int provinceId : JsonKey('province_id')
  @JsonSerializable(explicitToJson: true)
  const factory UpdatePropertyParam({
    @JsonKey(name: UpdatePropertyParam.listingTypeKey)
    required PropertyListingType listingType,
    @JsonKey(name: UpdatePropertyParam.imagesKey) required List<String> images,
    @JsonKey(name: UpdatePropertyParam.titleKey) required String title,
    @JsonKey(name: UpdatePropertyParam.descriptionKey)
    required String description,
    @JsonKey(name: UpdatePropertyParam.latitudeKey) required double latitude,
    @JsonKey(name: UpdatePropertyParam.longitudeKey) required double longitude,
    @JsonKey(name: UpdatePropertyParam.priceKey) required double price,
    @JsonKey(name: UpdatePropertyParam.sqmKey) required double sqm,
    @JsonKey(name: UpdatePropertyParam.bedroomsKey) required int? bedrooms,
    @JsonKey(name: UpdatePropertyParam.bathroomsKey) required int? bathrooms,
    @JsonKey(name: UpdatePropertyParam.floorsKey) required int? floors,
    @JsonKey(name: UpdatePropertyParam.parkingKey) required int? parking,
    @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
    required int? livingRooms,
    @JsonKey(name: UpdatePropertyParam.landLengthKey)
    required double landLength,
    @JsonKey(name: UpdatePropertyParam.landWidthKey) required double landWidth,
    @JsonKey(name: UpdatePropertyParam.houseLengthKey)
    required double? houseLength,
    @JsonKey(name: UpdatePropertyParam.houseWidthKey)
    required double? houseWidth,
    @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
    required double pricePerSqm,
    @JsonKey(name: UpdatePropertyParam.createdAtKey)
    required DateTime createdAt,
    @JsonKey(name: UpdatePropertyParam.userIdKey) required String userId,
    @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
    required int propertyTypeId,
    @JsonKey(name: UpdatePropertyParam.provinceIdKey) required int provinceId,
  }) = _UpdatePropertyParam;

  /// Creates an instance of UpdatePropertyParam from a JSON map.
  factory UpdatePropertyParam.fromJson(Map<String, dynamic> json) =>
      _$UpdatePropertyParamFromJson(json);

  /// Field name for listingType field with JsonKey('listing_type')
  static const String listingTypeKey = "listing_type";

  /// Field name for images field with JsonKey('images')
  static const String imagesKey = "images";

  /// Field name for title field with JsonKey('title')
  static const String titleKey = "title";

  /// Field name for description field with JsonKey('description')
  static const String descriptionKey = "description";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for price field with JsonKey('price')
  static const String priceKey = "price";

  /// Field name for sqm field with JsonKey('sqm')
  static const String sqmKey = "sqm";

  /// Field name for bedrooms field with JsonKey('bedrooms')
  static const String bedroomsKey = "bedrooms";

  /// Field name for bathrooms field with JsonKey('bathrooms')
  static const String bathroomsKey = "bathrooms";

  /// Field name for floors field with JsonKey('floors')
  static const String floorsKey = "floors";

  /// Field name for parking field with JsonKey('parking')
  static const String parkingKey = "parking";

  /// Field name for livingRooms field with JsonKey('living_rooms')
  static const String livingRoomsKey = "living_rooms";

  /// Field name for landLength field with JsonKey('land_length')
  static const String landLengthKey = "land_length";

  /// Field name for landWidth field with JsonKey('land_width')
  static const String landWidthKey = "land_width";

  /// Field name for houseLength field with JsonKey('house_length')
  static const String houseLengthKey = "house_length";

  /// Field name for houseWidth field with JsonKey('house_width')
  static const String houseWidthKey = "house_width";

  /// Field name for pricePerSqm field with JsonKey('price_per_sqm')
  static const String pricePerSqmKey = "price_per_sqm";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for userId field with JsonKey('user_id')
  static const String userIdKey = "user_id";

  /// Field name for propertyTypeId field with JsonKey('property_type_id')
  static const String propertyTypeIdKey = "property_type_id";

  /// Field name for provinceId field with JsonKey('province_id')
  static const String provinceIdKey = "province_id";
}
