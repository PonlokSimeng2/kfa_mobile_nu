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
import 'package:kfa_mobile_nu/src/models/bank_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/province_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/road_model.dart';
import 'auto_verbal_model.dart';

part 'auto_verbal_model.schema.freezed.dart';
part 'auto_verbal_model.schema.g.dart';

/// Defines the table structure for AutoVerbal.
/// This class provides constant string values for table and column names,
/// facilitating type-safe database operations and query building.
class AutoVerbalTable {
  const AutoVerbalTable._();

  /// The name of the database table for AutoVerbal entities.
  /// Use this constant for constructing SQL queries to ensure consistency.
  static const String table = "auto_verbals";

  /// Column: id
  /// Data type: `int`
  /// Key: `id`
  static const String id = "id";

  /// Column: status
  /// Data type: `PropertyAndAutoVerbalStatus`
  /// Key: `status`
  static const String status = "status";

  /// Column: auto_verbal_id
  /// Data type: `String`
  /// Key: `auto_verbal_id`
  static const String autoVerbalId = "auto_verbal_id";

  /// Column: images
  /// Data type: `List<String>`
  /// Key: `images`
  static const String image = "images";

  /// Column: bankbranch
  /// Data type: `String?`
  /// Key: `bankbranch`
  static const String bankBranch = "bankbranch";

  /// Column: latitude
  /// Data type: `double`
  /// Key: `latitude`
  static const String latitude = "latitude";

  /// Column: longitude
  /// Data type: `double`
  /// Key: `longitude`
  static const String longitude = "longitude";

  /// Column: owner_name
  /// Data type: `String`
  /// Key: `owner_name`
  static const String ownerName = "owner_name";

  /// Column: owner_phone
  /// Data type: `String`
  /// Key: `owner_phone`
  static const String ownerPhone = "owner_phone";

  /// Column: bank_officer_name
  /// Data type: `String?`
  /// Key: `bank_officer_name`
  static const String bankOfficerName = "bank_officer_name";

  /// Column: bank_officer_phone
  /// Data type: `String?`
  /// Key: `bank_officer_phone`
  static const String bankOfficerPhone = "bank_officer_phone";

  /// Column: created_at
  /// Data type: `DateTime`
  /// Key: `created_at`
  static const String createdAt = "created_at";

  /// Column: approved_at
  /// Data type: `DateTime?`
  /// Key: `approved_at`
  static const String approvedAt = "approved_at";

  /// Column: reject_at
  /// Data type: `DateTime?`
  /// Key: `reject_at`
  static const String rejectAt = "reject_at";

  /// Column: reject_reason
  /// Data type: `String?`
  /// Key: `reject_reason`
  static const String rejectReason = "reject_reason";

  /// Column: min_value
  /// Data type: `double`
  /// Key: `min_value`
  static const String minValue = "min_value";

  /// Column: max_value
  /// Data type: `double`
  /// Key: `max_value`
  static const String maxValue = "max_value";

  /// Column: min_value_sqm
  /// Data type: `double`
  /// Key: `min_value_sqm`
  static const String minValueSqm = "min_value_sqm";

  /// Column: max_value_sqm
  /// Data type: `double`
  /// Key: `max_value_sqm`
  static const String maxValueSqm = "max_value_sqm";

  /// Column: area
  /// Data type: `double`
  /// Key: `area`
  static const String area = "area";

  /// Column: buildinglength
  /// Data type: `double?`
  /// Key: `buildinglength`
  static const String buildinglength = "buildinglength";

  /// Column: buildingwidth
  /// Data type: `double?`
  /// Key: `buildingwidth`
  static const String buildingwidth = "buildingwidth";

  /// Column: landlength
  /// Data type: `double`
  /// Key: `landlength`
  static const String landlength = "landlength";

  /// Column: landwidth
  /// Data type: `double`
  /// Key: `landwidth`
  static const String landwidth = "landwidth";

  /// Column: bed
  /// Data type: `int?`
  /// Key: `bed`
  static const String bed = "bed";

  /// Column: bath
  /// Data type: `int?`
  /// Key: `bath`
  static const String bath = "bath";

  /// Column: livingroom
  /// Data type: `int?`
  /// Key: `livingroom`
  static const String livingroom = "livingroom";

  /// Column: floor
  /// Data type: `int?`
  /// Key: `floor`
  static const String floor = "floor";

  /// Column: property_type_id
  /// This is a join key for field propertyType.
  /// Data type: `PropertyTypeModel`
  /// Key: `propertyType`
  static const String propertyType = "propertyType";

  /// Column: bank_id
  /// This is a join key for field bank.
  /// Data type: `BankModel?`
  /// Key: `bank`
  static const String bank = "bank";

  /// Column: user
  /// This is a join key for field user.
  /// Data type: `UserModel?`
  /// Key: `user`
  static const String user = "user";

  /// Column: approved_by
  /// This is a join key for field approvedBy.
  /// Data type: `UserModel?`
  /// Key: `approvedBy`
  static const String approvedBy = "approvedBy";

  /// Column: province_id
  /// This is a join key for field province.
  /// Data type: `ProvinceModel`
  /// Key: `province`
  static const String province = "province";

  /// Column: road_id
  /// This is a join key for field road.
  /// Data type: `RoadModel?`
  /// Key: `road`
  static const String road = "road";
}

/// Base class of this schema, this is the parent of all generated models in this schema
abstract class BaseAutoVerbalSchema {}

/// Base model class for this schema, this includes all properties of the base model, and get inherited by all generated models in this schema where [inheritAllFromBase()] is called and without any excepted fields.
abstract class IAutoVerbalModel {
  int get id;
  PropertyAndAutoVerbalStatus get status;
  String get autoVerbalId;
  List<String> get image;
  String? get bankBranch;
  double get latitude;
  double get longitude;
  String get ownerName;
  String get ownerPhone;
  String? get bankOfficerName;
  String? get bankOfficerPhone;
  DateTime get createdAt;
  DateTime? get approvedAt;
  DateTime? get rejectAt;
  String? get rejectReason;
  double get minValue;
  double get maxValue;
  double get minValueSqm;
  double get maxValueSqm;
  double get area;
  double? get buildinglength;
  double? get buildingwidth;
  double get landlength;
  double get landwidth;
  int? get bed;
  int? get bath;
  int? get livingroom;
  int? get floor;
  PropertyTypeModel get propertyType;
  BankModel? get bank;
  UserModel? get user;
  UserModel? get approvedBy;
  ProvinceModel get province;
  RoadModel? get road;
}

/// Base model class for AutoVerbalModel.
@freezed
sealed class AutoVerbalModel
    with _$AutoVerbalModel
    implements BaseAutoVerbalSchema, IAutoVerbalModel {
  const AutoVerbalModel._();

  /// Constructor for AutoVerbalModel.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `enabled` (`auto_verbals`)
  ///
  /// Fields:
  /// - int id : JsonKey('id')
  /// - PropertyAndAutoVerbalStatus status : JsonKey('status')
  /// - String autoVerbalId : JsonKey('auto_verbal_id')
  /// - List<String> image : JsonKey('images')
  /// - String? bankBranch : JsonKey('bankbranch')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - String ownerName : JsonKey('owner_name')
  /// - String ownerPhone : JsonKey('owner_phone')
  /// - String? bankOfficerName : JsonKey('bank_officer_name')
  /// - String? bankOfficerPhone : JsonKey('bank_officer_phone')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - DateTime? approvedAt : JsonKey('approved_at')
  /// - DateTime? rejectAt : JsonKey('reject_at')
  /// - String? rejectReason : JsonKey('reject_reason')
  /// - double minValue : JsonKey('min_value')
  /// - double maxValue : JsonKey('max_value')
  /// - double minValueSqm : JsonKey('min_value_sqm')
  /// - double maxValueSqm : JsonKey('max_value_sqm')
  /// - double area : JsonKey('area')
  /// - double? buildinglength : JsonKey('buildinglength')
  /// - double? buildingwidth : JsonKey('buildingwidth')
  /// - double landlength : JsonKey('landlength')
  /// - double landwidth : JsonKey('landwidth')
  /// - int? bed : JsonKey('bed')
  /// - int? bath : JsonKey('bath')
  /// - int? livingroom : JsonKey('livingroom')
  /// - int? floor : JsonKey('floor')
  /// - PropertyTypeModel propertyType : JsonKey('propertyType')
  /// - BankModel? bank : JsonKey('bank')
  /// - UserModel? user : JsonKey('user')
  /// - UserModel? approvedBy : JsonKey('approvedBy')
  /// - ProvinceModel province : JsonKey('province')
  /// - RoadModel? road : JsonKey('road')
  @TableModel(AutoVerbalModel.tableName)
  @JsonSerializable(explicitToJson: true)
  const factory AutoVerbalModel({
    @JsonKey(name: AutoVerbalModel.idKey) required int id,
    @JsonKey(name: AutoVerbalModel.statusKey)
    required PropertyAndAutoVerbalStatus status,
    @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
    required String autoVerbalId,
    @JsonKey(name: AutoVerbalModel.imageKey) required List<String> image,
    @JsonKey(name: AutoVerbalModel.bankBranchKey) required String? bankBranch,
    @JsonKey(name: AutoVerbalModel.latitudeKey) required double latitude,
    @JsonKey(name: AutoVerbalModel.longitudeKey) required double longitude,
    @JsonKey(name: AutoVerbalModel.ownerNameKey) required String ownerName,
    @JsonKey(name: AutoVerbalModel.ownerPhoneKey) required String ownerPhone,
    @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
    required String? bankOfficerName,
    @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
    required String? bankOfficerPhone,
    @JsonKey(name: AutoVerbalModel.createdAtKey) required DateTime createdAt,
    @JsonKey(name: AutoVerbalModel.approvedAtKey) required DateTime? approvedAt,
    @JsonKey(name: AutoVerbalModel.rejectAtKey) required DateTime? rejectAt,
    @JsonKey(name: AutoVerbalModel.rejectReasonKey)
    required String? rejectReason,
    @JsonKey(name: AutoVerbalModel.minValueKey) required double minValue,
    @JsonKey(name: AutoVerbalModel.maxValueKey) required double maxValue,
    @JsonKey(name: AutoVerbalModel.minValueSqmKey) required double minValueSqm,
    @JsonKey(name: AutoVerbalModel.maxValueSqmKey) required double maxValueSqm,
    @JsonKey(name: AutoVerbalModel.areaKey) required double area,
    @JsonKey(name: AutoVerbalModel.buildinglengthKey)
    required double? buildinglength,
    @JsonKey(name: AutoVerbalModel.buildingwidthKey)
    required double? buildingwidth,
    @JsonKey(name: AutoVerbalModel.landlengthKey) required double landlength,
    @JsonKey(name: AutoVerbalModel.landwidthKey) required double landwidth,
    @JsonKey(name: AutoVerbalModel.bedKey) required int? bed,
    @JsonKey(name: AutoVerbalModel.bathKey) required int? bath,
    @JsonKey(name: AutoVerbalModel.livingroomKey) required int? livingroom,
    @JsonKey(name: AutoVerbalModel.floorKey) required int? floor,
    @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
    @JsonKey(name: AutoVerbalModel.propertyTypeKey)
    required PropertyTypeModel propertyType,
    @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
    @JsonKey(name: AutoVerbalModel.bankKey)
    required BankModel? bank,
    @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
    @JsonKey(name: AutoVerbalModel.userKey)
    required UserModel? user,
    @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
    @JsonKey(name: AutoVerbalModel.approvedByKey)
    required UserModel? approvedBy,
    @JoinedColumn(foreignKey: "province_id", candidateKey: null)
    @JsonKey(name: AutoVerbalModel.provinceKey)
    required ProvinceModel province,
    @JoinedColumn(foreignKey: "road_id", candidateKey: null)
    @JsonKey(name: AutoVerbalModel.roadKey)
    required RoadModel? road,
  }) = _AutoVerbalModel;

  /// Creates an instance of AutoVerbalModel from a JSON map.
  factory AutoVerbalModel.fromJson(Map<String, dynamic> json) =>
      _$AutoVerbalModelFromJson(json);

  /// Supabase table configuration for this model.
  static const TableBuilder table = _tableAutoVerbalModel;

  /// Table name: `auto_verbals`
  static const String tableName = "auto_verbals";

  /// Field name for id field with JsonKey('id')
  static const String idKey = "id";

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for autoVerbalId field with JsonKey('auto_verbal_id')
  static const String autoVerbalIdKey = "auto_verbal_id";

  /// Field name for image field with JsonKey('images')
  static const String imageKey = "images";

  /// Field name for bankBranch field with JsonKey('bankbranch')
  static const String bankBranchKey = "bankbranch";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for ownerName field with JsonKey('owner_name')
  static const String ownerNameKey = "owner_name";

  /// Field name for ownerPhone field with JsonKey('owner_phone')
  static const String ownerPhoneKey = "owner_phone";

  /// Field name for bankOfficerName field with JsonKey('bank_officer_name')
  static const String bankOfficerNameKey = "bank_officer_name";

  /// Field name for bankOfficerPhone field with JsonKey('bank_officer_phone')
  static const String bankOfficerPhoneKey = "bank_officer_phone";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for approvedAt field with JsonKey('approved_at')
  static const String approvedAtKey = "approved_at";

  /// Field name for rejectAt field with JsonKey('reject_at')
  static const String rejectAtKey = "reject_at";

  /// Field name for rejectReason field with JsonKey('reject_reason')
  static const String rejectReasonKey = "reject_reason";

  /// Field name for minValue field with JsonKey('min_value')
  static const String minValueKey = "min_value";

  /// Field name for maxValue field with JsonKey('max_value')
  static const String maxValueKey = "max_value";

  /// Field name for minValueSqm field with JsonKey('min_value_sqm')
  static const String minValueSqmKey = "min_value_sqm";

  /// Field name for maxValueSqm field with JsonKey('max_value_sqm')
  static const String maxValueSqmKey = "max_value_sqm";

  /// Field name for area field with JsonKey('area')
  static const String areaKey = "area";

  /// Field name for buildinglength field with JsonKey('buildinglength')
  static const String buildinglengthKey = "buildinglength";

  /// Field name for buildingwidth field with JsonKey('buildingwidth')
  static const String buildingwidthKey = "buildingwidth";

  /// Field name for landlength field with JsonKey('landlength')
  static const String landlengthKey = "landlength";

  /// Field name for landwidth field with JsonKey('landwidth')
  static const String landwidthKey = "landwidth";

  /// Field name for bed field with JsonKey('bed')
  static const String bedKey = "bed";

  /// Field name for bath field with JsonKey('bath')
  static const String bathKey = "bath";

  /// Field name for livingroom field with JsonKey('livingroom')
  static const String livingroomKey = "livingroom";

  /// Field name for floor field with JsonKey('floor')
  static const String floorKey = "floor";

  /// Field name for propertyType field with JsonKey('propertyType')
  /// This is json key for joined field. with foreign key: property_type_id and candidate key: null
  static const String propertyTypeKey = "propertyType";

  /// Field name for bank field with JsonKey('bank')
  /// This is json key for joined field. with foreign key: bank_id and candidate key: null
  static const String bankKey = "bank";

  /// Field name for user field with JsonKey('user')
  /// This is json key for joined field. with foreign key: null and candidate key: auto_verbals_user_id_fkey
  static const String userKey = "user";

  /// Field name for approvedBy field with JsonKey('approvedBy')
  /// This is json key for joined field. with foreign key: approved_by and candidate key: null
  static const String approvedByKey = "approvedBy";

  /// Field name for province field with JsonKey('province')
  /// This is json key for joined field. with foreign key: province_id and candidate key: null
  static const String provinceKey = "province";

  /// Field name for road field with JsonKey('road')
  /// This is json key for joined field. with foreign key: road_id and candidate key: null
  static const String roadKey = "road";
}

/// Represents the CreateAutoVerbalParam model. generated by kimapp_generator
@freezed
sealed class CreateAutoVerbalParam
    with _$CreateAutoVerbalParam
    implements BaseAutoVerbalSchema {
  const CreateAutoVerbalParam._();

  /// Constructor for CreateAutoVerbalParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - List<String> image : JsonKey('images')
  /// - String? bankBranch : JsonKey('bankbranch')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - String ownerName : JsonKey('owner_name')
  /// - String ownerPhone : JsonKey('owner_phone')
  /// - String? bankOfficerName : JsonKey('bank_officer_name')
  /// - String? bankOfficerPhone : JsonKey('bank_officer_phone')
  /// - double minValue : JsonKey('min_value')
  /// - double maxValue : JsonKey('max_value')
  /// - double minValueSqm : JsonKey('min_value_sqm')
  /// - double maxValueSqm : JsonKey('max_value_sqm')
  /// - double area : JsonKey('area')
  /// - double? buildinglength : JsonKey('buildinglength')
  /// - double? buildingwidth : JsonKey('buildingwidth')
  /// - double landlength : JsonKey('landlength')
  /// - double landwidth : JsonKey('landwidth')
  /// - int? bed : JsonKey('bed')
  /// - int? bath : JsonKey('bath')
  /// - int? livingroom : JsonKey('livingroom')
  /// - int? floor : JsonKey('floor')
  /// - int propertyTypeId : JsonKey('property_type_id')
  /// - int provinceId : JsonKey('province_id')
  /// - int? roadId : JsonKey('road_id')
  /// - int? bankId : JsonKey('bank_id')
  /// - String userId : JsonKey('user_id')
  @JsonSerializable(explicitToJson: true)
  const factory CreateAutoVerbalParam({
    @JsonKey(name: CreateAutoVerbalParam.imageKey) required List<String> image,
    @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
    required String? bankBranch,
    @JsonKey(name: CreateAutoVerbalParam.latitudeKey) required double latitude,
    @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
    required double longitude,
    @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
    required String ownerName,
    @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
    required String ownerPhone,
    @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
    required String? bankOfficerName,
    @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
    required String? bankOfficerPhone,
    @JsonKey(name: CreateAutoVerbalParam.minValueKey) required double minValue,
    @JsonKey(name: CreateAutoVerbalParam.maxValueKey) required double maxValue,
    @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
    required double minValueSqm,
    @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
    required double maxValueSqm,
    @JsonKey(name: CreateAutoVerbalParam.areaKey) required double area,
    @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
    required double? buildinglength,
    @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
    required double? buildingwidth,
    @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
    required double landlength,
    @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
    required double landwidth,
    @JsonKey(name: CreateAutoVerbalParam.bedKey) required int? bed,
    @JsonKey(name: CreateAutoVerbalParam.bathKey) required int? bath,
    @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
    required int? livingroom,
    @JsonKey(name: CreateAutoVerbalParam.floorKey) required int? floor,
    @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
    required int propertyTypeId,
    @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) required int provinceId,
    @JsonKey(name: CreateAutoVerbalParam.roadIdKey) required int? roadId,
    @JsonKey(name: CreateAutoVerbalParam.bankIdKey) required int? bankId,
    @JsonKey(name: CreateAutoVerbalParam.userIdKey) required String userId,
  }) = _CreateAutoVerbalParam;

  /// Creates an instance of CreateAutoVerbalParam from a JSON map.
  factory CreateAutoVerbalParam.fromJson(Map<String, dynamic> json) =>
      _$CreateAutoVerbalParamFromJson(json);

  /// Field name for image field with JsonKey('images')
  static const String imageKey = "images";

  /// Field name for bankBranch field with JsonKey('bankbranch')
  static const String bankBranchKey = "bankbranch";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for ownerName field with JsonKey('owner_name')
  static const String ownerNameKey = "owner_name";

  /// Field name for ownerPhone field with JsonKey('owner_phone')
  static const String ownerPhoneKey = "owner_phone";

  /// Field name for bankOfficerName field with JsonKey('bank_officer_name')
  static const String bankOfficerNameKey = "bank_officer_name";

  /// Field name for bankOfficerPhone field with JsonKey('bank_officer_phone')
  static const String bankOfficerPhoneKey = "bank_officer_phone";

  /// Field name for minValue field with JsonKey('min_value')
  static const String minValueKey = "min_value";

  /// Field name for maxValue field with JsonKey('max_value')
  static const String maxValueKey = "max_value";

  /// Field name for minValueSqm field with JsonKey('min_value_sqm')
  static const String minValueSqmKey = "min_value_sqm";

  /// Field name for maxValueSqm field with JsonKey('max_value_sqm')
  static const String maxValueSqmKey = "max_value_sqm";

  /// Field name for area field with JsonKey('area')
  static const String areaKey = "area";

  /// Field name for buildinglength field with JsonKey('buildinglength')
  static const String buildinglengthKey = "buildinglength";

  /// Field name for buildingwidth field with JsonKey('buildingwidth')
  static const String buildingwidthKey = "buildingwidth";

  /// Field name for landlength field with JsonKey('landlength')
  static const String landlengthKey = "landlength";

  /// Field name for landwidth field with JsonKey('landwidth')
  static const String landwidthKey = "landwidth";

  /// Field name for bed field with JsonKey('bed')
  static const String bedKey = "bed";

  /// Field name for bath field with JsonKey('bath')
  static const String bathKey = "bath";

  /// Field name for livingroom field with JsonKey('livingroom')
  static const String livingroomKey = "livingroom";

  /// Field name for floor field with JsonKey('floor')
  static const String floorKey = "floor";

  /// Field name for propertyTypeId field with JsonKey('property_type_id')
  static const String propertyTypeIdKey = "property_type_id";

  /// Field name for provinceId field with JsonKey('province_id')
  static const String provinceIdKey = "province_id";

  /// Field name for roadId field with JsonKey('road_id')
  static const String roadIdKey = "road_id";

  /// Field name for bankId field with JsonKey('bank_id')
  static const String bankIdKey = "bank_id";

  /// Field name for userId field with JsonKey('user_id')
  static const String userIdKey = "user_id";
}

/// Represents the UpdateAutoVerbalParam model. generated by kimapp_generator
@freezed
sealed class UpdateAutoVerbalParam
    with _$UpdateAutoVerbalParam
    implements BaseAutoVerbalSchema {
  const UpdateAutoVerbalParam._();

  /// Constructor for UpdateAutoVerbalParam.
  ///
  /// This class was generated by the Kimapp generator based on KimappSchema.
  ///
  /// Table Mode: `disabled`
  ///
  /// Fields:
  /// - PropertyAndAutoVerbalStatus status : JsonKey('status')
  /// - List<String> image : JsonKey('images')
  /// - String? bankBranch : JsonKey('bankbranch')
  /// - double latitude : JsonKey('latitude')
  /// - double longitude : JsonKey('longitude')
  /// - String ownerName : JsonKey('owner_name')
  /// - String ownerPhone : JsonKey('owner_phone')
  /// - String? bankOfficerName : JsonKey('bank_officer_name')
  /// - String? bankOfficerPhone : JsonKey('bank_officer_phone')
  /// - DateTime createdAt : JsonKey('created_at')
  /// - double minValue : JsonKey('min_value')
  /// - double maxValue : JsonKey('max_value')
  /// - double minValueSqm : JsonKey('min_value_sqm')
  /// - double maxValueSqm : JsonKey('max_value_sqm')
  /// - double area : JsonKey('area')
  /// - double? buildinglength : JsonKey('buildinglength')
  /// - double? buildingwidth : JsonKey('buildingwidth')
  /// - double landlength : JsonKey('landlength')
  /// - double landwidth : JsonKey('landwidth')
  /// - int? bed : JsonKey('bed')
  /// - int? bath : JsonKey('bath')
  /// - int? livingroom : JsonKey('livingroom')
  /// - int? floor : JsonKey('floor')
  /// - int propertyTypeId : JsonKey('property_type_id')
  /// - int provinceId : JsonKey('province_id')
  /// - int? roadId : JsonKey('road_id')
  /// - int? bankId : JsonKey('bank_id')
  @JsonSerializable(explicitToJson: true)
  const factory UpdateAutoVerbalParam({
    @JsonKey(name: UpdateAutoVerbalParam.statusKey)
    required PropertyAndAutoVerbalStatus status,
    @JsonKey(name: UpdateAutoVerbalParam.imageKey) required List<String> image,
    @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
    required String? bankBranch,
    @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) required double latitude,
    @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
    required double longitude,
    @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
    required String ownerName,
    @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
    required String ownerPhone,
    @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
    required String? bankOfficerName,
    @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
    required String? bankOfficerPhone,
    @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
    required DateTime createdAt,
    @JsonKey(name: UpdateAutoVerbalParam.minValueKey) required double minValue,
    @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) required double maxValue,
    @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
    required double minValueSqm,
    @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
    required double maxValueSqm,
    @JsonKey(name: UpdateAutoVerbalParam.areaKey) required double area,
    @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
    required double? buildinglength,
    @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
    required double? buildingwidth,
    @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
    required double landlength,
    @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
    required double landwidth,
    @JsonKey(name: UpdateAutoVerbalParam.bedKey) required int? bed,
    @JsonKey(name: UpdateAutoVerbalParam.bathKey) required int? bath,
    @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
    required int? livingroom,
    @JsonKey(name: UpdateAutoVerbalParam.floorKey) required int? floor,
    @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
    required int propertyTypeId,
    @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) required int provinceId,
    @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) required int? roadId,
    @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) required int? bankId,
  }) = _UpdateAutoVerbalParam;

  /// Creates an instance of UpdateAutoVerbalParam from a JSON map.
  factory UpdateAutoVerbalParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateAutoVerbalParamFromJson(json);

  /// Field name for status field with JsonKey('status')
  static const String statusKey = "status";

  /// Field name for image field with JsonKey('images')
  static const String imageKey = "images";

  /// Field name for bankBranch field with JsonKey('bankbranch')
  static const String bankBranchKey = "bankbranch";

  /// Field name for latitude field with JsonKey('latitude')
  static const String latitudeKey = "latitude";

  /// Field name for longitude field with JsonKey('longitude')
  static const String longitudeKey = "longitude";

  /// Field name for ownerName field with JsonKey('owner_name')
  static const String ownerNameKey = "owner_name";

  /// Field name for ownerPhone field with JsonKey('owner_phone')
  static const String ownerPhoneKey = "owner_phone";

  /// Field name for bankOfficerName field with JsonKey('bank_officer_name')
  static const String bankOfficerNameKey = "bank_officer_name";

  /// Field name for bankOfficerPhone field with JsonKey('bank_officer_phone')
  static const String bankOfficerPhoneKey = "bank_officer_phone";

  /// Field name for createdAt field with JsonKey('created_at')
  static const String createdAtKey = "created_at";

  /// Field name for minValue field with JsonKey('min_value')
  static const String minValueKey = "min_value";

  /// Field name for maxValue field with JsonKey('max_value')
  static const String maxValueKey = "max_value";

  /// Field name for minValueSqm field with JsonKey('min_value_sqm')
  static const String minValueSqmKey = "min_value_sqm";

  /// Field name for maxValueSqm field with JsonKey('max_value_sqm')
  static const String maxValueSqmKey = "max_value_sqm";

  /// Field name for area field with JsonKey('area')
  static const String areaKey = "area";

  /// Field name for buildinglength field with JsonKey('buildinglength')
  static const String buildinglengthKey = "buildinglength";

  /// Field name for buildingwidth field with JsonKey('buildingwidth')
  static const String buildingwidthKey = "buildingwidth";

  /// Field name for landlength field with JsonKey('landlength')
  static const String landlengthKey = "landlength";

  /// Field name for landwidth field with JsonKey('landwidth')
  static const String landwidthKey = "landwidth";

  /// Field name for bed field with JsonKey('bed')
  static const String bedKey = "bed";

  /// Field name for bath field with JsonKey('bath')
  static const String bathKey = "bath";

  /// Field name for livingroom field with JsonKey('livingroom')
  static const String livingroomKey = "livingroom";

  /// Field name for floor field with JsonKey('floor')
  static const String floorKey = "floor";

  /// Field name for propertyTypeId field with JsonKey('property_type_id')
  static const String propertyTypeIdKey = "property_type_id";

  /// Field name for provinceId field with JsonKey('province_id')
  static const String provinceIdKey = "province_id";

  /// Field name for roadId field with JsonKey('road_id')
  static const String roadIdKey = "road_id";

  /// Field name for bankId field with JsonKey('bank_id')
  static const String bankIdKey = "bank_id";
}
