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
    Object? userId = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? address = null,
    Object? createdAt = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
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
    Object? userId = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? address = null,
    Object? createdAt = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
  final DateTime createdAt;

  @override
  String toString() {
    return 'AutoVerbalModel(id: $id, autoVerbalId: $autoVerbalId, image: $image, propertyTypeId: $propertyTypeId, bankId: $bankId, latitude: $latitude, longitude: $longitude, userId: $userId, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, address: $address, createdAt: $createdAt)';
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
            (identical(other.userId, userId) || other.userId == userId) &&
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
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
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
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$AutoVerbalModelImplCopyWith<_$AutoVerbalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
