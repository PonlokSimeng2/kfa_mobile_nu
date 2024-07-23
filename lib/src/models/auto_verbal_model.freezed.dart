// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_verbal_model.dart';

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
  @JsonKey(name: AutoVerbalTable.id)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.autoVerbalId)
  String get autoVerbalId => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.image)
  String get image => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
  PropertyTypeModel get propertyType => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: AutoVerbalTable.bankId)
  BankModel? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.latitude)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.longitude)
  double get longitude => throw _privateConstructorUsedError;
  @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey')
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.ownerName)
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.ownerPhone)
  String get ownerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.bankOfficerName)
  String? get bankOfficerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
  String? get bankOfficerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.createdAt)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.approvedAt)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
  UserModel? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.rejectAt)
  DateTime? get rejectAt => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.status)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.rejectReason)
  String? get rejectReason => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
  ProvinceModel get province => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.minValue)
  double get minValue => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.maxValue)
  double get maxValue => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.minValueSqm)
  double get minValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.maxValueSqm)
  double get maxValueSqm => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.area)
  double get area => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.head)
  double get head => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.length)
  double get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoVerbalModelCopyWith<AutoVerbalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoVerbalModelCopyWith<$Res> {
  factory $AutoVerbalModelCopyWith(
          AutoVerbalModel value, $Res Function(AutoVerbalModel) then) =
      _$AutoVerbalModelCopyWithImpl<$Res, AutoVerbalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalTable.id) int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) String image,
      @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: AutoVerbalTable.bankId) BankModel? bank,
      @JsonKey(name: AutoVerbalTable.latitude) double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) double longitude,
      @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey') UserModel? user,
      @JsonKey(name: AutoVerbalTable.ownerName) String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName) String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone) String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.createdAt) DateTime createdAt,
      @JsonKey(name: AutoVerbalTable.approvedAt) DateTime? approvedAt,
      @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
      UserModel? approvedBy,
      @JsonKey(name: AutoVerbalTable.rejectAt) DateTime? rejectAt,
      @JsonKey(name: AutoVerbalTable.status) String? status,
      @JsonKey(name: AutoVerbalTable.rejectReason) String? rejectReason,
      @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
      ProvinceModel province,
      @JsonKey(name: AutoVerbalTable.minValue) double minValue,
      @JsonKey(name: AutoVerbalTable.maxValue) double maxValue,
      @JsonKey(name: AutoVerbalTable.minValueSqm) double minValueSqm,
      @JsonKey(name: AutoVerbalTable.maxValueSqm) double maxValueSqm,
      @JsonKey(name: AutoVerbalTable.area) double area,
      @JsonKey(name: AutoVerbalTable.head) double head,
      @JsonKey(name: AutoVerbalTable.length) double length});

  $PropertyTypeModelCopyWith<$Res> get propertyType;
  $BankModelCopyWith<$Res>? get bank;
  $UserModelCopyWith<$Res>? get user;
  $UserModelCopyWith<$Res>? get approvedBy;
  $ProvinceModelCopyWith<$Res> get province;
}

/// @nodoc
class _$AutoVerbalModelCopyWithImpl<$Res, $Val extends AutoVerbalModel>
    implements $AutoVerbalModelCopyWith<$Res> {
  _$AutoVerbalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoVerbalId = null,
    Object? image = null,
    Object? propertyType = null,
    Object? bank = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? user = freezed,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectAt = freezed,
    Object? status = freezed,
    Object? rejectReason = freezed,
    Object? province = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? head = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalId: null == autoVerbalId
          ? _value.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rejectAt: freezed == rejectAt
          ? _value.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
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
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res> get propertyType {
    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

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

  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res> get province {
    return $ProvinceModelCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoVerbalModelImplCopyWith<$Res>
    implements $AutoVerbalModelCopyWith<$Res> {
  factory _$$AutoVerbalModelImplCopyWith(_$AutoVerbalModelImpl value,
          $Res Function(_$AutoVerbalModelImpl) then) =
      __$$AutoVerbalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AutoVerbalTable.id) int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) String image,
      @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: AutoVerbalTable.bankId) BankModel? bank,
      @JsonKey(name: AutoVerbalTable.latitude) double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) double longitude,
      @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey') UserModel? user,
      @JsonKey(name: AutoVerbalTable.ownerName) String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName) String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone) String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.createdAt) DateTime createdAt,
      @JsonKey(name: AutoVerbalTable.approvedAt) DateTime? approvedAt,
      @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
      UserModel? approvedBy,
      @JsonKey(name: AutoVerbalTable.rejectAt) DateTime? rejectAt,
      @JsonKey(name: AutoVerbalTable.status) String? status,
      @JsonKey(name: AutoVerbalTable.rejectReason) String? rejectReason,
      @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
      ProvinceModel province,
      @JsonKey(name: AutoVerbalTable.minValue) double minValue,
      @JsonKey(name: AutoVerbalTable.maxValue) double maxValue,
      @JsonKey(name: AutoVerbalTable.minValueSqm) double minValueSqm,
      @JsonKey(name: AutoVerbalTable.maxValueSqm) double maxValueSqm,
      @JsonKey(name: AutoVerbalTable.area) double area,
      @JsonKey(name: AutoVerbalTable.head) double head,
      @JsonKey(name: AutoVerbalTable.length) double length});

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
}

/// @nodoc
class __$$AutoVerbalModelImplCopyWithImpl<$Res>
    extends _$AutoVerbalModelCopyWithImpl<$Res, _$AutoVerbalModelImpl>
    implements _$$AutoVerbalModelImplCopyWith<$Res> {
  __$$AutoVerbalModelImplCopyWithImpl(
      _$AutoVerbalModelImpl _value, $Res Function(_$AutoVerbalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoVerbalId = null,
    Object? image = null,
    Object? propertyType = null,
    Object? bank = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? user = freezed,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? createdAt = null,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectAt = freezed,
    Object? status = freezed,
    Object? rejectReason = freezed,
    Object? province = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? area = null,
    Object? head = null,
    Object? length = null,
  }) {
    return _then(_$AutoVerbalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalId: null == autoVerbalId
          ? _value.autoVerbalId
          : autoVerbalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rejectAt: freezed == rejectAt
          ? _value.rejectAt
          : rejectAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
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
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(AutoVerbalTable.table)
class _$AutoVerbalModelImpl extends _AutoVerbalModel {
  _$AutoVerbalModelImpl(
      {@JsonKey(name: AutoVerbalTable.id) required this.id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) required this.autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) required this.image,
      @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
      required this.propertyType,
      @JoinedColumn(foreignKey: AutoVerbalTable.bankId) this.bank,
      @JsonKey(name: AutoVerbalTable.latitude) required this.latitude,
      @JsonKey(name: AutoVerbalTable.longitude) required this.longitude,
      @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey')
      required this.user,
      @JsonKey(name: AutoVerbalTable.ownerName) required this.ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) required this.ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName)
      required this.bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
      required this.bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.createdAt) required this.createdAt,
      @JsonKey(name: AutoVerbalTable.approvedAt) this.approvedAt,
      @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy) this.approvedBy,
      @JsonKey(name: AutoVerbalTable.rejectAt) this.rejectAt,
      @JsonKey(name: AutoVerbalTable.status) this.status,
      @JsonKey(name: AutoVerbalTable.rejectReason) this.rejectReason,
      @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
      required this.province,
      @JsonKey(name: AutoVerbalTable.minValue) required this.minValue,
      @JsonKey(name: AutoVerbalTable.maxValue) required this.maxValue,
      @JsonKey(name: AutoVerbalTable.minValueSqm) required this.minValueSqm,
      @JsonKey(name: AutoVerbalTable.maxValueSqm) required this.maxValueSqm,
      @JsonKey(name: AutoVerbalTable.area) required this.area,
      @JsonKey(name: AutoVerbalTable.head) required this.head,
      @JsonKey(name: AutoVerbalTable.length) required this.length})
      : super._();

  factory _$AutoVerbalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoVerbalModelImplFromJson(json);

  @override
  @JsonKey(name: AutoVerbalTable.id)
  final int id;
  @override
  @JsonKey(name: AutoVerbalTable.autoVerbalId)
  final String autoVerbalId;
  @override
  @JsonKey(name: AutoVerbalTable.image)
  final String image;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
  final PropertyTypeModel propertyType;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.bankId)
  final BankModel? bank;
  @override
  @JsonKey(name: AutoVerbalTable.latitude)
  final double latitude;
  @override
  @JsonKey(name: AutoVerbalTable.longitude)
  final double longitude;
  @override
  @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey')
  final UserModel? user;
  @override
  @JsonKey(name: AutoVerbalTable.ownerName)
  final String ownerName;
  @override
  @JsonKey(name: AutoVerbalTable.ownerPhone)
  final String ownerPhone;
  @override
  @JsonKey(name: AutoVerbalTable.bankOfficerName)
  final String? bankOfficerName;
  @override
  @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
  final String? bankOfficerPhone;
  @override
  @JsonKey(name: AutoVerbalTable.createdAt)
  final DateTime createdAt;
  @override
  @JsonKey(name: AutoVerbalTable.approvedAt)
  final DateTime? approvedAt;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
  final UserModel? approvedBy;
  @override
  @JsonKey(name: AutoVerbalTable.rejectAt)
  final DateTime? rejectAt;
  @override
  @JsonKey(name: AutoVerbalTable.status)
  final String? status;
  @override
  @JsonKey(name: AutoVerbalTable.rejectReason)
  final String? rejectReason;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
  final ProvinceModel province;
  @override
  @JsonKey(name: AutoVerbalTable.minValue)
  final double minValue;
  @override
  @JsonKey(name: AutoVerbalTable.maxValue)
  final double maxValue;
  @override
  @JsonKey(name: AutoVerbalTable.minValueSqm)
  final double minValueSqm;
  @override
  @JsonKey(name: AutoVerbalTable.maxValueSqm)
  final double maxValueSqm;
  @override
  @JsonKey(name: AutoVerbalTable.area)
  final double area;
  @override
  @JsonKey(name: AutoVerbalTable.head)
  final double head;
  @override
  @JsonKey(name: AutoVerbalTable.length)
  final double length;

  @override
  String toString() {
    return 'AutoVerbalModel(id: $id, autoVerbalId: $autoVerbalId, image: $image, propertyType: $propertyType, bank: $bank, latitude: $latitude, longitude: $longitude, user: $user, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, createdAt: $createdAt, approvedAt: $approvedAt, approvedBy: $approvedBy, rejectAt: $rejectAt, status: $status, rejectReason: $rejectReason, province: $province, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, area: $area, head: $head, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoVerbalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.autoVerbalId, autoVerbalId) ||
                other.autoVerbalId == autoVerbalId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.user, user) || other.user == user) &&
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
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectAt, rejectAt) ||
                other.rejectAt == rejectAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        autoVerbalId,
        image,
        propertyType,
        bank,
        latitude,
        longitude,
        user,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        createdAt,
        approvedAt,
        approvedBy,
        rejectAt,
        status,
        rejectReason,
        province,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        area,
        head,
        length
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      __$$AutoVerbalModelImplCopyWithImpl<_$AutoVerbalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoVerbalModelImplToJson(
      this,
    );
  }
}

abstract class _AutoVerbalModel extends AutoVerbalModel {
  factory _AutoVerbalModel(
      {@JsonKey(name: AutoVerbalTable.id) required final int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId)
      required final String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) required final String image,
      @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
      required final PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: AutoVerbalTable.bankId) final BankModel? bank,
      @JsonKey(name: AutoVerbalTable.latitude) required final double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) required final double longitude,
      @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey')
      required final UserModel? user,
      @JsonKey(name: AutoVerbalTable.ownerName) required final String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone)
      required final String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName)
      required final String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
      required final String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.createdAt)
      required final DateTime createdAt,
      @JsonKey(name: AutoVerbalTable.approvedAt) final DateTime? approvedAt,
      @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
      final UserModel? approvedBy,
      @JsonKey(name: AutoVerbalTable.rejectAt) final DateTime? rejectAt,
      @JsonKey(name: AutoVerbalTable.status) final String? status,
      @JsonKey(name: AutoVerbalTable.rejectReason) final String? rejectReason,
      @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
      required final ProvinceModel province,
      @JsonKey(name: AutoVerbalTable.minValue) required final double minValue,
      @JsonKey(name: AutoVerbalTable.maxValue) required final double maxValue,
      @JsonKey(name: AutoVerbalTable.minValueSqm)
      required final double minValueSqm,
      @JsonKey(name: AutoVerbalTable.maxValueSqm)
      required final double maxValueSqm,
      @JsonKey(name: AutoVerbalTable.area) required final double area,
      @JsonKey(name: AutoVerbalTable.head) required final double head,
      @JsonKey(name: AutoVerbalTable.length)
      required final double length}) = _$AutoVerbalModelImpl;
  _AutoVerbalModel._() : super._();

  factory _AutoVerbalModel.fromJson(Map<String, dynamic> json) =
      _$AutoVerbalModelImpl.fromJson;

  @override
  @JsonKey(name: AutoVerbalTable.id)
  int get id;
  @override
  @JsonKey(name: AutoVerbalTable.autoVerbalId)
  String get autoVerbalId;
  @override
  @JsonKey(name: AutoVerbalTable.image)
  String get image;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.propertyTypeId)
  PropertyTypeModel get propertyType;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.bankId)
  BankModel? get bank;
  @override
  @JsonKey(name: AutoVerbalTable.latitude)
  double get latitude;
  @override
  @JsonKey(name: AutoVerbalTable.longitude)
  double get longitude;
  @override
  @JoinedColumn(candidateKey: 'auto_verbals_user_id_fkey')
  UserModel? get user;
  @override
  @JsonKey(name: AutoVerbalTable.ownerName)
  String get ownerName;
  @override
  @JsonKey(name: AutoVerbalTable.ownerPhone)
  String get ownerPhone;
  @override
  @JsonKey(name: AutoVerbalTable.bankOfficerName)
  String? get bankOfficerName;
  @override
  @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
  String? get bankOfficerPhone;
  @override
  @JsonKey(name: AutoVerbalTable.createdAt)
  DateTime get createdAt;
  @override
  @JsonKey(name: AutoVerbalTable.approvedAt)
  DateTime? get approvedAt;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.approvedBy)
  UserModel? get approvedBy;
  @override
  @JsonKey(name: AutoVerbalTable.rejectAt)
  DateTime? get rejectAt;
  @override
  @JsonKey(name: AutoVerbalTable.status)
  String? get status;
  @override
  @JsonKey(name: AutoVerbalTable.rejectReason)
  String? get rejectReason;
  @override
  @JoinedColumn(foreignKey: AutoVerbalTable.provinceId)
  ProvinceModel get province;
  @override
  @JsonKey(name: AutoVerbalTable.minValue)
  double get minValue;
  @override
  @JsonKey(name: AutoVerbalTable.maxValue)
  double get maxValue;
  @override
  @JsonKey(name: AutoVerbalTable.minValueSqm)
  double get minValueSqm;
  @override
  @JsonKey(name: AutoVerbalTable.maxValueSqm)
  double get maxValueSqm;
  @override
  @JsonKey(name: AutoVerbalTable.area)
  double get area;
  @override
  @JsonKey(name: AutoVerbalTable.head)
  double get head;
  @override
  @JsonKey(name: AutoVerbalTable.length)
  double get length;
  @override
  @JsonKey(ignore: true)
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
