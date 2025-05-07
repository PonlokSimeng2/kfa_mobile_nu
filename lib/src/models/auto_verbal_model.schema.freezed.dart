// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_verbal_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoVerbalModel {
  @JsonKey(name: AutoVerbalModel.idKey)
  int get id;
  @JsonKey(name: AutoVerbalModel.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
  String get autoVerbalId;
  @JsonKey(name: AutoVerbalModel.imageKey)
  List<String> get image;
  @JsonKey(name: AutoVerbalModel.bankBranchKey)
  String? get bankBranch;
  @JsonKey(name: AutoVerbalModel.latitudeKey)
  double get latitude;
  @JsonKey(name: AutoVerbalModel.longitudeKey)
  double get longitude;
  @JsonKey(name: AutoVerbalModel.ownerNameKey)
  String get ownerName;
  @JsonKey(name: AutoVerbalModel.ownerPhoneKey)
  String get ownerPhone;
  @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
  String? get bankOfficerName;
  @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @JsonKey(name: AutoVerbalModel.createdAtKey)
  DateTime get createdAt;
  @JsonKey(name: AutoVerbalModel.approvedAtKey)
  DateTime? get approvedAt;
  @JsonKey(name: AutoVerbalModel.rejectAtKey)
  DateTime? get rejectAt;
  @JsonKey(name: AutoVerbalModel.rejectReasonKey)
  String? get rejectReason;
  @JsonKey(name: AutoVerbalModel.minValueKey)
  double get minValue;
  @JsonKey(name: AutoVerbalModel.maxValueKey)
  double get maxValue;
  @JsonKey(name: AutoVerbalModel.minValueSqmKey)
  double get minValueSqm;
  @JsonKey(name: AutoVerbalModel.maxValueSqmKey)
  double get maxValueSqm;
  @JsonKey(name: AutoVerbalModel.areaKey)
  double get area;
  @JsonKey(name: AutoVerbalModel.buildinglengthKey)
  double? get buildinglength;
  @JsonKey(name: AutoVerbalModel.buildingwidthKey)
  double? get buildingwidth;
  @JsonKey(name: AutoVerbalModel.landlengthKey)
  double get landlength;
  @JsonKey(name: AutoVerbalModel.landwidthKey)
  double get landwidth;
  @JsonKey(name: AutoVerbalModel.bedKey)
  int? get bed;
  @JsonKey(name: AutoVerbalModel.bathKey)
  int? get bath;
  @JsonKey(name: AutoVerbalModel.livingroomKey)
  int? get livingroom;
  @JsonKey(name: AutoVerbalModel.floorKey)
  int? get floor;
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.propertyTypeKey)
  PropertyTypeModel get propertyType;
  @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.bankKey)
  BankModel? get bank;
  @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
  @JsonKey(name: AutoVerbalModel.userKey)
  UserModel? get user;
  @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.approvedByKey)
  UserModel? get approvedBy;
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.provinceKey)
  ProvinceModel get province;
  @JoinedColumn(foreignKey: "road_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.roadKey)
  RoadModel? get road;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoVerbalModelCopyWith<AutoVerbalModel> get copyWith =>
      _$AutoVerbalModelCopyWithImpl<AutoVerbalModel>(
          this as AutoVerbalModel, _$identity);

  /// Serializes this AutoVerbalModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoVerbalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.autoVerbalId, autoVerbalId) ||
                other.autoVerbalId == autoVerbalId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectAt, rejectAt) ||
                other.rejectAt == rejectAt) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.road, road) || other.road == road));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        autoVerbalId,
        const DeepCollectionEquality().hash(image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        createdAt,
        approvedAt,
        rejectAt,
        rejectReason,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyType,
        bank,
        user,
        approvedBy,
        province,
        road
      ]);

  @override
  String toString() {
    return 'AutoVerbalModel(id: $id, status: $status, autoVerbalId: $autoVerbalId, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, approvedAt: $approvedAt, rejectAt: $rejectAt, rejectReason: $rejectReason, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyType: $propertyType, bank: $bank, user: $user, approvedBy: $approvedBy, province: $province, road: $road)';
  }
}

/// @nodoc
abstract mixin class $AutoVerbalModelCopyWith<$Res> {
  factory $AutoVerbalModelCopyWith(
          AutoVerbalModel value, $Res Function(AutoVerbalModel) _then) =
      _$AutoVerbalModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalModel.idKey) int id,
      @JsonKey(name: AutoVerbalModel.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) String autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) String? bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) double latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) double longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) String ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: AutoVerbalModel.approvedAtKey) DateTime? approvedAt,
      @JsonKey(name: AutoVerbalModel.rejectAtKey) DateTime? rejectAt,
      @JsonKey(name: AutoVerbalModel.rejectReasonKey) String? rejectReason,
      @JsonKey(name: AutoVerbalModel.minValueKey) double minValue,
      @JsonKey(name: AutoVerbalModel.maxValueKey) double maxValue,
      @JsonKey(name: AutoVerbalModel.minValueSqmKey) double minValueSqm,
      @JsonKey(name: AutoVerbalModel.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: AutoVerbalModel.areaKey) double area,
      @JsonKey(name: AutoVerbalModel.buildinglengthKey) double? buildinglength,
      @JsonKey(name: AutoVerbalModel.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: AutoVerbalModel.landlengthKey) double landlength,
      @JsonKey(name: AutoVerbalModel.landwidthKey) double landwidth,
      @JsonKey(name: AutoVerbalModel.bedKey) int? bed,
      @JsonKey(name: AutoVerbalModel.bathKey) int? bath,
      @JsonKey(name: AutoVerbalModel.livingroomKey) int? livingroom,
      @JsonKey(name: AutoVerbalModel.floorKey) int? floor,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.propertyTypeKey)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.bankKey)
      BankModel? bank,
      @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
      @JsonKey(name: AutoVerbalModel.userKey)
      UserModel? user,
      @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.provinceKey)
      ProvinceModel province,
      @JoinedColumn(foreignKey: "road_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.roadKey)
      RoadModel? road});

  $PropertyTypeModelCopyWith<$Res> get propertyType;
  $BankModelCopyWith<$Res>? get bank;
  $UserModelCopyWith<$Res>? get user;
  $UserModelCopyWith<$Res>? get approvedBy;
  $ProvinceModelCopyWith<$Res> get province;
  $RoadModelCopyWith<$Res>? get road;
}

/// @nodoc
class _$AutoVerbalModelCopyWithImpl<$Res>
    implements $AutoVerbalModelCopyWith<$Res> {
  _$AutoVerbalModelCopyWithImpl(this._self, this._then);

  final AutoVerbalModel _self;
  final $Res Function(AutoVerbalModel) _then;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? autoVerbalId = null,
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? rejectAt = freezed,
    Object? rejectReason = freezed,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyType = null,
    Object? bank = freezed,
    Object? user = freezed,
    Object? approvedBy = freezed,
    Object? province = null,
    Object? road = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      autoVerbalId: null == autoVerbalId
          ? _self.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectAt: freezed == rejectAt
          ? _self.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _self.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: null == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      province: null == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
    ));
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res> get propertyType {
    return $PropertyTypeModelCopyWith<$Res>(_self.propertyType, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.approvedBy!, (value) {
      return _then(_self.copyWith(approvedBy: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res> get province {
    return $ProvinceModelCopyWith<$Res>(_self.province, (value) {
      return _then(_self.copyWith(province: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }
}

/// @nodoc

@TableModel(AutoVerbalModel.tableName)
@JsonSerializable(explicitToJson: true)
class _AutoVerbalModel extends AutoVerbalModel {
  const _AutoVerbalModel(
      {@JsonKey(name: AutoVerbalModel.idKey) required this.id,
      @JsonKey(name: AutoVerbalModel.statusKey) required this.status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
      required this.autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey)
      required final List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) required this.bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) required this.latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) required this.longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) required this.ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) required this.ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
      required this.bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
      required this.bankOfficerPhone,
      @JsonKey(name: AutoVerbalModel.createdAtKey) required this.createdAt,
      @JsonKey(name: AutoVerbalModel.approvedAtKey) required this.approvedAt,
      @JsonKey(name: AutoVerbalModel.rejectAtKey) required this.rejectAt,
      @JsonKey(name: AutoVerbalModel.rejectReasonKey)
      required this.rejectReason,
      @JsonKey(name: AutoVerbalModel.minValueKey) required this.minValue,
      @JsonKey(name: AutoVerbalModel.maxValueKey) required this.maxValue,
      @JsonKey(name: AutoVerbalModel.minValueSqmKey) required this.minValueSqm,
      @JsonKey(name: AutoVerbalModel.maxValueSqmKey) required this.maxValueSqm,
      @JsonKey(name: AutoVerbalModel.areaKey) required this.area,
      @JsonKey(name: AutoVerbalModel.buildinglengthKey)
      required this.buildinglength,
      @JsonKey(name: AutoVerbalModel.buildingwidthKey)
      required this.buildingwidth,
      @JsonKey(name: AutoVerbalModel.landlengthKey) required this.landlength,
      @JsonKey(name: AutoVerbalModel.landwidthKey) required this.landwidth,
      @JsonKey(name: AutoVerbalModel.bedKey) required this.bed,
      @JsonKey(name: AutoVerbalModel.bathKey) required this.bath,
      @JsonKey(name: AutoVerbalModel.livingroomKey) required this.livingroom,
      @JsonKey(name: AutoVerbalModel.floorKey) required this.floor,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.propertyTypeKey)
      required this.propertyType,
      @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.bankKey)
      required this.bank,
      @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
      @JsonKey(name: AutoVerbalModel.userKey)
      required this.user,
      @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.approvedByKey)
      required this.approvedBy,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.provinceKey)
      required this.province,
      @JoinedColumn(foreignKey: "road_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.roadKey)
      required this.road})
      : _image = image,
        super._();
  factory _AutoVerbalModel.fromJson(Map<String, dynamic> json) =>
      _$AutoVerbalModelFromJson(json);

  @override
  @JsonKey(name: AutoVerbalModel.idKey)
  final int id;
  @override
  @JsonKey(name: AutoVerbalModel.statusKey)
  final PropertyAndAutoVerbalStatus status;
  @override
  @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
  final String autoVerbalId;
  final List<String> _image;
  @override
  @JsonKey(name: AutoVerbalModel.imageKey)
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  @JsonKey(name: AutoVerbalModel.bankBranchKey)
  final String? bankBranch;
  @override
  @JsonKey(name: AutoVerbalModel.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: AutoVerbalModel.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: AutoVerbalModel.ownerNameKey)
  final String ownerName;
  @override
  @JsonKey(name: AutoVerbalModel.ownerPhoneKey)
  final String ownerPhone;
  @override
  @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
  final String? bankOfficerName;
  @override
  @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
  final String? bankOfficerPhone;
  @override
  @JsonKey(name: AutoVerbalModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: AutoVerbalModel.approvedAtKey)
  final DateTime? approvedAt;
  @override
  @JsonKey(name: AutoVerbalModel.rejectAtKey)
  final DateTime? rejectAt;
  @override
  @JsonKey(name: AutoVerbalModel.rejectReasonKey)
  final String? rejectReason;
  @override
  @JsonKey(name: AutoVerbalModel.minValueKey)
  final double minValue;
  @override
  @JsonKey(name: AutoVerbalModel.maxValueKey)
  final double maxValue;
  @override
  @JsonKey(name: AutoVerbalModel.minValueSqmKey)
  final double minValueSqm;
  @override
  @JsonKey(name: AutoVerbalModel.maxValueSqmKey)
  final double maxValueSqm;
  @override
  @JsonKey(name: AutoVerbalModel.areaKey)
  final double area;
  @override
  @JsonKey(name: AutoVerbalModel.buildinglengthKey)
  final double? buildinglength;
  @override
  @JsonKey(name: AutoVerbalModel.buildingwidthKey)
  final double? buildingwidth;
  @override
  @JsonKey(name: AutoVerbalModel.landlengthKey)
  final double landlength;
  @override
  @JsonKey(name: AutoVerbalModel.landwidthKey)
  final double landwidth;
  @override
  @JsonKey(name: AutoVerbalModel.bedKey)
  final int? bed;
  @override
  @JsonKey(name: AutoVerbalModel.bathKey)
  final int? bath;
  @override
  @JsonKey(name: AutoVerbalModel.livingroomKey)
  final int? livingroom;
  @override
  @JsonKey(name: AutoVerbalModel.floorKey)
  final int? floor;
  @override
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.propertyTypeKey)
  final PropertyTypeModel propertyType;
  @override
  @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.bankKey)
  final BankModel? bank;
  @override
  @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
  @JsonKey(name: AutoVerbalModel.userKey)
  final UserModel? user;
  @override
  @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.approvedByKey)
  final UserModel? approvedBy;
  @override
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.provinceKey)
  final ProvinceModel province;
  @override
  @JoinedColumn(foreignKey: "road_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.roadKey)
  final RoadModel? road;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoVerbalModelCopyWith<_AutoVerbalModel> get copyWith =>
      __$AutoVerbalModelCopyWithImpl<_AutoVerbalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AutoVerbalModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoVerbalModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.autoVerbalId, autoVerbalId) ||
                other.autoVerbalId == autoVerbalId) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectAt, rejectAt) ||
                other.rejectAt == rejectAt) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.road, road) || other.road == road));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        autoVerbalId,
        const DeepCollectionEquality().hash(_image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        createdAt,
        approvedAt,
        rejectAt,
        rejectReason,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyType,
        bank,
        user,
        approvedBy,
        province,
        road
      ]);

  @override
  String toString() {
    return 'AutoVerbalModel(id: $id, status: $status, autoVerbalId: $autoVerbalId, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, approvedAt: $approvedAt, rejectAt: $rejectAt, rejectReason: $rejectReason, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyType: $propertyType, bank: $bank, user: $user, approvedBy: $approvedBy, province: $province, road: $road)';
  }
}

/// @nodoc
abstract mixin class _$AutoVerbalModelCopyWith<$Res>
    implements $AutoVerbalModelCopyWith<$Res> {
  factory _$AutoVerbalModelCopyWith(
          _AutoVerbalModel value, $Res Function(_AutoVerbalModel) _then) =
      __$AutoVerbalModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalModel.idKey) int id,
      @JsonKey(name: AutoVerbalModel.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) String autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) String? bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) double latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) double longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) String ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: AutoVerbalModel.approvedAtKey) DateTime? approvedAt,
      @JsonKey(name: AutoVerbalModel.rejectAtKey) DateTime? rejectAt,
      @JsonKey(name: AutoVerbalModel.rejectReasonKey) String? rejectReason,
      @JsonKey(name: AutoVerbalModel.minValueKey) double minValue,
      @JsonKey(name: AutoVerbalModel.maxValueKey) double maxValue,
      @JsonKey(name: AutoVerbalModel.minValueSqmKey) double minValueSqm,
      @JsonKey(name: AutoVerbalModel.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: AutoVerbalModel.areaKey) double area,
      @JsonKey(name: AutoVerbalModel.buildinglengthKey) double? buildinglength,
      @JsonKey(name: AutoVerbalModel.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: AutoVerbalModel.landlengthKey) double landlength,
      @JsonKey(name: AutoVerbalModel.landwidthKey) double landwidth,
      @JsonKey(name: AutoVerbalModel.bedKey) int? bed,
      @JsonKey(name: AutoVerbalModel.bathKey) int? bath,
      @JsonKey(name: AutoVerbalModel.livingroomKey) int? livingroom,
      @JsonKey(name: AutoVerbalModel.floorKey) int? floor,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.propertyTypeKey)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.bankKey)
      BankModel? bank,
      @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
      @JsonKey(name: AutoVerbalModel.userKey)
      UserModel? user,
      @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.provinceKey)
      ProvinceModel province,
      @JoinedColumn(foreignKey: "road_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.roadKey)
      RoadModel? road});

  @override
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  @override
  $BankModelCopyWith<$Res>? get bank;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $UserModelCopyWith<$Res>? get approvedBy;
  @override
  $ProvinceModelCopyWith<$Res> get province;
  @override
  $RoadModelCopyWith<$Res>? get road;
}

/// @nodoc
class __$AutoVerbalModelCopyWithImpl<$Res>
    implements _$AutoVerbalModelCopyWith<$Res> {
  __$AutoVerbalModelCopyWithImpl(this._self, this._then);

  final _AutoVerbalModel _self;
  final $Res Function(_AutoVerbalModel) _then;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? autoVerbalId = null,
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? rejectAt = freezed,
    Object? rejectReason = freezed,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyType = null,
    Object? bank = freezed,
    Object? user = freezed,
    Object? approvedBy = freezed,
    Object? province = null,
    Object? road = freezed,
  }) {
    return _then(_AutoVerbalModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      autoVerbalId: null == autoVerbalId
          ? _self.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectAt: freezed == rejectAt
          ? _self.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _self.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: null == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      province: null == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
    ));
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res> get propertyType {
    return $PropertyTypeModelCopyWith<$Res>(_self.propertyType, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get approvedBy {
    if (_self.approvedBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.approvedBy!, (value) {
      return _then(_self.copyWith(approvedBy: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res> get province {
    return $ProvinceModelCopyWith<$Res>(_self.province, (value) {
      return _then(_self.copyWith(province: value));
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }
}

/// @nodoc
mixin _$CreateAutoVerbalParam {
  @JsonKey(name: CreateAutoVerbalParam.imageKey)
  List<String> get image;
  @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
  String? get bankBranch;
  @JsonKey(name: CreateAutoVerbalParam.latitudeKey)
  double get latitude;
  @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
  double get longitude;
  @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
  String get ownerName;
  @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone;
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName;
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @JsonKey(name: CreateAutoVerbalParam.minValueKey)
  double get minValue;
  @JsonKey(name: CreateAutoVerbalParam.maxValueKey)
  double get maxValue;
  @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm;
  @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm;
  @JsonKey(name: CreateAutoVerbalParam.areaKey)
  double get area;
  @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength;
  @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth;
  @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
  double get landlength;
  @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
  double get landwidth;
  @JsonKey(name: CreateAutoVerbalParam.bedKey)
  int? get bed;
  @JsonKey(name: CreateAutoVerbalParam.bathKey)
  int? get bath;
  @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
  int? get livingroom;
  @JsonKey(name: CreateAutoVerbalParam.floorKey)
  int? get floor;
  @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId;
  @JsonKey(name: CreateAutoVerbalParam.provinceIdKey)
  int get provinceId;
  @JsonKey(name: CreateAutoVerbalParam.roadIdKey)
  int? get roadId;
  @JsonKey(name: CreateAutoVerbalParam.bankIdKey)
  int? get bankId;
  @JsonKey(name: CreateAutoVerbalParam.userIdKey)
  String get userId;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAutoVerbalParamCopyWith<CreateAutoVerbalParam> get copyWith =>
      _$CreateAutoVerbalParamCopyWithImpl<CreateAutoVerbalParam>(
          this as CreateAutoVerbalParam, _$identity);

  /// Serializes this CreateAutoVerbalParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAutoVerbalParam &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.roadId, roadId) || other.roadId == roadId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyTypeId,
        provinceId,
        roadId,
        bankId,
        userId
      ]);

  @override
  String toString() {
    return 'CreateAutoVerbalParam(image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $CreateAutoVerbalParamCopyWith<$Res> {
  factory $CreateAutoVerbalParamCopyWith(CreateAutoVerbalParam value,
          $Res Function(CreateAutoVerbalParam) _then) =
      _$CreateAutoVerbalParamCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
      double? buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
      double? buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
      int propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) int? bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) String userId});
}

/// @nodoc
class _$CreateAutoVerbalParamCopyWithImpl<$Res>
    implements $CreateAutoVerbalParamCopyWith<$Res> {
  _$CreateAutoVerbalParamCopyWithImpl(this._self, this._then);

  final CreateAutoVerbalParam _self;
  final $Res Function(CreateAutoVerbalParam) _then;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? roadId = freezed,
    Object? bankId = freezed,
    Object? userId = null,
  }) {
    return _then(_self.copyWith(
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _self.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _self.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CreateAutoVerbalParam extends CreateAutoVerbalParam {
  const _CreateAutoVerbalParam(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey)
      required final List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
      required this.bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) required this.latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
      required this.longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
      required this.ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
      required this.ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
      required this.bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
      required this.bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) required this.minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) required this.maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
      required this.minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
      required this.maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) required this.area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
      required this.buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
      required this.buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
      required this.landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
      required this.landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) required this.bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) required this.bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
      required this.livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) required this.floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
      required this.propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey)
      required this.provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) required this.roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) required this.bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) required this.userId})
      : _image = image,
        super._();
  factory _CreateAutoVerbalParam.fromJson(Map<String, dynamic> json) =>
      _$CreateAutoVerbalParamFromJson(json);

  final List<String> _image;
  @override
  @JsonKey(name: CreateAutoVerbalParam.imageKey)
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
  final String? bankBranch;
  @override
  @JsonKey(name: CreateAutoVerbalParam.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
  final String ownerName;
  @override
  @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
  final String ownerPhone;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
  final String? bankOfficerName;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
  final String? bankOfficerPhone;
  @override
  @JsonKey(name: CreateAutoVerbalParam.minValueKey)
  final double minValue;
  @override
  @JsonKey(name: CreateAutoVerbalParam.maxValueKey)
  final double maxValue;
  @override
  @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
  final double minValueSqm;
  @override
  @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
  final double maxValueSqm;
  @override
  @JsonKey(name: CreateAutoVerbalParam.areaKey)
  final double area;
  @override
  @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
  final double? buildinglength;
  @override
  @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
  final double? buildingwidth;
  @override
  @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
  final double landlength;
  @override
  @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
  final double landwidth;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bedKey)
  final int? bed;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bathKey)
  final int? bath;
  @override
  @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
  final int? livingroom;
  @override
  @JsonKey(name: CreateAutoVerbalParam.floorKey)
  final int? floor;
  @override
  @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
  final int propertyTypeId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.provinceIdKey)
  final int provinceId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.roadIdKey)
  final int? roadId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankIdKey)
  final int? bankId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.userIdKey)
  final String userId;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAutoVerbalParamCopyWith<_CreateAutoVerbalParam> get copyWith =>
      __$CreateAutoVerbalParamCopyWithImpl<_CreateAutoVerbalParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAutoVerbalParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAutoVerbalParam &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.roadId, roadId) || other.roadId == roadId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyTypeId,
        provinceId,
        roadId,
        bankId,
        userId
      ]);

  @override
  String toString() {
    return 'CreateAutoVerbalParam(image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$CreateAutoVerbalParamCopyWith<$Res>
    implements $CreateAutoVerbalParamCopyWith<$Res> {
  factory _$CreateAutoVerbalParamCopyWith(_CreateAutoVerbalParam value,
          $Res Function(_CreateAutoVerbalParam) _then) =
      __$CreateAutoVerbalParamCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
      double? buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
      double? buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
      int propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) int? bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) String userId});
}

/// @nodoc
class __$CreateAutoVerbalParamCopyWithImpl<$Res>
    implements _$CreateAutoVerbalParamCopyWith<$Res> {
  __$CreateAutoVerbalParamCopyWithImpl(this._self, this._then);

  final _CreateAutoVerbalParam _self;
  final $Res Function(_CreateAutoVerbalParam) _then;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? roadId = freezed,
    Object? bankId = freezed,
    Object? userId = null,
  }) {
    return _then(_CreateAutoVerbalParam(
      image: null == image
          ? _self._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _self.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _self.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$UpdateAutoVerbalParam {
  @JsonKey(name: UpdateAutoVerbalParam.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @JsonKey(name: UpdateAutoVerbalParam.imageKey)
  List<String> get image;
  @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
  String? get bankBranch;
  @JsonKey(name: UpdateAutoVerbalParam.latitudeKey)
  double get latitude;
  @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
  double get longitude;
  @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
  String get ownerName;
  @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone;
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName;
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
  DateTime get createdAt;
  @JsonKey(name: UpdateAutoVerbalParam.minValueKey)
  double get minValue;
  @JsonKey(name: UpdateAutoVerbalParam.maxValueKey)
  double get maxValue;
  @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm;
  @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm;
  @JsonKey(name: UpdateAutoVerbalParam.areaKey)
  double get area;
  @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength;
  @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth;
  @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
  double get landlength;
  @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
  double get landwidth;
  @JsonKey(name: UpdateAutoVerbalParam.bedKey)
  int? get bed;
  @JsonKey(name: UpdateAutoVerbalParam.bathKey)
  int? get bath;
  @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
  int? get livingroom;
  @JsonKey(name: UpdateAutoVerbalParam.floorKey)
  int? get floor;
  @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId;
  @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey)
  int get provinceId;
  @JsonKey(name: UpdateAutoVerbalParam.roadIdKey)
  int? get roadId;
  @JsonKey(name: UpdateAutoVerbalParam.bankIdKey)
  int? get bankId;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateAutoVerbalParamCopyWith<UpdateAutoVerbalParam> get copyWith =>
      _$UpdateAutoVerbalParamCopyWithImpl<UpdateAutoVerbalParam>(
          this as UpdateAutoVerbalParam, _$identity);

  /// Serializes this UpdateAutoVerbalParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateAutoVerbalParam &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.roadId, roadId) || other.roadId == roadId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        status,
        const DeepCollectionEquality().hash(image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        createdAt,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyTypeId,
        provinceId,
        roadId,
        bankId
      ]);

  @override
  String toString() {
    return 'UpdateAutoVerbalParam(status: $status, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId)';
  }
}

/// @nodoc
abstract mixin class $UpdateAutoVerbalParamCopyWith<$Res> {
  factory $UpdateAutoVerbalParamCopyWith(UpdateAutoVerbalParam value,
          $Res Function(UpdateAutoVerbalParam) _then) =
      _$UpdateAutoVerbalParamCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
      double? buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
      double? buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
      int propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) int? bankId});
}

/// @nodoc
class _$UpdateAutoVerbalParamCopyWithImpl<$Res>
    implements $UpdateAutoVerbalParamCopyWith<$Res> {
  _$UpdateAutoVerbalParamCopyWithImpl(this._self, this._then);

  final UpdateAutoVerbalParam _self;
  final $Res Function(UpdateAutoVerbalParam) _then;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? roadId = freezed,
    Object? bankId = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _self.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _self.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UpdateAutoVerbalParam extends UpdateAutoVerbalParam {
  const _UpdateAutoVerbalParam(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey) required this.status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey)
      required final List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
      required this.bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) required this.latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
      required this.longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
      required this.ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
      required this.ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
      required this.bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
      required this.bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
      required this.createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) required this.minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) required this.maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
      required this.minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
      required this.maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) required this.area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
      required this.buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
      required this.buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
      required this.landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
      required this.landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) required this.bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) required this.bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
      required this.livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) required this.floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
      required this.propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey)
      required this.provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) required this.roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) required this.bankId})
      : _image = image,
        super._();
  factory _UpdateAutoVerbalParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateAutoVerbalParamFromJson(json);

  @override
  @JsonKey(name: UpdateAutoVerbalParam.statusKey)
  final PropertyAndAutoVerbalStatus status;
  final List<String> _image;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.imageKey)
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
  final String? bankBranch;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
  final String ownerName;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
  final String ownerPhone;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
  final String? bankOfficerName;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
  final String? bankOfficerPhone;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.minValueKey)
  final double minValue;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.maxValueKey)
  final double maxValue;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
  final double minValueSqm;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
  final double maxValueSqm;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.areaKey)
  final double area;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
  final double? buildinglength;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
  final double? buildingwidth;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
  final double landlength;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
  final double landwidth;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bedKey)
  final int? bed;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bathKey)
  final int? bath;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
  final int? livingroom;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.floorKey)
  final int? floor;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
  final int propertyTypeId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey)
  final int provinceId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.roadIdKey)
  final int? roadId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankIdKey)
  final int? bankId;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateAutoVerbalParamCopyWith<_UpdateAutoVerbalParam> get copyWith =>
      __$UpdateAutoVerbalParamCopyWithImpl<_UpdateAutoVerbalParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateAutoVerbalParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAutoVerbalParam &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.roadId, roadId) || other.roadId == roadId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        status,
        const DeepCollectionEquality().hash(_image),
        bankBranch,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        createdAt,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        bed,
        bath,
        livingroom,
        floor,
        propertyTypeId,
        provinceId,
        roadId,
        bankId
      ]);

  @override
  String toString() {
    return 'UpdateAutoVerbalParam(status: $status, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId)';
  }
}

/// @nodoc
abstract mixin class _$UpdateAutoVerbalParamCopyWith<$Res>
    implements $UpdateAutoVerbalParamCopyWith<$Res> {
  factory _$UpdateAutoVerbalParamCopyWith(_UpdateAutoVerbalParam value,
          $Res Function(_UpdateAutoVerbalParam) _then) =
      __$UpdateAutoVerbalParamCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
      String? bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
      String? bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
      double? buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
      double? buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
      int propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) int? bankId});
}

/// @nodoc
class __$UpdateAutoVerbalParamCopyWithImpl<$Res>
    implements _$UpdateAutoVerbalParamCopyWith<$Res> {
  __$UpdateAutoVerbalParamCopyWithImpl(this._self, this._then);

  final _UpdateAutoVerbalParam _self;
  final $Res Function(_UpdateAutoVerbalParam) _then;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? image = null,
    Object? bankBranch = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = null,
    Object? landwidth = null,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? roadId = freezed,
    Object? bankId = freezed,
  }) {
    return _then(_UpdateAutoVerbalParam(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      image: null == image
          ? _self._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _self.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _self.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
