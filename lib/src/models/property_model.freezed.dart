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
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_id')
  String get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'listing_type')
  PropertyListingType get listingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sqm')
  double get sqm => throw _privateConstructorUsedError;
  @JsonKey(name: 'bedrooms')
  int? get bedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'bathrooms')
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'floors')
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking')
  int? get parking => throw _privateConstructorUsedError;
  @JsonKey(name: 'living_rooms')
  int? get livingRooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'land_length')
  double get landLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'land_width')
  double get landWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_length')
  double? get houseLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_width')
  double? get houseWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_sqm')
  double get pricePerSqm => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: 'user_id')
  UserModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: 'property_type_id')
  PropertyTypeModel get propertyType => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: 'province_id')
  ProvinceModel get province => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'property_id') String propertyId,
      @JsonKey(name: 'listing_type') PropertyListingType listingType,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'sqm') double sqm,
      @JsonKey(name: 'bedrooms') int? bedrooms,
      @JsonKey(name: 'bathrooms') int? bathrooms,
      @JsonKey(name: 'floors') int? floors,
      @JsonKey(name: 'parking') int? parking,
      @JsonKey(name: 'living_rooms') int? livingRooms,
      @JsonKey(name: 'land_length') double landLength,
      @JsonKey(name: 'land_width') double landWidth,
      @JsonKey(name: 'house_length') double? houseLength,
      @JsonKey(name: 'house_width') double? houseWidth,
      @JsonKey(name: 'price_per_sqm') double pricePerSqm,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JoinedColumn(foreignKey: 'user_id') UserModel user,
      @JoinedColumn(foreignKey: 'property_type_id')
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: 'province_id') ProvinceModel province});

  $UserModelCopyWith<$Res> get user;
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  $ProvinceModelCopyWith<$Res> get province;
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
    Object? houseWidth = freezed,
    Object? pricePerSqm = null,
    Object? createdAt = null,
    Object? user = null,
    Object? propertyType = null,
    Object? province = null,
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
      houseWidth: freezed == houseWidth
          ? _value.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'property_id') String propertyId,
      @JsonKey(name: 'listing_type') PropertyListingType listingType,
      @JsonKey(name: 'images') List<String> images,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'sqm') double sqm,
      @JsonKey(name: 'bedrooms') int? bedrooms,
      @JsonKey(name: 'bathrooms') int? bathrooms,
      @JsonKey(name: 'floors') int? floors,
      @JsonKey(name: 'parking') int? parking,
      @JsonKey(name: 'living_rooms') int? livingRooms,
      @JsonKey(name: 'land_length') double landLength,
      @JsonKey(name: 'land_width') double landWidth,
      @JsonKey(name: 'house_length') double? houseLength,
      @JsonKey(name: 'house_width') double? houseWidth,
      @JsonKey(name: 'price_per_sqm') double pricePerSqm,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JoinedColumn(foreignKey: 'user_id') UserModel user,
      @JoinedColumn(foreignKey: 'property_type_id')
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: 'province_id') ProvinceModel province});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  @override
  $ProvinceModelCopyWith<$Res> get province;
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
    Object? houseWidth = freezed,
    Object? pricePerSqm = null,
    Object? createdAt = null,
    Object? user = null,
    Object? propertyType = null,
    Object? province = null,
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
      houseWidth: freezed == houseWidth
          ? _value.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel('properties')
class _$PropertyModelImpl extends _PropertyModel {
  _$PropertyModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'property_id') required this.propertyId,
      @JsonKey(name: 'listing_type') required this.listingType,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'sqm') required this.sqm,
      @JsonKey(name: 'bedrooms') required this.bedrooms,
      @JsonKey(name: 'bathrooms') required this.bathrooms,
      @JsonKey(name: 'floors') required this.floors,
      @JsonKey(name: 'parking') required this.parking,
      @JsonKey(name: 'living_rooms') required this.livingRooms,
      @JsonKey(name: 'land_length') required this.landLength,
      @JsonKey(name: 'land_width') required this.landWidth,
      @JsonKey(name: 'house_length') required this.houseLength,
      @JsonKey(name: 'house_width') required this.houseWidth,
      @JsonKey(name: 'price_per_sqm') required this.pricePerSqm,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JoinedColumn(foreignKey: 'user_id') required this.user,
      @JoinedColumn(foreignKey: 'property_type_id') required this.propertyType,
      @JoinedColumn(foreignKey: 'province_id') required this.province})
      : _images = images,
        super._();

  factory _$PropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'property_id')
  final String propertyId;
  @override
  @JsonKey(name: 'listing_type')
  final PropertyListingType listingType;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'sqm')
  final double sqm;
  @override
  @JsonKey(name: 'bedrooms')
  final int? bedrooms;
  @override
  @JsonKey(name: 'bathrooms')
  final int? bathrooms;
  @override
  @JsonKey(name: 'floors')
  final int? floors;
  @override
  @JsonKey(name: 'parking')
  final int? parking;
  @override
  @JsonKey(name: 'living_rooms')
  final int? livingRooms;
  @override
  @JsonKey(name: 'land_length')
  final double landLength;
  @override
  @JsonKey(name: 'land_width')
  final double landWidth;
  @override
  @JsonKey(name: 'house_length')
  final double? houseLength;
  @override
  @JsonKey(name: 'house_width')
  final double? houseWidth;
  @override
  @JsonKey(name: 'price_per_sqm')
  final double pricePerSqm;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: 'user_id')
  final UserModel user;
  @override
  @JoinedColumn(foreignKey: 'property_type_id')
  final PropertyTypeModel propertyType;
  @override
  @JoinedColumn(foreignKey: 'province_id')
  final ProvinceModel province;

  @override
  String toString() {
    return 'PropertyModel(id: $id, propertyId: $propertyId, listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, user: $user, propertyType: $propertyType, province: $province)';
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
            (identical(other.houseWidth, houseWidth) ||
                other.houseWidth == houseWidth) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province));
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
        houseWidth,
        pricePerSqm,
        createdAt,
        user,
        propertyType,
        province
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
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'property_id') required final String propertyId,
      @JsonKey(name: 'listing_type')
      required final PropertyListingType listingType,
      @JsonKey(name: 'images') required final List<String> images,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'latitude') required final double latitude,
      @JsonKey(name: 'longitude') required final double longitude,
      @JsonKey(name: 'price') required final double price,
      @JsonKey(name: 'sqm') required final double sqm,
      @JsonKey(name: 'bedrooms') required final int? bedrooms,
      @JsonKey(name: 'bathrooms') required final int? bathrooms,
      @JsonKey(name: 'floors') required final int? floors,
      @JsonKey(name: 'parking') required final int? parking,
      @JsonKey(name: 'living_rooms') required final int? livingRooms,
      @JsonKey(name: 'land_length') required final double landLength,
      @JsonKey(name: 'land_width') required final double landWidth,
      @JsonKey(name: 'house_length') required final double? houseLength,
      @JsonKey(name: 'house_width') required final double? houseWidth,
      @JsonKey(name: 'price_per_sqm') required final double pricePerSqm,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JoinedColumn(foreignKey: 'user_id') required final UserModel user,
      @JoinedColumn(foreignKey: 'property_type_id')
      required final PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: 'province_id')
      required final ProvinceModel province}) = _$PropertyModelImpl;
  _PropertyModel._() : super._();

  factory _PropertyModel.fromJson(Map<String, dynamic> json) =
      _$PropertyModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'property_id')
  String get propertyId;
  @override
  @JsonKey(name: 'listing_type')
  PropertyListingType get listingType;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'sqm')
  double get sqm;
  @override
  @JsonKey(name: 'bedrooms')
  int? get bedrooms;
  @override
  @JsonKey(name: 'bathrooms')
  int? get bathrooms;
  @override
  @JsonKey(name: 'floors')
  int? get floors;
  @override
  @JsonKey(name: 'parking')
  int? get parking;
  @override
  @JsonKey(name: 'living_rooms')
  int? get livingRooms;
  @override
  @JsonKey(name: 'land_length')
  double get landLength;
  @override
  @JsonKey(name: 'land_width')
  double get landWidth;
  @override
  @JsonKey(name: 'house_length')
  double? get houseLength;
  @override
  @JsonKey(name: 'house_width')
  double? get houseWidth;
  @override
  @JsonKey(name: 'price_per_sqm')
  double get pricePerSqm;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: 'user_id')
  UserModel get user;
  @override
  @JoinedColumn(foreignKey: 'property_type_id')
  PropertyTypeModel get propertyType;
  @override
  @JoinedColumn(foreignKey: 'province_id')
  ProvinceModel get province;
  @override
  @JsonKey(ignore: true)
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
