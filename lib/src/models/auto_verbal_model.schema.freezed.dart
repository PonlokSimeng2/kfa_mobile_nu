// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_verbal_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoVerbalModel _$AutoVerbalModelFromJson(Map<String, dynamic> json) {
  return _AutoVerbalModel.fromJson(json);
}

/// @nodoc
mixin _$AutoVerbalModel {
  @JsonKey(name: AutoVerbalModel.idKey)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.statusKey)
  PropertyAndAutoVerbalStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
  String get autoVerbalId => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.imageKey)
  List<String> get image => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.bankBranchKey)
  String? get bankBranch => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.ownerNameKey)
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.ownerPhoneKey)
  String get ownerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
  String? get bankOfficerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
  String? get bankOfficerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.approvedAtKey)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.rejectAtKey)
  DateTime? get rejectAt => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.rejectReasonKey)
  String? get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.minValueKey)
  double get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.maxValueKey)
  double get maxValue => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.minValueSqmKey)
  double get minValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.maxValueSqmKey)
  double get maxValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.areaKey)
  double get area => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.buildinglengthKey)
  double? get buildinglength => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.buildingwidthKey)
  double? get buildingwidth => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.landlengthKey)
  double get landlength => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.landwidthKey)
  double get landwidth => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.bedKey)
  int? get bed => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.bathKey)
  int? get bath => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.livingroomKey)
  int? get livingroom => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalModel.floorKey)
  int? get floor => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.propertyTypeKey)
  PropertyTypeModel get propertyType => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.bankKey)
  BankModel? get bank => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
  @JsonKey(name: AutoVerbalModel.userKey)
  UserModel? get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.approvedByKey)
  UserModel? get approvedBy => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.provinceKey)
  ProvinceModel get province => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "road_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.roadKey)
  RoadModel? get road => throw _privateConstructorUsedError;

  /// Serializes this AutoVerbalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoVerbalModelCopyWith<AutoVerbalModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoVerbalModelCopyWith<$Res> {
  factory $AutoVerbalModelCopyWith(AutoVerbalModel value, $Res Function(AutoVerbalModel) then) =
      _$AutoVerbalModelCopyWithImpl<$Res, AutoVerbalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalModel.idKey) int id,
      @JsonKey(name: AutoVerbalModel.statusKey) PropertyAndAutoVerbalStatus status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) String autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) String? bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) double latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) double longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) String ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey) String? bankOfficerPhone,
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
class _$AutoVerbalModelCopyWithImpl<$Res, $Val extends AutoVerbalModel>
    implements $AutoVerbalModelCopyWith<$Res> {
  _$AutoVerbalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      autoVerbalId: null == autoVerbalId
          ? _value.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectAt: freezed == rejectAt
          ? _value.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
    ) as $Val);
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res> get propertyType {
    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res> get province {
    return $ProvinceModelCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_value.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_value.road!, (value) {
      return _then(_value.copyWith(road: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoVerbalModelImplCopyWith<$Res> implements $AutoVerbalModelCopyWith<$Res> {
  factory _$$AutoVerbalModelImplCopyWith(
          _$AutoVerbalModelImpl value, $Res Function(_$AutoVerbalModelImpl) then) =
      __$$AutoVerbalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalModel.idKey) int id,
      @JsonKey(name: AutoVerbalModel.statusKey) PropertyAndAutoVerbalStatus status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) String autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) String? bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) double latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) double longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) String ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey) String? bankOfficerPhone,
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
class __$$AutoVerbalModelImplCopyWithImpl<$Res>
    extends _$AutoVerbalModelCopyWithImpl<$Res, _$AutoVerbalModelImpl>
    implements _$$AutoVerbalModelImplCopyWith<$Res> {
  __$$AutoVerbalModelImplCopyWithImpl(
      _$AutoVerbalModelImpl _value, $Res Function(_$AutoVerbalModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$AutoVerbalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      autoVerbalId: null == autoVerbalId
          ? _value.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectAt: freezed == rejectAt
          ? _value.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
    ));
  }
}

/// @nodoc

@TableModel(AutoVerbalModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$AutoVerbalModelImpl extends _AutoVerbalModel {
  const _$AutoVerbalModelImpl(
      {@JsonKey(name: AutoVerbalModel.idKey) required this.id,
      @JsonKey(name: AutoVerbalModel.statusKey) required this.status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) required this.autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) required final List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) required this.bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) required this.latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) required this.longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) required this.ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) required this.ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey) required this.bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey) required this.bankOfficerPhone,
      @JsonKey(name: AutoVerbalModel.createdAtKey) required this.createdAt,
      @JsonKey(name: AutoVerbalModel.approvedAtKey) required this.approvedAt,
      @JsonKey(name: AutoVerbalModel.rejectAtKey) required this.rejectAt,
      @JsonKey(name: AutoVerbalModel.rejectReasonKey) required this.rejectReason,
      @JsonKey(name: AutoVerbalModel.minValueKey) required this.minValue,
      @JsonKey(name: AutoVerbalModel.maxValueKey) required this.maxValue,
      @JsonKey(name: AutoVerbalModel.minValueSqmKey) required this.minValueSqm,
      @JsonKey(name: AutoVerbalModel.maxValueSqmKey) required this.maxValueSqm,
      @JsonKey(name: AutoVerbalModel.areaKey) required this.area,
      @JsonKey(name: AutoVerbalModel.buildinglengthKey) required this.buildinglength,
      @JsonKey(name: AutoVerbalModel.buildingwidthKey) required this.buildingwidth,
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

  factory _$AutoVerbalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoVerbalModelImplFromJson(json);

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

  @override
  String toString() {
    return 'AutoVerbalModel(id: $id, status: $status, autoVerbalId: $autoVerbalId, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, approvedAt: $approvedAt, rejectAt: $rejectAt, rejectReason: $rejectReason, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyType: $propertyType, bank: $bank, user: $user, approvedBy: $approvedBy, province: $province, road: $road)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoVerbalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.autoVerbalId, autoVerbalId) || other.autoVerbalId == autoVerbalId) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) || other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) || other.latitude == latitude) &&
            (identical(other.longitude, longitude) || other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) || other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) || other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt) &&
            (identical(other.rejectAt, rejectAt) || other.rejectAt == rejectAt) &&
            (identical(other.rejectReason, rejectReason) || other.rejectReason == rejectReason) &&
            (identical(other.minValue, minValue) || other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) || other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) || other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) || other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) || other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) || other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) || other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyType, propertyType) || other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy) &&
            (identical(other.province, province) || other.province == province) &&
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

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      __$$AutoVerbalModelImplCopyWithImpl<_$AutoVerbalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoVerbalModelImplToJson(
      this,
    );
  }
}

abstract class _AutoVerbalModel extends AutoVerbalModel {
  const factory _AutoVerbalModel(
      {@JsonKey(name: AutoVerbalModel.idKey) required final int id,
      @JsonKey(name: AutoVerbalModel.statusKey) required final PropertyAndAutoVerbalStatus status,
      @JsonKey(name: AutoVerbalModel.autoVerbalIdKey) required final String autoVerbalId,
      @JsonKey(name: AutoVerbalModel.imageKey) required final List<String> image,
      @JsonKey(name: AutoVerbalModel.bankBranchKey) required final String? bankBranch,
      @JsonKey(name: AutoVerbalModel.latitudeKey) required final double latitude,
      @JsonKey(name: AutoVerbalModel.longitudeKey) required final double longitude,
      @JsonKey(name: AutoVerbalModel.ownerNameKey) required final String ownerName,
      @JsonKey(name: AutoVerbalModel.ownerPhoneKey) required final String ownerPhone,
      @JsonKey(name: AutoVerbalModel.bankOfficerNameKey) required final String? bankOfficerName,
      @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey) required final String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalModel.createdAtKey) required final DateTime createdAt,
      @JsonKey(name: AutoVerbalModel.approvedAtKey) required final DateTime? approvedAt,
      @JsonKey(name: AutoVerbalModel.rejectAtKey) required final DateTime? rejectAt,
      @JsonKey(name: AutoVerbalModel.rejectReasonKey) required final String? rejectReason,
      @JsonKey(name: AutoVerbalModel.minValueKey) required final double minValue,
      @JsonKey(name: AutoVerbalModel.maxValueKey) required final double maxValue,
      @JsonKey(name: AutoVerbalModel.minValueSqmKey) required final double minValueSqm,
      @JsonKey(name: AutoVerbalModel.maxValueSqmKey) required final double maxValueSqm,
      @JsonKey(name: AutoVerbalModel.areaKey) required final double area,
      @JsonKey(name: AutoVerbalModel.buildinglengthKey) required final double? buildinglength,
      @JsonKey(name: AutoVerbalModel.buildingwidthKey) required final double? buildingwidth,
      @JsonKey(name: AutoVerbalModel.landlengthKey) required final double landlength,
      @JsonKey(name: AutoVerbalModel.landwidthKey) required final double landwidth,
      @JsonKey(name: AutoVerbalModel.bedKey) required final int? bed,
      @JsonKey(name: AutoVerbalModel.bathKey) required final int? bath,
      @JsonKey(name: AutoVerbalModel.livingroomKey) required final int? livingroom,
      @JsonKey(name: AutoVerbalModel.floorKey) required final int? floor,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.propertyTypeKey)
      required final PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.bankKey)
      required final BankModel? bank,
      @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
      @JsonKey(name: AutoVerbalModel.userKey)
      required final UserModel? user,
      @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.approvedByKey)
      required final UserModel? approvedBy,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.provinceKey)
      required final ProvinceModel province,
      @JoinedColumn(foreignKey: "road_id", candidateKey: null)
      @JsonKey(name: AutoVerbalModel.roadKey)
      required final RoadModel? road}) = _$AutoVerbalModelImpl;
  const _AutoVerbalModel._() : super._();

  factory _AutoVerbalModel.fromJson(Map<String, dynamic> json) = _$AutoVerbalModelImpl.fromJson;

  @override
  @JsonKey(name: AutoVerbalModel.idKey)
  int get id;
  @override
  @JsonKey(name: AutoVerbalModel.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @override
  @JsonKey(name: AutoVerbalModel.autoVerbalIdKey)
  String get autoVerbalId;
  @override
  @JsonKey(name: AutoVerbalModel.imageKey)
  List<String> get image;
  @override
  @JsonKey(name: AutoVerbalModel.bankBranchKey)
  String? get bankBranch;
  @override
  @JsonKey(name: AutoVerbalModel.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: AutoVerbalModel.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: AutoVerbalModel.ownerNameKey)
  String get ownerName;
  @override
  @JsonKey(name: AutoVerbalModel.ownerPhoneKey)
  String get ownerPhone;
  @override
  @JsonKey(name: AutoVerbalModel.bankOfficerNameKey)
  String? get bankOfficerName;
  @override
  @JsonKey(name: AutoVerbalModel.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @override
  @JsonKey(name: AutoVerbalModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: AutoVerbalModel.approvedAtKey)
  DateTime? get approvedAt;
  @override
  @JsonKey(name: AutoVerbalModel.rejectAtKey)
  DateTime? get rejectAt;
  @override
  @JsonKey(name: AutoVerbalModel.rejectReasonKey)
  String? get rejectReason;
  @override
  @JsonKey(name: AutoVerbalModel.minValueKey)
  double get minValue;
  @override
  @JsonKey(name: AutoVerbalModel.maxValueKey)
  double get maxValue;
  @override
  @JsonKey(name: AutoVerbalModel.minValueSqmKey)
  double get minValueSqm;
  @override
  @JsonKey(name: AutoVerbalModel.maxValueSqmKey)
  double get maxValueSqm;
  @override
  @JsonKey(name: AutoVerbalModel.areaKey)
  double get area;
  @override
  @JsonKey(name: AutoVerbalModel.buildinglengthKey)
  double? get buildinglength;
  @override
  @JsonKey(name: AutoVerbalModel.buildingwidthKey)
  double? get buildingwidth;
  @override
  @JsonKey(name: AutoVerbalModel.landlengthKey)
  double get landlength;
  @override
  @JsonKey(name: AutoVerbalModel.landwidthKey)
  double get landwidth;
  @override
  @JsonKey(name: AutoVerbalModel.bedKey)
  int? get bed;
  @override
  @JsonKey(name: AutoVerbalModel.bathKey)
  int? get bath;
  @override
  @JsonKey(name: AutoVerbalModel.livingroomKey)
  int? get livingroom;
  @override
  @JsonKey(name: AutoVerbalModel.floorKey)
  int? get floor;
  @override
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.propertyTypeKey)
  PropertyTypeModel get propertyType;
  @override
  @JoinedColumn(foreignKey: "bank_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.bankKey)
  BankModel? get bank;
  @override
  @JoinedColumn(foreignKey: null, candidateKey: "auto_verbals_user_id_fkey")
  @JsonKey(name: AutoVerbalModel.userKey)
  UserModel? get user;
  @override
  @JoinedColumn(foreignKey: "approved_by", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.approvedByKey)
  UserModel? get approvedBy;
  @override
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.provinceKey)
  ProvinceModel get province;
  @override
  @JoinedColumn(foreignKey: "road_id", candidateKey: null)
  @JsonKey(name: AutoVerbalModel.roadKey)
  RoadModel? get road;

  /// Create a copy of AutoVerbalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAutoVerbalParam _$CreateAutoVerbalParamFromJson(Map<String, dynamic> json) {
  return _CreateAutoVerbalParam.fromJson(json);
}

/// @nodoc
mixin _$CreateAutoVerbalParam {
  @JsonKey(name: CreateAutoVerbalParam.imageKey)
  List<String> get image => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
  String? get bankBranch => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.minValueKey)
  double get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.maxValueKey)
  double get maxValue => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.areaKey)
  double get area => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
  double get landlength => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
  double get landwidth => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bedKey)
  int? get bed => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bathKey)
  int? get bath => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
  int? get livingroom => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.floorKey)
  int? get floor => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.provinceIdKey)
  int get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.roadIdKey)
  int? get roadId => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.bankIdKey)
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: CreateAutoVerbalParam.userIdKey)
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateAutoVerbalParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAutoVerbalParamCopyWith<CreateAutoVerbalParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAutoVerbalParamCopyWith<$Res> {
  factory $CreateAutoVerbalParamCopyWith(
          CreateAutoVerbalParam value, $Res Function(CreateAutoVerbalParam) then) =
      _$CreateAutoVerbalParamCopyWithImpl<$Res, CreateAutoVerbalParam>;
  @useResult
  $Res call(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey) String? bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey) double? buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) int? bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) String userId});
}

/// @nodoc
class _$CreateAutoVerbalParamCopyWithImpl<$Res, $Val extends CreateAutoVerbalParam>
    implements $CreateAutoVerbalParamCopyWith<$Res> {
  _$CreateAutoVerbalParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _value.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAutoVerbalParamImplCopyWith<$Res>
    implements $CreateAutoVerbalParamCopyWith<$Res> {
  factory _$$CreateAutoVerbalParamImplCopyWith(
          _$CreateAutoVerbalParamImpl value, $Res Function(_$CreateAutoVerbalParamImpl) then) =
      __$$CreateAutoVerbalParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey) String? bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey) double? buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) int? bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) String userId});
}

/// @nodoc
class __$$CreateAutoVerbalParamImplCopyWithImpl<$Res>
    extends _$CreateAutoVerbalParamCopyWithImpl<$Res, _$CreateAutoVerbalParamImpl>
    implements _$$CreateAutoVerbalParamImplCopyWith<$Res> {
  __$$CreateAutoVerbalParamImplCopyWithImpl(
      _$CreateAutoVerbalParamImpl _value, $Res Function(_$CreateAutoVerbalParamImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreateAutoVerbalParamImpl(
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _value.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateAutoVerbalParamImpl extends _CreateAutoVerbalParam {
  const _$CreateAutoVerbalParamImpl(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) required final List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) required this.bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) required this.latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) required this.longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) required this.ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) required this.ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey) required this.bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey) required this.bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) required this.minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) required this.maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) required this.minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) required this.maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) required this.area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey) required this.buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey) required this.buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) required this.landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) required this.landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) required this.bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) required this.bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) required this.livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) required this.floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey) required this.propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) required this.provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) required this.roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) required this.bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey) required this.userId})
      : _image = image,
        super._();

  factory _$CreateAutoVerbalParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAutoVerbalParamImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateAutoVerbalParam(image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAutoVerbalParamImpl &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) || other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) || other.latitude == latitude) &&
            (identical(other.longitude, longitude) || other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) || other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) || other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) || other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) || other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) || other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) || other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) || other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) || other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) || other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) || other.provinceId == provinceId) &&
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

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAutoVerbalParamImplCopyWith<_$CreateAutoVerbalParamImpl> get copyWith =>
      __$$CreateAutoVerbalParamImplCopyWithImpl<_$CreateAutoVerbalParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAutoVerbalParamImplToJson(
      this,
    );
  }
}

abstract class _CreateAutoVerbalParam extends CreateAutoVerbalParam {
  const factory _CreateAutoVerbalParam(
      {@JsonKey(name: CreateAutoVerbalParam.imageKey) required final List<String> image,
      @JsonKey(name: CreateAutoVerbalParam.bankBranchKey) required final String? bankBranch,
      @JsonKey(name: CreateAutoVerbalParam.latitudeKey) required final double latitude,
      @JsonKey(name: CreateAutoVerbalParam.longitudeKey) required final double longitude,
      @JsonKey(name: CreateAutoVerbalParam.ownerNameKey) required final String ownerName,
      @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey) required final String ownerPhone,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
      required final String? bankOfficerName,
      @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
      required final String? bankOfficerPhone,
      @JsonKey(name: CreateAutoVerbalParam.minValueKey) required final double minValue,
      @JsonKey(name: CreateAutoVerbalParam.maxValueKey) required final double maxValue,
      @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey) required final double minValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey) required final double maxValueSqm,
      @JsonKey(name: CreateAutoVerbalParam.areaKey) required final double area,
      @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey) required final double? buildinglength,
      @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey) required final double? buildingwidth,
      @JsonKey(name: CreateAutoVerbalParam.landlengthKey) required final double landlength,
      @JsonKey(name: CreateAutoVerbalParam.landwidthKey) required final double landwidth,
      @JsonKey(name: CreateAutoVerbalParam.bedKey) required final int? bed,
      @JsonKey(name: CreateAutoVerbalParam.bathKey) required final int? bath,
      @JsonKey(name: CreateAutoVerbalParam.livingroomKey) required final int? livingroom,
      @JsonKey(name: CreateAutoVerbalParam.floorKey) required final int? floor,
      @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey) required final int propertyTypeId,
      @JsonKey(name: CreateAutoVerbalParam.provinceIdKey) required final int provinceId,
      @JsonKey(name: CreateAutoVerbalParam.roadIdKey) required final int? roadId,
      @JsonKey(name: CreateAutoVerbalParam.bankIdKey) required final int? bankId,
      @JsonKey(name: CreateAutoVerbalParam.userIdKey)
      required final String userId}) = _$CreateAutoVerbalParamImpl;
  const _CreateAutoVerbalParam._() : super._();

  factory _CreateAutoVerbalParam.fromJson(Map<String, dynamic> json) =
      _$CreateAutoVerbalParamImpl.fromJson;

  @override
  @JsonKey(name: CreateAutoVerbalParam.imageKey)
  List<String> get image;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankBranchKey)
  String? get bankBranch;
  @override
  @JsonKey(name: CreateAutoVerbalParam.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: CreateAutoVerbalParam.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: CreateAutoVerbalParam.ownerNameKey)
  String get ownerName;
  @override
  @JsonKey(name: CreateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @override
  @JsonKey(name: CreateAutoVerbalParam.minValueKey)
  double get minValue;
  @override
  @JsonKey(name: CreateAutoVerbalParam.maxValueKey)
  double get maxValue;
  @override
  @JsonKey(name: CreateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm;
  @override
  @JsonKey(name: CreateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm;
  @override
  @JsonKey(name: CreateAutoVerbalParam.areaKey)
  double get area;
  @override
  @JsonKey(name: CreateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength;
  @override
  @JsonKey(name: CreateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth;
  @override
  @JsonKey(name: CreateAutoVerbalParam.landlengthKey)
  double get landlength;
  @override
  @JsonKey(name: CreateAutoVerbalParam.landwidthKey)
  double get landwidth;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bedKey)
  int? get bed;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bathKey)
  int? get bath;
  @override
  @JsonKey(name: CreateAutoVerbalParam.livingroomKey)
  int? get livingroom;
  @override
  @JsonKey(name: CreateAutoVerbalParam.floorKey)
  int? get floor;
  @override
  @JsonKey(name: CreateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.provinceIdKey)
  int get provinceId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.roadIdKey)
  int? get roadId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.bankIdKey)
  int? get bankId;
  @override
  @JsonKey(name: CreateAutoVerbalParam.userIdKey)
  String get userId;

  /// Create a copy of CreateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAutoVerbalParamImplCopyWith<_$CreateAutoVerbalParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAutoVerbalParam _$UpdateAutoVerbalParamFromJson(Map<String, dynamic> json) {
  return _UpdateAutoVerbalParam.fromJson(json);
}

/// @nodoc
mixin _$UpdateAutoVerbalParam {
  @JsonKey(name: UpdateAutoVerbalParam.statusKey)
  PropertyAndAutoVerbalStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.imageKey)
  List<String> get image => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
  String? get bankBranch => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.minValueKey)
  double get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.maxValueKey)
  double get maxValue => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.areaKey)
  double get area => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
  double get landlength => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
  double get landwidth => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bedKey)
  int? get bed => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bathKey)
  int? get bath => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
  int? get livingroom => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.floorKey)
  int? get floor => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey)
  int get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.roadIdKey)
  int? get roadId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateAutoVerbalParam.bankIdKey)
  int? get bankId => throw _privateConstructorUsedError;

  /// Serializes this UpdateAutoVerbalParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAutoVerbalParamCopyWith<UpdateAutoVerbalParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAutoVerbalParamCopyWith<$Res> {
  factory $UpdateAutoVerbalParamCopyWith(
          UpdateAutoVerbalParam value, $Res Function(UpdateAutoVerbalParam) then) =
      _$UpdateAutoVerbalParamCopyWithImpl<$Res, UpdateAutoVerbalParam>;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey) PropertyAndAutoVerbalStatus status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey) String? bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey) double? buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) int? bankId});
}

/// @nodoc
class _$UpdateAutoVerbalParamCopyWithImpl<$Res, $Val extends UpdateAutoVerbalParam>
    implements $UpdateAutoVerbalParamCopyWith<$Res> {
  _$UpdateAutoVerbalParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _value.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAutoVerbalParamImplCopyWith<$Res>
    implements $UpdateAutoVerbalParamCopyWith<$Res> {
  factory _$$UpdateAutoVerbalParamImplCopyWith(
          _$UpdateAutoVerbalParamImpl value, $Res Function(_$UpdateAutoVerbalParamImpl) then) =
      __$$UpdateAutoVerbalParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey) PropertyAndAutoVerbalStatus status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) String? bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) double latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) double longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) String ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) String ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey) String? bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey) String? bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) double minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) double maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) double minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) double maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) double area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey) double? buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey) double? buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) double landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) double landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) int? bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) int? bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) int? livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) int? floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) int provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) int? roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) int? bankId});
}

/// @nodoc
class __$$UpdateAutoVerbalParamImplCopyWithImpl<$Res>
    extends _$UpdateAutoVerbalParamCopyWithImpl<$Res, _$UpdateAutoVerbalParamImpl>
    implements _$$UpdateAutoVerbalParamImplCopyWith<$Res> {
  __$$UpdateAutoVerbalParamImplCopyWithImpl(
      _$UpdateAutoVerbalParamImpl _value, $Res Function(_$UpdateAutoVerbalParamImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdateAutoVerbalParamImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: freezed == bankOfficerName
          ? _value.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _value.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _value.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _value.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: freezed == buildinglength
          ? _value.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _value.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: null == landlength
          ? _value.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _value.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _value.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _value.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      roadId: freezed == roadId
          ? _value.roadId
          : roadId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdateAutoVerbalParamImpl extends _UpdateAutoVerbalParam {
  const _$UpdateAutoVerbalParamImpl(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey) required this.status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) required final List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) required this.bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) required this.latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) required this.longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) required this.ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) required this.ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey) required this.bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey) required this.bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) required this.createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) required this.minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) required this.maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) required this.minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) required this.maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) required this.area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey) required this.buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey) required this.buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) required this.landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) required this.landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) required this.bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) required this.bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) required this.livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) required this.floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey) required this.propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) required this.provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) required this.roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey) required this.bankId})
      : _image = image,
        super._();

  factory _$UpdateAutoVerbalParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAutoVerbalParamImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdateAutoVerbalParam(status: $status, image: $image, bankBranch: $bankBranch, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, propertyTypeId: $propertyTypeId, provinceId: $provinceId, roadId: $roadId, bankId: $bankId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAutoVerbalParamImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.bankBranch, bankBranch) || other.bankBranch == bankBranch) &&
            (identical(other.latitude, latitude) || other.latitude == latitude) &&
            (identical(other.longitude, longitude) || other.longitude == longitude) &&
            (identical(other.ownerName, ownerName) || other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) || other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.minValue, minValue) || other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) || other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) || other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) || other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) || other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) || other.landwidth == landwidth) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) || other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) || other.provinceId == provinceId) &&
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

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAutoVerbalParamImplCopyWith<_$UpdateAutoVerbalParamImpl> get copyWith =>
      __$$UpdateAutoVerbalParamImplCopyWithImpl<_$UpdateAutoVerbalParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAutoVerbalParamImplToJson(
      this,
    );
  }
}

abstract class _UpdateAutoVerbalParam extends UpdateAutoVerbalParam {
  const factory _UpdateAutoVerbalParam(
      {@JsonKey(name: UpdateAutoVerbalParam.statusKey)
      required final PropertyAndAutoVerbalStatus status,
      @JsonKey(name: UpdateAutoVerbalParam.imageKey) required final List<String> image,
      @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey) required final String? bankBranch,
      @JsonKey(name: UpdateAutoVerbalParam.latitudeKey) required final double latitude,
      @JsonKey(name: UpdateAutoVerbalParam.longitudeKey) required final double longitude,
      @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey) required final String ownerName,
      @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey) required final String ownerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
      required final String? bankOfficerName,
      @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
      required final String? bankOfficerPhone,
      @JsonKey(name: UpdateAutoVerbalParam.createdAtKey) required final DateTime createdAt,
      @JsonKey(name: UpdateAutoVerbalParam.minValueKey) required final double minValue,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueKey) required final double maxValue,
      @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey) required final double minValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey) required final double maxValueSqm,
      @JsonKey(name: UpdateAutoVerbalParam.areaKey) required final double area,
      @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey) required final double? buildinglength,
      @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey) required final double? buildingwidth,
      @JsonKey(name: UpdateAutoVerbalParam.landlengthKey) required final double landlength,
      @JsonKey(name: UpdateAutoVerbalParam.landwidthKey) required final double landwidth,
      @JsonKey(name: UpdateAutoVerbalParam.bedKey) required final int? bed,
      @JsonKey(name: UpdateAutoVerbalParam.bathKey) required final int? bath,
      @JsonKey(name: UpdateAutoVerbalParam.livingroomKey) required final int? livingroom,
      @JsonKey(name: UpdateAutoVerbalParam.floorKey) required final int? floor,
      @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey) required final int propertyTypeId,
      @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey) required final int provinceId,
      @JsonKey(name: UpdateAutoVerbalParam.roadIdKey) required final int? roadId,
      @JsonKey(name: UpdateAutoVerbalParam.bankIdKey)
      required final int? bankId}) = _$UpdateAutoVerbalParamImpl;
  const _UpdateAutoVerbalParam._() : super._();

  factory _UpdateAutoVerbalParam.fromJson(Map<String, dynamic> json) =
      _$UpdateAutoVerbalParamImpl.fromJson;

  @override
  @JsonKey(name: UpdateAutoVerbalParam.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.imageKey)
  List<String> get image;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankBranchKey)
  String? get bankBranch;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.ownerNameKey)
  String get ownerName;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.ownerPhoneKey)
  String get ownerPhone;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerNameKey)
  String? get bankOfficerName;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankOfficerPhoneKey)
  String? get bankOfficerPhone;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.minValueKey)
  double get minValue;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.maxValueKey)
  double get maxValue;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.minValueSqmKey)
  double get minValueSqm;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.maxValueSqmKey)
  double get maxValueSqm;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.areaKey)
  double get area;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.buildinglengthKey)
  double? get buildinglength;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.buildingwidthKey)
  double? get buildingwidth;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.landlengthKey)
  double get landlength;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.landwidthKey)
  double get landwidth;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bedKey)
  int? get bed;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bathKey)
  int? get bath;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.livingroomKey)
  int? get livingroom;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.floorKey)
  int? get floor;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.propertyTypeIdKey)
  int get propertyTypeId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.provinceIdKey)
  int get provinceId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.roadIdKey)
  int? get roadId;
  @override
  @JsonKey(name: UpdateAutoVerbalParam.bankIdKey)
  int? get bankId;

  /// Create a copy of UpdateAutoVerbalParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAutoVerbalParamImplCopyWith<_$UpdateAutoVerbalParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
