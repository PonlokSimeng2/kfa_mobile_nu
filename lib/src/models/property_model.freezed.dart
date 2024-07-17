// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) {
  return _PropertyModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyModel {
  @JsonKey(name: PropertyTable.id)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.propertyId)
  String get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.listingType)
  PropertyListingType get listingType => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.images)
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.title)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.description)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.latitude)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.longitude)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.price)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.sqm)
  double get sqm => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.bedrooms)
  int? get bedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.bathrooms)
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.floors)
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.parking)
  int? get parking => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.livingRooms)
  int? get livingRooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.landLength)
  double get landLength => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.landWidth)
  double get landWidth => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.houseLength)
  double? get houseLength => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.pricePerSqm)
  double get pricePerSqm => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.houseWidth)
  double? get houseWidth => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.createdAt)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: PropertyTable.userId)
  UserModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
  PropertyTypeModel get propertyType => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: PropertyTable.provinceId)
  ProvinceModel get province => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.approvedAt)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: PropertyTable.approvedBy)
  UserModel? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTable.rejectedAt)
  DateTime? get rejectedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyModelCopyWith<PropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyModelCopyWith<$Res> {
  factory $PropertyModelCopyWith(
          PropertyModel value, $Res Function(PropertyModel) then) =
      _$PropertyModelCopyWithImpl<$Res, PropertyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTable.id) int id,
      @JsonKey(name: PropertyTable.propertyId) String propertyId,
      @JsonKey(name: PropertyTable.listingType) PropertyListingType listingType,
      @JsonKey(name: PropertyTable.images) List<String> images,
      @JsonKey(name: PropertyTable.title) String title,
      @JsonKey(name: PropertyTable.description) String description,
      @JsonKey(name: PropertyTable.latitude) double latitude,
      @JsonKey(name: PropertyTable.longitude) double longitude,
      @JsonKey(name: PropertyTable.price) double price,
      @JsonKey(name: PropertyTable.sqm) double sqm,
      @JsonKey(name: PropertyTable.bedrooms) int? bedrooms,
      @JsonKey(name: PropertyTable.bathrooms) int? bathrooms,
      @JsonKey(name: PropertyTable.floors) int? floors,
      @JsonKey(name: PropertyTable.parking) int? parking,
      @JsonKey(name: PropertyTable.livingRooms) int? livingRooms,
      @JsonKey(name: PropertyTable.landLength) double landLength,
      @JsonKey(name: PropertyTable.landWidth) double landWidth,
      @JsonKey(name: PropertyTable.houseLength) double? houseLength,
      @JsonKey(name: PropertyTable.pricePerSqm) double pricePerSqm,
      @JsonKey(name: PropertyTable.houseWidth) double? houseWidth,
      @JsonKey(name: PropertyTable.createdAt) DateTime createdAt,
      @JoinedColumn(foreignKey: PropertyTable.userId) UserModel user,
      @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: PropertyTable.provinceId)
      ProvinceModel province,
      @JsonKey(name: PropertyTable.approvedAt) DateTime? approvedAt,
      @JoinedColumn(foreignKey: PropertyTable.approvedBy) UserModel? approvedBy,
      @JsonKey(name: PropertyTable.rejectedAt) DateTime? rejectedAt});

  $UserModelCopyWith<$Res> get user;
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  $ProvinceModelCopyWith<$Res> get province;
  $UserModelCopyWith<$Res>? get approvedBy;
}

/// @nodoc
class _$PropertyModelCopyWithImpl<$Res, $Val extends PropertyModel>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? listingType = null,
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? floors = freezed,
    Object? parking = freezed,
    Object? livingRooms = freezed,
    Object? landLength = null,
    Object? landWidth = null,
    Object? houseLength = freezed,
    Object? pricePerSqm = null,
    Object? houseWidth = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? propertyType = null,
    Object? province = null,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      listingType: null == listingType
          ? _value.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _value.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      houseWidth: freezed == houseWidth
          ? _value.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $PropertyTypeModelCopyWith<$Res> get propertyType {
    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res> get province {
    return $ProvinceModelCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
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
}

/// @nodoc
abstract class _$$PropertyModelImplCopyWith<$Res>
    implements $PropertyModelCopyWith<$Res> {
  factory _$$PropertyModelImplCopyWith(
          _$PropertyModelImpl value, $Res Function(_$PropertyModelImpl) then) =
      __$$PropertyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTable.id) int id,
      @JsonKey(name: PropertyTable.propertyId) String propertyId,
      @JsonKey(name: PropertyTable.listingType) PropertyListingType listingType,
      @JsonKey(name: PropertyTable.images) List<String> images,
      @JsonKey(name: PropertyTable.title) String title,
      @JsonKey(name: PropertyTable.description) String description,
      @JsonKey(name: PropertyTable.latitude) double latitude,
      @JsonKey(name: PropertyTable.longitude) double longitude,
      @JsonKey(name: PropertyTable.price) double price,
      @JsonKey(name: PropertyTable.sqm) double sqm,
      @JsonKey(name: PropertyTable.bedrooms) int? bedrooms,
      @JsonKey(name: PropertyTable.bathrooms) int? bathrooms,
      @JsonKey(name: PropertyTable.floors) int? floors,
      @JsonKey(name: PropertyTable.parking) int? parking,
      @JsonKey(name: PropertyTable.livingRooms) int? livingRooms,
      @JsonKey(name: PropertyTable.landLength) double landLength,
      @JsonKey(name: PropertyTable.landWidth) double landWidth,
      @JsonKey(name: PropertyTable.houseLength) double? houseLength,
      @JsonKey(name: PropertyTable.pricePerSqm) double pricePerSqm,
      @JsonKey(name: PropertyTable.houseWidth) double? houseWidth,
      @JsonKey(name: PropertyTable.createdAt) DateTime createdAt,
      @JoinedColumn(foreignKey: PropertyTable.userId) UserModel user,
      @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: PropertyTable.provinceId)
      ProvinceModel province,
      @JsonKey(name: PropertyTable.approvedAt) DateTime? approvedAt,
      @JoinedColumn(foreignKey: PropertyTable.approvedBy) UserModel? approvedBy,
      @JsonKey(name: PropertyTable.rejectedAt) DateTime? rejectedAt});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  @override
  $ProvinceModelCopyWith<$Res> get province;
  @override
  $UserModelCopyWith<$Res>? get approvedBy;
}

/// @nodoc
class __$$PropertyModelImplCopyWithImpl<$Res>
    extends _$PropertyModelCopyWithImpl<$Res, _$PropertyModelImpl>
    implements _$$PropertyModelImplCopyWith<$Res> {
  __$$PropertyModelImplCopyWithImpl(
      _$PropertyModelImpl _value, $Res Function(_$PropertyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? listingType = null,
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = freezed,
    Object? bathrooms = freezed,
    Object? floors = freezed,
    Object? parking = freezed,
    Object? livingRooms = freezed,
    Object? landLength = null,
    Object? landWidth = null,
    Object? houseLength = freezed,
    Object? pricePerSqm = null,
    Object? houseWidth = freezed,
    Object? createdAt = null,
    Object? user = null,
    Object? propertyType = null,
    Object? province = null,
    Object? approvedAt = freezed,
    Object? approvedBy = freezed,
    Object? rejectedAt = freezed,
  }) {
    return _then(_$PropertyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      listingType: null == listingType
          ? _value.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _value.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      houseWidth: freezed == houseWidth
          ? _value.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(PropertyTable.table)
class _$PropertyModelImpl extends _PropertyModel {
  _$PropertyModelImpl(
      {@JsonKey(name: PropertyTable.id) required this.id,
      @JsonKey(name: PropertyTable.propertyId) required this.propertyId,
      @JsonKey(name: PropertyTable.listingType) required this.listingType,
      @JsonKey(name: PropertyTable.images) required final List<String> images,
      @JsonKey(name: PropertyTable.title) required this.title,
      @JsonKey(name: PropertyTable.description) required this.description,
      @JsonKey(name: PropertyTable.latitude) required this.latitude,
      @JsonKey(name: PropertyTable.longitude) required this.longitude,
      @JsonKey(name: PropertyTable.price) required this.price,
      @JsonKey(name: PropertyTable.sqm) required this.sqm,
      @JsonKey(name: PropertyTable.bedrooms) required this.bedrooms,
      @JsonKey(name: PropertyTable.bathrooms) required this.bathrooms,
      @JsonKey(name: PropertyTable.floors) required this.floors,
      @JsonKey(name: PropertyTable.parking) required this.parking,
      @JsonKey(name: PropertyTable.livingRooms) required this.livingRooms,
      @JsonKey(name: PropertyTable.landLength) required this.landLength,
      @JsonKey(name: PropertyTable.landWidth) required this.landWidth,
      @JsonKey(name: PropertyTable.houseLength) required this.houseLength,
      @JsonKey(name: PropertyTable.pricePerSqm) required this.pricePerSqm,
      @JsonKey(name: PropertyTable.houseWidth) required this.houseWidth,
      @JsonKey(name: PropertyTable.createdAt) required this.createdAt,
      @JoinedColumn(foreignKey: PropertyTable.userId) required this.user,
      @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
      required this.propertyType,
      @JoinedColumn(foreignKey: PropertyTable.provinceId)
      required this.province,
      @JsonKey(name: PropertyTable.approvedAt) this.approvedAt,
      @JoinedColumn(foreignKey: PropertyTable.approvedBy) this.approvedBy,
      @JsonKey(name: PropertyTable.rejectedAt) this.rejectedAt})
      : _images = images,
        super._();

  factory _$PropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyModelImplFromJson(json);

  @override
  @JsonKey(name: PropertyTable.id)
  final int id;
  @override
  @JsonKey(name: PropertyTable.propertyId)
  final String propertyId;
  @override
  @JsonKey(name: PropertyTable.listingType)
  final PropertyListingType listingType;
  final List<String> _images;
  @override
  @JsonKey(name: PropertyTable.images)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: PropertyTable.title)
  final String title;
  @override
  @JsonKey(name: PropertyTable.description)
  final String description;
  @override
  @JsonKey(name: PropertyTable.latitude)
  final double latitude;
  @override
  @JsonKey(name: PropertyTable.longitude)
  final double longitude;
  @override
  @JsonKey(name: PropertyTable.price)
  final double price;
  @override
  @JsonKey(name: PropertyTable.sqm)
  final double sqm;
  @override
  @JsonKey(name: PropertyTable.bedrooms)
  final int? bedrooms;
  @override
  @JsonKey(name: PropertyTable.bathrooms)
  final int? bathrooms;
  @override
  @JsonKey(name: PropertyTable.floors)
  final int? floors;
  @override
  @JsonKey(name: PropertyTable.parking)
  final int? parking;
  @override
  @JsonKey(name: PropertyTable.livingRooms)
  final int? livingRooms;
  @override
  @JsonKey(name: PropertyTable.landLength)
  final double landLength;
  @override
  @JsonKey(name: PropertyTable.landWidth)
  final double landWidth;
  @override
  @JsonKey(name: PropertyTable.houseLength)
  final double? houseLength;
  @override
  @JsonKey(name: PropertyTable.pricePerSqm)
  final double pricePerSqm;
  @override
  @JsonKey(name: PropertyTable.houseWidth)
  final double? houseWidth;
  @override
  @JsonKey(name: PropertyTable.createdAt)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: PropertyTable.userId)
  final UserModel user;
  @override
  @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
  final PropertyTypeModel propertyType;
  @override
  @JoinedColumn(foreignKey: PropertyTable.provinceId)
  final ProvinceModel province;
  @override
  @JsonKey(name: PropertyTable.approvedAt)
  final DateTime? approvedAt;
  @override
  @JoinedColumn(foreignKey: PropertyTable.approvedBy)
  final UserModel? approvedBy;
  @override
  @JsonKey(name: PropertyTable.rejectedAt)
  final DateTime? rejectedAt;

  @override
  String toString() {
    return 'PropertyModel(id: $id, propertyId: $propertyId, listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, pricePerSqm: $pricePerSqm, houseWidth: $houseWidth, createdAt: $createdAt, user: $user, propertyType: $propertyType, province: $province, approvedAt: $approvedAt, approvedBy: $approvedBy, rejectedAt: $rejectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sqm, sqm) || other.sqm == sqm) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.livingRooms, livingRooms) ||
                other.livingRooms == livingRooms) &&
            (identical(other.landLength, landLength) ||
                other.landLength == landLength) &&
            (identical(other.landWidth, landWidth) ||
                other.landWidth == landWidth) &&
            (identical(other.houseLength, houseLength) ||
                other.houseLength == houseLength) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.houseWidth, houseWidth) ||
                other.houseWidth == houseWidth) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        propertyId,
        listingType,
        const DeepCollectionEquality().hash(_images),
        title,
        description,
        latitude,
        longitude,
        price,
        sqm,
        bedrooms,
        bathrooms,
        floors,
        parking,
        livingRooms,
        landLength,
        landWidth,
        houseLength,
        pricePerSqm,
        houseWidth,
        createdAt,
        user,
        propertyType,
        province,
        approvedAt,
        approvedBy,
        rejectedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      __$$PropertyModelImplCopyWithImpl<_$PropertyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyModel extends PropertyModel {
  factory _PropertyModel(
      {@JsonKey(name: PropertyTable.id) required final int id,
      @JsonKey(name: PropertyTable.propertyId) required final String propertyId,
      @JsonKey(name: PropertyTable.listingType)
      required final PropertyListingType listingType,
      @JsonKey(name: PropertyTable.images) required final List<String> images,
      @JsonKey(name: PropertyTable.title) required final String title,
      @JsonKey(name: PropertyTable.description)
      required final String description,
      @JsonKey(name: PropertyTable.latitude) required final double latitude,
      @JsonKey(name: PropertyTable.longitude) required final double longitude,
      @JsonKey(name: PropertyTable.price) required final double price,
      @JsonKey(name: PropertyTable.sqm) required final double sqm,
      @JsonKey(name: PropertyTable.bedrooms) required final int? bedrooms,
      @JsonKey(name: PropertyTable.bathrooms) required final int? bathrooms,
      @JsonKey(name: PropertyTable.floors) required final int? floors,
      @JsonKey(name: PropertyTable.parking) required final int? parking,
      @JsonKey(name: PropertyTable.livingRooms) required final int? livingRooms,
      @JsonKey(name: PropertyTable.landLength) required final double landLength,
      @JsonKey(name: PropertyTable.landWidth) required final double landWidth,
      @JsonKey(name: PropertyTable.houseLength)
      required final double? houseLength,
      @JsonKey(name: PropertyTable.pricePerSqm)
      required final double pricePerSqm,
      @JsonKey(name: PropertyTable.houseWidth)
      required final double? houseWidth,
      @JsonKey(name: PropertyTable.createdAt) required final DateTime createdAt,
      @JoinedColumn(foreignKey: PropertyTable.userId)
      required final UserModel user,
      @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
      required final PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: PropertyTable.provinceId)
      required final ProvinceModel province,
      @JsonKey(name: PropertyTable.approvedAt) final DateTime? approvedAt,
      @JoinedColumn(foreignKey: PropertyTable.approvedBy)
      final UserModel? approvedBy,
      @JsonKey(name: PropertyTable.rejectedAt)
      final DateTime? rejectedAt}) = _$PropertyModelImpl;
  _PropertyModel._() : super._();

  factory _PropertyModel.fromJson(Map<String, dynamic> json) =
      _$PropertyModelImpl.fromJson;

  @override
  @JsonKey(name: PropertyTable.id)
  int get id;
  @override
  @JsonKey(name: PropertyTable.propertyId)
  String get propertyId;
  @override
  @JsonKey(name: PropertyTable.listingType)
  PropertyListingType get listingType;
  @override
  @JsonKey(name: PropertyTable.images)
  List<String> get images;
  @override
  @JsonKey(name: PropertyTable.title)
  String get title;
  @override
  @JsonKey(name: PropertyTable.description)
  String get description;
  @override
  @JsonKey(name: PropertyTable.latitude)
  double get latitude;
  @override
  @JsonKey(name: PropertyTable.longitude)
  double get longitude;
  @override
  @JsonKey(name: PropertyTable.price)
  double get price;
  @override
  @JsonKey(name: PropertyTable.sqm)
  double get sqm;
  @override
  @JsonKey(name: PropertyTable.bedrooms)
  int? get bedrooms;
  @override
  @JsonKey(name: PropertyTable.bathrooms)
  int? get bathrooms;
  @override
  @JsonKey(name: PropertyTable.floors)
  int? get floors;
  @override
  @JsonKey(name: PropertyTable.parking)
  int? get parking;
  @override
  @JsonKey(name: PropertyTable.livingRooms)
  int? get livingRooms;
  @override
  @JsonKey(name: PropertyTable.landLength)
  double get landLength;
  @override
  @JsonKey(name: PropertyTable.landWidth)
  double get landWidth;
  @override
  @JsonKey(name: PropertyTable.houseLength)
  double? get houseLength;
  @override
  @JsonKey(name: PropertyTable.pricePerSqm)
  double get pricePerSqm;
  @override
  @JsonKey(name: PropertyTable.houseWidth)
  double? get houseWidth;
  @override
  @JsonKey(name: PropertyTable.createdAt)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: PropertyTable.userId)
  UserModel get user;
  @override
  @JoinedColumn(foreignKey: PropertyTable.propertyTypeId)
  PropertyTypeModel get propertyType;
  @override
  @JoinedColumn(foreignKey: PropertyTable.provinceId)
  ProvinceModel get province;
  @override
  @JsonKey(name: PropertyTable.approvedAt)
  DateTime? get approvedAt;
  @override
  @JoinedColumn(foreignKey: PropertyTable.approvedBy)
  UserModel? get approvedBy;
  @override
  @JsonKey(name: PropertyTable.rejectedAt)
  DateTime? get rejectedAt;
  @override
  @JsonKey(ignore: true)
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
