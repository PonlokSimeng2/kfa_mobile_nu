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
  @JsonKey(name: AutoVerbalTable.propertyTypeId)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.bankId)
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.latitude)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.longitude)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.userId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.ownerName)
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.ownerPhone)
  String get ownerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.bankOfficerName)
  String? get bankOfficerName => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
  String? get bankOfficerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.address)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: AutoVerbalTable.createdAt)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_at')
  DateTime get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_at')
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason')
  String? get rejectReason => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: 'user_id')
  UserModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: 'approved_by')
  UserModel get approvedBy => throw _privateConstructorUsedError;

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
<<<<<<< HEAD
      {@JsonKey(name: AutoVerbalTable.id) int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) String image,
      @JsonKey(name: AutoVerbalTable.propertyTypeId) int propertyTypeId,
      @JsonKey(name: AutoVerbalTable.bankId) int? bankId,
      @JsonKey(name: AutoVerbalTable.latitude) double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) double longitude,
      @JsonKey(name: AutoVerbalTable.userId) String userId,
      @JsonKey(name: AutoVerbalTable.ownerName) String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName) String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone) String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.address) String address,
      @JsonKey(name: AutoVerbalTable.createdAt) DateTime createdAt});
=======
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'auto_verbal_id') String autoVerbalId,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'property_type_id') int propertyTypeId,
      @JsonKey(name: 'bank_id') int? bankid,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'owner_name') String ownerName,
      @JsonKey(name: 'owner_phone') String ownerPhone,
      @JsonKey(name: 'bank_officer_name') String? bankOfficerName,
      @JsonKey(name: 'bank_officer_phone') String? bankOfficerPhone,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'approved_at') DateTime approvedAt,
      @JsonKey(name: 'reject_at') DateTime? rejectedAt,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'reject_reason') String? rejectReason,
      @JoinedColumn(foreignKey: 'user_id') UserModel user,
      @JoinedColumn(foreignKey: 'approved_by') UserModel approvedBy});

  $UserModelCopyWith<$Res> get user;
  $UserModelCopyWith<$Res> get approvedBy;
>>>>>>> origin/main
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
    Object? propertyTypeId = null,
    Object? bankId = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? address = null,
    Object? createdAt = null,
    Object? approvedAt = null,
    Object? rejectedAt = freezed,
    Object? status = freezed,
    Object? rejectReason = freezed,
    Object? user = null,
    Object? approvedBy = null,
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
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: null == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      approvedBy: null == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get approvedBy {
    return $UserModelCopyWith<$Res>(_value.approvedBy, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
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
<<<<<<< HEAD
      {@JsonKey(name: AutoVerbalTable.id) int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) String image,
      @JsonKey(name: AutoVerbalTable.propertyTypeId) int propertyTypeId,
      @JsonKey(name: AutoVerbalTable.bankId) int? bankId,
      @JsonKey(name: AutoVerbalTable.latitude) double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) double longitude,
      @JsonKey(name: AutoVerbalTable.userId) String userId,
      @JsonKey(name: AutoVerbalTable.ownerName) String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName) String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone) String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.address) String address,
      @JsonKey(name: AutoVerbalTable.createdAt) DateTime createdAt});
=======
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'auto_verbal_id') String autoVerbalId,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'property_type_id') int propertyTypeId,
      @JsonKey(name: 'bank_id') int? bankid,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'owner_name') String ownerName,
      @JsonKey(name: 'owner_phone') String ownerPhone,
      @JsonKey(name: 'bank_officer_name') String? bankOfficerName,
      @JsonKey(name: 'bank_officer_phone') String? bankOfficerPhone,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'approved_at') DateTime approvedAt,
      @JsonKey(name: 'reject_at') DateTime? rejectedAt,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'reject_reason') String? rejectReason,
      @JoinedColumn(foreignKey: 'user_id') UserModel user,
      @JoinedColumn(foreignKey: 'approved_by') UserModel approvedBy});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $UserModelCopyWith<$Res> get approvedBy;
>>>>>>> origin/main
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
    Object? propertyTypeId = null,
    Object? bankId = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? address = null,
    Object? createdAt = null,
    Object? approvedAt = null,
    Object? rejectedAt = freezed,
    Object? status = freezed,
    Object? rejectReason = freezed,
    Object? user = null,
    Object? approvedBy = null,
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
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      approvedAt: null == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      approvedBy: null == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
<<<<<<< HEAD
@TableModel(AutoVerbalTable.table)
class _$AutoVerbalModelImpl extends _AutoVerbalModel {
  _$AutoVerbalModelImpl(
      {@JsonKey(name: AutoVerbalTable.id) required this.id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId) required this.autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) required this.image,
      @JsonKey(name: AutoVerbalTable.propertyTypeId)
      required this.propertyTypeId,
      @JsonKey(name: AutoVerbalTable.bankId) required this.bankId,
      @JsonKey(name: AutoVerbalTable.latitude) required this.latitude,
      @JsonKey(name: AutoVerbalTable.longitude) required this.longitude,
      @JsonKey(name: AutoVerbalTable.userId) required this.userId,
      @JsonKey(name: AutoVerbalTable.ownerName) required this.ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone) required this.ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName)
      required this.bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
      required this.bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.address) required this.address,
      @JsonKey(name: AutoVerbalTable.createdAt) required this.createdAt})
=======
@TableModel('auto_verbals')
class _$AutoVerbalModelImpl extends _AutoVerbalModel {
  _$AutoVerbalModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'auto_verbal_id') required this.autoVerbalId,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'property_type_id') required this.propertyTypeId,
      @JsonKey(name: 'bank_id') required this.bankid,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'owner_name') required this.ownerName,
      @JsonKey(name: 'owner_phone') required this.ownerPhone,
      @JsonKey(name: 'bank_officer_name') required this.bankOfficerName,
      @JsonKey(name: 'bank_officer_phone') required this.bankOfficerPhone,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'approved_at') required this.approvedAt,
      @JsonKey(name: 'reject_at') required this.rejectedAt,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'reject_reason') required this.rejectReason,
      @JoinedColumn(foreignKey: 'user_id') required this.user,
      @JoinedColumn(foreignKey: 'approved_by') required this.approvedBy})
>>>>>>> origin/main
      : super._();

  factory _$AutoVerbalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoVerbalModelImplFromJson(json);

  @override
<<<<<<< HEAD
  @JsonKey(name: AutoVerbalTable.id)
  final int id;
  @override
  @JsonKey(name: AutoVerbalTable.autoVerbalId)
  final String autoVerbalId;
  @override
  @JsonKey(name: AutoVerbalTable.image)
  final String image;
  @override
  @JsonKey(name: AutoVerbalTable.propertyTypeId)
  final int propertyTypeId;
  @override
  @JsonKey(name: AutoVerbalTable.bankId)
  final int? bankId;
  @override
  @JsonKey(name: AutoVerbalTable.latitude)
  final double latitude;
  @override
  @JsonKey(name: AutoVerbalTable.longitude)
  final double longitude;
  @override
  @JsonKey(name: AutoVerbalTable.userId)
  final String userId;
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
  @JsonKey(name: AutoVerbalTable.address)
  final String address;
  @override
  @JsonKey(name: AutoVerbalTable.createdAt)
=======
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'auto_verbal_id')
  final String autoVerbalId;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'property_type_id')
  final int propertyTypeId;
  @override
  @JsonKey(name: 'bank_id')
  final int? bankid;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'owner_name')
  final String ownerName;
  @override
  @JsonKey(name: 'owner_phone')
  final String ownerPhone;
  @override
  @JsonKey(name: 'bank_officer_name')
  final String? bankOfficerName;
  @override
  @JsonKey(name: 'bank_officer_phone')
  final String? bankOfficerPhone;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'created_at')
>>>>>>> origin/main
  final DateTime createdAt;
  @override
  @JsonKey(name: 'approved_at')
  final DateTime approvedAt;
  @override
  @JsonKey(name: 'reject_at')
  final DateTime? rejectedAt;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'reject_reason')
  final String? rejectReason;
  @override
  @JoinedColumn(foreignKey: 'user_id')
  final UserModel user;
  @override
  @JoinedColumn(foreignKey: 'approved_by')
  final UserModel approvedBy;

  @override
  String toString() {
<<<<<<< HEAD
    return 'AutoVerbalModel(id: $id, autoVerbalId: $autoVerbalId, image: $image, propertyTypeId: $propertyTypeId, bankId: $bankId, latitude: $latitude, longitude: $longitude, userId: $userId, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, address: $address, createdAt: $createdAt)';
=======
    return 'AutoVerbalModel(id: $id, autoVerbalId: $autoVerbalId, image: $image, propertyTypeId: $propertyTypeId, bankid: $bankid, latitude: $latitude, longitude: $longitude, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, address: $address, createdAt: $createdAt, approvedAt: $approvedAt, rejectedAt: $rejectedAt, status: $status, rejectReason: $rejectReason, user: $user, approvedBy: $approvedBy)';
>>>>>>> origin/main
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
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
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
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy));
  }

  @JsonKey(ignore: true)
  @override
<<<<<<< HEAD
  int get hashCode => Object.hash(
      runtimeType,
      id,
      autoVerbalId,
      image,
      propertyTypeId,
      bankId,
      latitude,
      longitude,
      userId,
      ownerName,
      ownerPhone,
      bankOfficerName,
      bankOfficerPhone,
      address,
      createdAt);
=======
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        autoVerbalId,
        image,
        propertyTypeId,
        bankid,
        latitude,
        longitude,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        address,
        createdAt,
        approvedAt,
        rejectedAt,
        status,
        rejectReason,
        user,
        approvedBy
      ]);
>>>>>>> origin/main

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

class _AutoVerbalModel extends AutoVerbalModel {
  factory _AutoVerbalModel(
const (const (<<<<,))<<< HEAD
      {@JsonKey(name: AutoVerbalTable.id) required final int id,
      @JsonKey(name: AutoVerbalTable.autoVerbalId)
      required final String autoVerbalId,
      @JsonKey(name: AutoVerbalTable.image) required final String image,
      @JsonKey(name: AutoVerbalTable.propertyTypeId)
      required final int propertyTypeId,
      @JsonKey(name: AutoVerbalTable.bankId) required final int? bankId,
      @JsonKey(name: AutoVerbalTable.latitude) required final double latitude,
      @JsonKey(name: AutoVerbalTable.longitude) required final double longitude,
      @JsonKey(name: AutoVerbalTable.userId) required final String userId,
      @JsonKey(name: AutoVerbalTable.ownerName) required final String ownerName,
      @JsonKey(name: AutoVerbalTable.ownerPhone)
      required final String ownerPhone,
      @JsonKey(name: AutoVerbalTable.bankOfficerName)
      required final String? bankOfficerName,
      @JsonKey(name: AutoVerbalTable.bankOfficerPhone)
      required final String? bankOfficerPhone,
      @JsonKey(name: AutoVerbalTable.address) required final String address,
      @JsonKey(name: AutoVerbalTable.createdAt)
      required final DateTime createdAt}) = _$AutoVerbalModelImpl;
=======
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'auto_verbal_id') required final String autoVerbalId,
      @JsonKey(name: 'image') required final String image,
      @JsonKey(name: 'property_type_id') required final int propertyTypeId,
      @JsonKey(name: 'bank_id') required final int? bankid,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'owner_name') required final String ownerName,
      @JsonKey(name: 'owner_phone') required final String ownerPhone,
      @JsonKey(name: 'bank_officer_name')
      required final String? bankOfficerName,
      @JsonKey(name: 'bank_officer_phone')
      required final String? bankOfficerPhone,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'approved_at') required final DateTime approvedAt,
      @JsonKey(name: 'reject_at') required final DateTime? rejectedAt,
      @JsonKey(name: 'status') required final String? status,
      @JsonKey(name: 'reject_reason') required final String? rejectReason,
      @JoinedColumn(foreignKey: 'user_id') required final UserModel user,
      @JoinedColumn(foreignKey: 'approved_by')
      required final UserModel approvedBy}) = _$AutoVerbalModelImpl;
>>>>>>> origin/main
  _AutoVerbalModel._() : super._();

  factory _AutoVerbalModel.fromJson(Map<String, dynamic> json) =
      _$AutoVerbalModelImpl.fromJson;

  @override
<<<<<<< HEAD
  @JsonKey(name: AutoVerbalTable.id)
  int get id;
  @override
  @JsonKey(name: AutoVerbalTable.autoVerbalId)
  String get autoVerbalId;
  @override
  @JsonKey(name: AutoVerbalTable.image)
  String get image;
  @override
  @JsonKey(name: AutoVerbalTable.propertyTypeId)
  int get propertyTypeId;
  @override
  @JsonKey(name: AutoVerbalTable.bankId)
  int? get bankId;
  @override
  @JsonKey(name: AutoVerbalTable.latitude)
  double get latitude;
  @override
  @JsonKey(name: AutoVerbalTable.longitude)
  double get longitude;
  @override
  @JsonKey(name: AutoVerbalTable.userId)
  String get userId;
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
  @JsonKey(name: AutoVerbalTable.address)
  String get address;
  @override
  @JsonKey(name: AutoVerbalTable.createdAt)
=======
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'auto_verbal_id')
  String get autoVerbalId;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'property_type_id')
  int get propertyTypeId;
  @override
  @JsonKey(name: 'bank_id')
  int? get bankid;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'owner_name')
  String get ownerName;
  @override
  @JsonKey(name: 'owner_phone')
  String get ownerPhone;
  @override
  @JsonKey(name: 'bank_officer_name')
  String? get bankOfficerName;
  @override
  @JsonKey(name: 'bank_officer_phone')
  String? get bankOfficerPhone;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'created_at')
>>>>>>> origin/main
  DateTime get createdAt;
  @override
  @JsonKey(name: 'approved_at')
  DateTime get approvedAt;
  @override
  @JsonKey(name: 'reject_at')
  DateTime? get rejectedAt;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'reject_reason')
  String? get rejectReason;
  @override
  @JoinedColumn(foreignKey: 'user_id')
  UserModel get user;
  @override
  @JoinedColumn(foreignKey: 'approved_by')
  UserModel get approvedBy;
  @override
  @JsonKey(ignore: true)
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
