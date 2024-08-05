// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.schema.dart';

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
  @JsonKey(name: PropertyModel.idKey)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.statusKey)
  PropertyAndAutoVerbalStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.propertyIdKey)
  String get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.listingTypeKey)
  PropertyListingType get listingType => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.imagesKey)
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.descriptionKey)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.priceKey)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.sqmKey)
  double get sqm => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.bedroomsKey)
  int? get bedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.bathroomsKey)
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.floorsKey)
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.parkingKey)
  int? get parking => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.livingRoomsKey)
  int? get livingRooms => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.landLengthKey)
  double get landLength => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.landWidthKey)
  double get landWidth => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.houseLengthKey)
  double? get houseLength => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.houseWidthKey)
  double? get houseWidth => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.pricePerSqmKey)
  double get pricePerSqm => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.propertyTypeIdKey)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.provinceIdKey)
  int get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.approvedAtKey)
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.rejectedAtKey)
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.rejectReasonKey)
  String? get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.viewCountKey)
  int get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.likeCountKey)
  int get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.autoVerbalAddedKey)
  bool get autoVerbalAdded => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
  bool get hiddenFromHomePage => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: PropertyModel.propertyTypeKey)
  PropertyTypeModel get propertyType => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: PropertyModel.provinceKey)
  ProvinceModel get province => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
  @JsonKey(name: PropertyModel.approvedByKey)
  UserModel? get approvedBy => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyModel.userKey)
  UserModel get user => throw _privateConstructorUsedError;

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
      {@JsonKey(name: PropertyModel.idKey) int id,
      @JsonKey(name: PropertyModel.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: PropertyModel.propertyIdKey) String propertyId,
      @JsonKey(name: PropertyModel.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: PropertyModel.imagesKey) List<String> images,
      @JsonKey(name: PropertyModel.titleKey) String title,
      @JsonKey(name: PropertyModel.descriptionKey) String description,
      @JsonKey(name: PropertyModel.latitudeKey) double latitude,
      @JsonKey(name: PropertyModel.longitudeKey) double longitude,
      @JsonKey(name: PropertyModel.priceKey) double price,
      @JsonKey(name: PropertyModel.sqmKey) double sqm,
      @JsonKey(name: PropertyModel.bedroomsKey) int? bedrooms,
      @JsonKey(name: PropertyModel.bathroomsKey) int? bathrooms,
      @JsonKey(name: PropertyModel.floorsKey) int? floors,
      @JsonKey(name: PropertyModel.parkingKey) int? parking,
      @JsonKey(name: PropertyModel.livingRoomsKey) int? livingRooms,
      @JsonKey(name: PropertyModel.landLengthKey) double landLength,
      @JsonKey(name: PropertyModel.landWidthKey) double landWidth,
      @JsonKey(name: PropertyModel.houseLengthKey) double? houseLength,
      @JsonKey(name: PropertyModel.houseWidthKey) double? houseWidth,
      @JsonKey(name: PropertyModel.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: PropertyModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: PropertyModel.userIdKey) String userId,
      @JsonKey(name: PropertyModel.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: PropertyModel.provinceIdKey) int provinceId,
      @JsonKey(name: PropertyModel.approvedAtKey) DateTime? approvedAt,
      @JsonKey(name: PropertyModel.rejectedAtKey) DateTime? rejectedAt,
      @JsonKey(name: PropertyModel.rejectReasonKey) String? rejectReason,
      @JsonKey(name: PropertyModel.viewCountKey) int viewCount,
      @JsonKey(name: PropertyModel.likeCountKey) int likeCount,
      @JsonKey(name: PropertyModel.autoVerbalAddedKey) bool autoVerbalAdded,
      @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
      bool hiddenFromHomePage,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: PropertyModel.propertyTypeKey)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      ProvinceModel province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      UserModel user});

  $PropertyTypeModelCopyWith<$Res> get propertyType;
  $ProvinceModelCopyWith<$Res> get province;
  $UserModelCopyWith<$Res>? get approvedBy;
  $UserModelCopyWith<$Res> get user;
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
    Object? status = null,
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectReason = freezed,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? autoVerbalAdded = null,
    Object? hiddenFromHomePage = null,
    Object? propertyType = null,
    Object? province = null,
    Object? approvedBy = freezed,
    Object? user = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalAdded: null == autoVerbalAdded
          ? _value.autoVerbalAdded
          : autoVerbalAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenFromHomePage: null == hiddenFromHomePage
          ? _value.hiddenFromHomePage
          : hiddenFromHomePage // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
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

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
      {@JsonKey(name: PropertyModel.idKey) int id,
      @JsonKey(name: PropertyModel.statusKey)
      PropertyAndAutoVerbalStatus status,
      @JsonKey(name: PropertyModel.propertyIdKey) String propertyId,
      @JsonKey(name: PropertyModel.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: PropertyModel.imagesKey) List<String> images,
      @JsonKey(name: PropertyModel.titleKey) String title,
      @JsonKey(name: PropertyModel.descriptionKey) String description,
      @JsonKey(name: PropertyModel.latitudeKey) double latitude,
      @JsonKey(name: PropertyModel.longitudeKey) double longitude,
      @JsonKey(name: PropertyModel.priceKey) double price,
      @JsonKey(name: PropertyModel.sqmKey) double sqm,
      @JsonKey(name: PropertyModel.bedroomsKey) int? bedrooms,
      @JsonKey(name: PropertyModel.bathroomsKey) int? bathrooms,
      @JsonKey(name: PropertyModel.floorsKey) int? floors,
      @JsonKey(name: PropertyModel.parkingKey) int? parking,
      @JsonKey(name: PropertyModel.livingRoomsKey) int? livingRooms,
      @JsonKey(name: PropertyModel.landLengthKey) double landLength,
      @JsonKey(name: PropertyModel.landWidthKey) double landWidth,
      @JsonKey(name: PropertyModel.houseLengthKey) double? houseLength,
      @JsonKey(name: PropertyModel.houseWidthKey) double? houseWidth,
      @JsonKey(name: PropertyModel.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: PropertyModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: PropertyModel.userIdKey) String userId,
      @JsonKey(name: PropertyModel.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: PropertyModel.provinceIdKey) int provinceId,
      @JsonKey(name: PropertyModel.approvedAtKey) DateTime? approvedAt,
      @JsonKey(name: PropertyModel.rejectedAtKey) DateTime? rejectedAt,
      @JsonKey(name: PropertyModel.rejectReasonKey) String? rejectReason,
      @JsonKey(name: PropertyModel.viewCountKey) int viewCount,
      @JsonKey(name: PropertyModel.likeCountKey) int likeCount,
      @JsonKey(name: PropertyModel.autoVerbalAddedKey) bool autoVerbalAdded,
      @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
      bool hiddenFromHomePage,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: PropertyModel.propertyTypeKey)
      PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      ProvinceModel province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      UserModel user});

  @override
  $PropertyTypeModelCopyWith<$Res> get propertyType;
  @override
  $ProvinceModelCopyWith<$Res> get province;
  @override
  $UserModelCopyWith<$Res>? get approvedBy;
  @override
  $UserModelCopyWith<$Res> get user;
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
    Object? status = null,
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectReason = freezed,
    Object? viewCount = null,
    Object? likeCount = null,
    Object? autoVerbalAdded = null,
    Object? hiddenFromHomePage = null,
    Object? propertyType = null,
    Object? province = null,
    Object? approvedBy = freezed,
    Object? user = null,
  }) {
    return _then(_$PropertyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalAdded: null == autoVerbalAdded
          ? _value.autoVerbalAdded
          : autoVerbalAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenFromHomePage: null == hiddenFromHomePage
          ? _value.hiddenFromHomePage
          : hiddenFromHomePage // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

@TableModel(PropertyModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$PropertyModelImpl extends _PropertyModel {
  const _$PropertyModelImpl(
      {@JsonKey(name: PropertyModel.idKey) required this.id,
      @JsonKey(name: PropertyModel.statusKey) required this.status,
      @JsonKey(name: PropertyModel.propertyIdKey) required this.propertyId,
      @JsonKey(name: PropertyModel.listingTypeKey) required this.listingType,
      @JsonKey(name: PropertyModel.imagesKey)
      required final List<String> images,
      @JsonKey(name: PropertyModel.titleKey) required this.title,
      @JsonKey(name: PropertyModel.descriptionKey) required this.description,
      @JsonKey(name: PropertyModel.latitudeKey) required this.latitude,
      @JsonKey(name: PropertyModel.longitudeKey) required this.longitude,
      @JsonKey(name: PropertyModel.priceKey) required this.price,
      @JsonKey(name: PropertyModel.sqmKey) required this.sqm,
      @JsonKey(name: PropertyModel.bedroomsKey) required this.bedrooms,
      @JsonKey(name: PropertyModel.bathroomsKey) required this.bathrooms,
      @JsonKey(name: PropertyModel.floorsKey) required this.floors,
      @JsonKey(name: PropertyModel.parkingKey) required this.parking,
      @JsonKey(name: PropertyModel.livingRoomsKey) required this.livingRooms,
      @JsonKey(name: PropertyModel.landLengthKey) required this.landLength,
      @JsonKey(name: PropertyModel.landWidthKey) required this.landWidth,
      @JsonKey(name: PropertyModel.houseLengthKey) required this.houseLength,
      @JsonKey(name: PropertyModel.houseWidthKey) required this.houseWidth,
      @JsonKey(name: PropertyModel.pricePerSqmKey) required this.pricePerSqm,
      @JsonKey(name: PropertyModel.createdAtKey) required this.createdAt,
      @JsonKey(name: PropertyModel.userIdKey) required this.userId,
      @JsonKey(name: PropertyModel.propertyTypeIdKey)
      required this.propertyTypeId,
      @JsonKey(name: PropertyModel.provinceIdKey) required this.provinceId,
      @JsonKey(name: PropertyModel.approvedAtKey) required this.approvedAt,
      @JsonKey(name: PropertyModel.rejectedAtKey) required this.rejectedAt,
      @JsonKey(name: PropertyModel.rejectReasonKey) required this.rejectReason,
      @JsonKey(name: PropertyModel.viewCountKey) required this.viewCount,
      @JsonKey(name: PropertyModel.likeCountKey) required this.likeCount,
      @JsonKey(name: PropertyModel.autoVerbalAddedKey)
      required this.autoVerbalAdded,
      @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
      required this.hiddenFromHomePage,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: PropertyModel.propertyTypeKey)
      required this.propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      required this.province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      required this.approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      required this.user})
      : _images = images,
        super._();

  factory _$PropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyModelImplFromJson(json);

  @override
  @JsonKey(name: PropertyModel.idKey)
  final int id;
  @override
  @JsonKey(name: PropertyModel.statusKey)
  final PropertyAndAutoVerbalStatus status;
  @override
  @JsonKey(name: PropertyModel.propertyIdKey)
  final String propertyId;
  @override
  @JsonKey(name: PropertyModel.listingTypeKey)
  final PropertyListingType listingType;
  final List<String> _images;
  @override
  @JsonKey(name: PropertyModel.imagesKey)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: PropertyModel.titleKey)
  final String title;
  @override
  @JsonKey(name: PropertyModel.descriptionKey)
  final String description;
  @override
  @JsonKey(name: PropertyModel.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: PropertyModel.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: PropertyModel.priceKey)
  final double price;
  @override
  @JsonKey(name: PropertyModel.sqmKey)
  final double sqm;
  @override
  @JsonKey(name: PropertyModel.bedroomsKey)
  final int? bedrooms;
  @override
  @JsonKey(name: PropertyModel.bathroomsKey)
  final int? bathrooms;
  @override
  @JsonKey(name: PropertyModel.floorsKey)
  final int? floors;
  @override
  @JsonKey(name: PropertyModel.parkingKey)
  final int? parking;
  @override
  @JsonKey(name: PropertyModel.livingRoomsKey)
  final int? livingRooms;
  @override
  @JsonKey(name: PropertyModel.landLengthKey)
  final double landLength;
  @override
  @JsonKey(name: PropertyModel.landWidthKey)
  final double landWidth;
  @override
  @JsonKey(name: PropertyModel.houseLengthKey)
  final double? houseLength;
  @override
  @JsonKey(name: PropertyModel.houseWidthKey)
  final double? houseWidth;
  @override
  @JsonKey(name: PropertyModel.pricePerSqmKey)
  final double pricePerSqm;
  @override
  @JsonKey(name: PropertyModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: PropertyModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: PropertyModel.propertyTypeIdKey)
  final int propertyTypeId;
  @override
  @JsonKey(name: PropertyModel.provinceIdKey)
  final int provinceId;
  @override
  @JsonKey(name: PropertyModel.approvedAtKey)
  final DateTime? approvedAt;
  @override
  @JsonKey(name: PropertyModel.rejectedAtKey)
  final DateTime? rejectedAt;
  @override
  @JsonKey(name: PropertyModel.rejectReasonKey)
  final String? rejectReason;
  @override
  @JsonKey(name: PropertyModel.viewCountKey)
  final int viewCount;
  @override
  @JsonKey(name: PropertyModel.likeCountKey)
  final int likeCount;
  @override
  @JsonKey(name: PropertyModel.autoVerbalAddedKey)
  final bool autoVerbalAdded;
  @override
  @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
  final bool hiddenFromHomePage;
  @override
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: PropertyModel.propertyTypeKey)
  final PropertyTypeModel propertyType;
  @override
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: PropertyModel.provinceKey)
  final ProvinceModel province;
  @override
  @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
  @JsonKey(name: PropertyModel.approvedByKey)
  final UserModel? approvedBy;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyModel.userKey)
  final UserModel user;

  @override
  String toString() {
    return 'PropertyModel(id: $id, status: $status, propertyId: $propertyId, listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId, approvedAt: $approvedAt, rejectedAt: $rejectedAt, rejectReason: $rejectReason, viewCount: $viewCount, likeCount: $likeCount, autoVerbalAdded: $autoVerbalAdded, hiddenFromHomePage: $hiddenFromHomePage, propertyType: $propertyType, province: $province, approvedBy: $approvedBy, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.autoVerbalAdded, autoVerbalAdded) ||
                other.autoVerbalAdded == autoVerbalAdded) &&
            (identical(other.hiddenFromHomePage, hiddenFromHomePage) ||
                other.hiddenFromHomePage == hiddenFromHomePage) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
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
        userId,
        propertyTypeId,
        provinceId,
        approvedAt,
        rejectedAt,
        rejectReason,
        viewCount,
        likeCount,
        autoVerbalAdded,
        hiddenFromHomePage,
        propertyType,
        province,
        approvedBy,
        user
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
  const factory _PropertyModel(
      {@JsonKey(name: PropertyModel.idKey) required final int id,
      @JsonKey(name: PropertyModel.statusKey)
      required final PropertyAndAutoVerbalStatus status,
      @JsonKey(name: PropertyModel.propertyIdKey)
      required final String propertyId,
      @JsonKey(name: PropertyModel.listingTypeKey)
      required final PropertyListingType listingType,
      @JsonKey(name: PropertyModel.imagesKey)
      required final List<String> images,
      @JsonKey(name: PropertyModel.titleKey) required final String title,
      @JsonKey(name: PropertyModel.descriptionKey)
      required final String description,
      @JsonKey(name: PropertyModel.latitudeKey) required final double latitude,
      @JsonKey(name: PropertyModel.longitudeKey)
      required final double longitude,
      @JsonKey(name: PropertyModel.priceKey) required final double price,
      @JsonKey(name: PropertyModel.sqmKey) required final double sqm,
      @JsonKey(name: PropertyModel.bedroomsKey) required final int? bedrooms,
      @JsonKey(name: PropertyModel.bathroomsKey) required final int? bathrooms,
      @JsonKey(name: PropertyModel.floorsKey) required final int? floors,
      @JsonKey(name: PropertyModel.parkingKey) required final int? parking,
      @JsonKey(name: PropertyModel.livingRoomsKey)
      required final int? livingRooms,
      @JsonKey(name: PropertyModel.landLengthKey)
      required final double landLength,
      @JsonKey(name: PropertyModel.landWidthKey)
      required final double landWidth,
      @JsonKey(name: PropertyModel.houseLengthKey)
      required final double? houseLength,
      @JsonKey(name: PropertyModel.houseWidthKey)
      required final double? houseWidth,
      @JsonKey(name: PropertyModel.pricePerSqmKey)
      required final double pricePerSqm,
      @JsonKey(name: PropertyModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: PropertyModel.userIdKey) required final String userId,
      @JsonKey(name: PropertyModel.propertyTypeIdKey)
      required final int propertyTypeId,
      @JsonKey(name: PropertyModel.provinceIdKey) required final int provinceId,
      @JsonKey(name: PropertyModel.approvedAtKey)
      required final DateTime? approvedAt,
      @JsonKey(name: PropertyModel.rejectedAtKey)
      required final DateTime? rejectedAt,
      @JsonKey(name: PropertyModel.rejectReasonKey)
      required final String? rejectReason,
      @JsonKey(name: PropertyModel.viewCountKey) required final int viewCount,
      @JsonKey(name: PropertyModel.likeCountKey) required final int likeCount,
      @JsonKey(name: PropertyModel.autoVerbalAddedKey)
      required final bool autoVerbalAdded,
      @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
      required final bool hiddenFromHomePage,
      @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
      @JsonKey(name: PropertyModel.propertyTypeKey)
      required final PropertyTypeModel propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      required final ProvinceModel province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      required final UserModel? approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      required final UserModel user}) = _$PropertyModelImpl;
  const _PropertyModel._() : super._();

  factory _PropertyModel.fromJson(Map<String, dynamic> json) =
      _$PropertyModelImpl.fromJson;

  @override
  @JsonKey(name: PropertyModel.idKey)
  int get id;
  @override
  @JsonKey(name: PropertyModel.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @override
  @JsonKey(name: PropertyModel.propertyIdKey)
  String get propertyId;
  @override
  @JsonKey(name: PropertyModel.listingTypeKey)
  PropertyListingType get listingType;
  @override
  @JsonKey(name: PropertyModel.imagesKey)
  List<String> get images;
  @override
  @JsonKey(name: PropertyModel.titleKey)
  String get title;
  @override
  @JsonKey(name: PropertyModel.descriptionKey)
  String get description;
  @override
  @JsonKey(name: PropertyModel.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: PropertyModel.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: PropertyModel.priceKey)
  double get price;
  @override
  @JsonKey(name: PropertyModel.sqmKey)
  double get sqm;
  @override
  @JsonKey(name: PropertyModel.bedroomsKey)
  int? get bedrooms;
  @override
  @JsonKey(name: PropertyModel.bathroomsKey)
  int? get bathrooms;
  @override
  @JsonKey(name: PropertyModel.floorsKey)
  int? get floors;
  @override
  @JsonKey(name: PropertyModel.parkingKey)
  int? get parking;
  @override
  @JsonKey(name: PropertyModel.livingRoomsKey)
  int? get livingRooms;
  @override
  @JsonKey(name: PropertyModel.landLengthKey)
  double get landLength;
  @override
  @JsonKey(name: PropertyModel.landWidthKey)
  double get landWidth;
  @override
  @JsonKey(name: PropertyModel.houseLengthKey)
  double? get houseLength;
  @override
  @JsonKey(name: PropertyModel.houseWidthKey)
  double? get houseWidth;
  @override
  @JsonKey(name: PropertyModel.pricePerSqmKey)
  double get pricePerSqm;
  @override
  @JsonKey(name: PropertyModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: PropertyModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: PropertyModel.propertyTypeIdKey)
  int get propertyTypeId;
  @override
  @JsonKey(name: PropertyModel.provinceIdKey)
  int get provinceId;
  @override
  @JsonKey(name: PropertyModel.approvedAtKey)
  DateTime? get approvedAt;
  @override
  @JsonKey(name: PropertyModel.rejectedAtKey)
  DateTime? get rejectedAt;
  @override
  @JsonKey(name: PropertyModel.rejectReasonKey)
  String? get rejectReason;
  @override
  @JsonKey(name: PropertyModel.viewCountKey)
  int get viewCount;
  @override
  @JsonKey(name: PropertyModel.likeCountKey)
  int get likeCount;
  @override
  @JsonKey(name: PropertyModel.autoVerbalAddedKey)
  bool get autoVerbalAdded;
  @override
  @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
  bool get hiddenFromHomePage;
  @override
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: PropertyModel.propertyTypeKey)
  PropertyTypeModel get propertyType;
  @override
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: PropertyModel.provinceKey)
  ProvinceModel get province;
  @override
  @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
  @JsonKey(name: PropertyModel.approvedByKey)
  UserModel? get approvedBy;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyModel.userKey)
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$PropertyModelImplCopyWith<_$PropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePropertyParam _$CreatePropertyParamFromJson(Map<String, dynamic> json) {
  return _CreatePropertyParam.fromJson(json);
}

/// @nodoc
mixin _$CreatePropertyParam {
  @JsonKey(name: CreatePropertyParam.listingTypeKey)
  PropertyListingType get listingType => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.imagesKey)
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.descriptionKey)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.priceKey)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.sqmKey)
  double get sqm => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.bedroomsKey)
  int? get bedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.bathroomsKey)
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.floorsKey)
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.parkingKey)
  int? get parking => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.livingRoomsKey)
  int? get livingRooms => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.landLengthKey)
  double get landLength => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.landWidthKey)
  double get landWidth => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.houseLengthKey)
  double? get houseLength => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.houseWidthKey)
  double? get houseWidth => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
  double get pricePerSqm => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: CreatePropertyParam.provinceIdKey)
  int get provinceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePropertyParamCopyWith<CreatePropertyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePropertyParamCopyWith<$Res> {
  factory $CreatePropertyParamCopyWith(
          CreatePropertyParam value, $Res Function(CreatePropertyParam) then) =
      _$CreatePropertyParamCopyWithImpl<$Res, CreatePropertyParam>;
  @useResult
  $Res call(
      {@JsonKey(name: CreatePropertyParam.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: CreatePropertyParam.imagesKey) List<String> images,
      @JsonKey(name: CreatePropertyParam.titleKey) String title,
      @JsonKey(name: CreatePropertyParam.descriptionKey) String description,
      @JsonKey(name: CreatePropertyParam.latitudeKey) double latitude,
      @JsonKey(name: CreatePropertyParam.longitudeKey) double longitude,
      @JsonKey(name: CreatePropertyParam.priceKey) double price,
      @JsonKey(name: CreatePropertyParam.sqmKey) double sqm,
      @JsonKey(name: CreatePropertyParam.bedroomsKey) int? bedrooms,
      @JsonKey(name: CreatePropertyParam.bathroomsKey) int? bathrooms,
      @JsonKey(name: CreatePropertyParam.floorsKey) int? floors,
      @JsonKey(name: CreatePropertyParam.parkingKey) int? parking,
      @JsonKey(name: CreatePropertyParam.livingRoomsKey) int? livingRooms,
      @JsonKey(name: CreatePropertyParam.landLengthKey) double landLength,
      @JsonKey(name: CreatePropertyParam.landWidthKey) double landWidth,
      @JsonKey(name: CreatePropertyParam.houseLengthKey) double? houseLength,
      @JsonKey(name: CreatePropertyParam.houseWidthKey) double? houseWidth,
      @JsonKey(name: CreatePropertyParam.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: CreatePropertyParam.userIdKey) String userId,
      @JsonKey(name: CreatePropertyParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: CreatePropertyParam.provinceIdKey) int provinceId});
}

/// @nodoc
class _$CreatePropertyParamCopyWithImpl<$Res, $Val extends CreatePropertyParam>
    implements $CreatePropertyParamCopyWith<$Res> {
  _$CreatePropertyParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
  }) {
    return _then(_value.copyWith(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePropertyParamImplCopyWith<$Res>
    implements $CreatePropertyParamCopyWith<$Res> {
  factory _$$CreatePropertyParamImplCopyWith(_$CreatePropertyParamImpl value,
          $Res Function(_$CreatePropertyParamImpl) then) =
      __$$CreatePropertyParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreatePropertyParam.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: CreatePropertyParam.imagesKey) List<String> images,
      @JsonKey(name: CreatePropertyParam.titleKey) String title,
      @JsonKey(name: CreatePropertyParam.descriptionKey) String description,
      @JsonKey(name: CreatePropertyParam.latitudeKey) double latitude,
      @JsonKey(name: CreatePropertyParam.longitudeKey) double longitude,
      @JsonKey(name: CreatePropertyParam.priceKey) double price,
      @JsonKey(name: CreatePropertyParam.sqmKey) double sqm,
      @JsonKey(name: CreatePropertyParam.bedroomsKey) int? bedrooms,
      @JsonKey(name: CreatePropertyParam.bathroomsKey) int? bathrooms,
      @JsonKey(name: CreatePropertyParam.floorsKey) int? floors,
      @JsonKey(name: CreatePropertyParam.parkingKey) int? parking,
      @JsonKey(name: CreatePropertyParam.livingRoomsKey) int? livingRooms,
      @JsonKey(name: CreatePropertyParam.landLengthKey) double landLength,
      @JsonKey(name: CreatePropertyParam.landWidthKey) double landWidth,
      @JsonKey(name: CreatePropertyParam.houseLengthKey) double? houseLength,
      @JsonKey(name: CreatePropertyParam.houseWidthKey) double? houseWidth,
      @JsonKey(name: CreatePropertyParam.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: CreatePropertyParam.userIdKey) String userId,
      @JsonKey(name: CreatePropertyParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: CreatePropertyParam.provinceIdKey) int provinceId});
}

/// @nodoc
class __$$CreatePropertyParamImplCopyWithImpl<$Res>
    extends _$CreatePropertyParamCopyWithImpl<$Res, _$CreatePropertyParamImpl>
    implements _$$CreatePropertyParamImplCopyWith<$Res> {
  __$$CreatePropertyParamImplCopyWithImpl(_$CreatePropertyParamImpl _value,
      $Res Function(_$CreatePropertyParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
  }) {
    return _then(_$CreatePropertyParamImpl(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreatePropertyParamImpl extends _CreatePropertyParam {
  const _$CreatePropertyParamImpl(
      {@JsonKey(name: CreatePropertyParam.listingTypeKey)
      required this.listingType,
      @JsonKey(name: CreatePropertyParam.imagesKey)
      required final List<String> images,
      @JsonKey(name: CreatePropertyParam.titleKey) required this.title,
      @JsonKey(name: CreatePropertyParam.descriptionKey)
      required this.description,
      @JsonKey(name: CreatePropertyParam.latitudeKey) required this.latitude,
      @JsonKey(name: CreatePropertyParam.longitudeKey) required this.longitude,
      @JsonKey(name: CreatePropertyParam.priceKey) required this.price,
      @JsonKey(name: CreatePropertyParam.sqmKey) required this.sqm,
      @JsonKey(name: CreatePropertyParam.bedroomsKey) required this.bedrooms,
      @JsonKey(name: CreatePropertyParam.bathroomsKey) required this.bathrooms,
      @JsonKey(name: CreatePropertyParam.floorsKey) required this.floors,
      @JsonKey(name: CreatePropertyParam.parkingKey) required this.parking,
      @JsonKey(name: CreatePropertyParam.livingRoomsKey)
      required this.livingRooms,
      @JsonKey(name: CreatePropertyParam.landLengthKey)
      required this.landLength,
      @JsonKey(name: CreatePropertyParam.landWidthKey) required this.landWidth,
      @JsonKey(name: CreatePropertyParam.houseLengthKey)
      required this.houseLength,
      @JsonKey(name: CreatePropertyParam.houseWidthKey)
      required this.houseWidth,
      @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
      required this.pricePerSqm,
      @JsonKey(name: CreatePropertyParam.userIdKey) required this.userId,
      @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
      required this.propertyTypeId,
      @JsonKey(name: CreatePropertyParam.provinceIdKey)
      required this.provinceId})
      : _images = images,
        super._();

  factory _$CreatePropertyParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePropertyParamImplFromJson(json);

  @override
  @JsonKey(name: CreatePropertyParam.listingTypeKey)
  final PropertyListingType listingType;
  final List<String> _images;
  @override
  @JsonKey(name: CreatePropertyParam.imagesKey)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: CreatePropertyParam.titleKey)
  final String title;
  @override
  @JsonKey(name: CreatePropertyParam.descriptionKey)
  final String description;
  @override
  @JsonKey(name: CreatePropertyParam.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: CreatePropertyParam.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: CreatePropertyParam.priceKey)
  final double price;
  @override
  @JsonKey(name: CreatePropertyParam.sqmKey)
  final double sqm;
  @override
  @JsonKey(name: CreatePropertyParam.bedroomsKey)
  final int? bedrooms;
  @override
  @JsonKey(name: CreatePropertyParam.bathroomsKey)
  final int? bathrooms;
  @override
  @JsonKey(name: CreatePropertyParam.floorsKey)
  final int? floors;
  @override
  @JsonKey(name: CreatePropertyParam.parkingKey)
  final int? parking;
  @override
  @JsonKey(name: CreatePropertyParam.livingRoomsKey)
  final int? livingRooms;
  @override
  @JsonKey(name: CreatePropertyParam.landLengthKey)
  final double landLength;
  @override
  @JsonKey(name: CreatePropertyParam.landWidthKey)
  final double landWidth;
  @override
  @JsonKey(name: CreatePropertyParam.houseLengthKey)
  final double? houseLength;
  @override
  @JsonKey(name: CreatePropertyParam.houseWidthKey)
  final double? houseWidth;
  @override
  @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
  final double pricePerSqm;
  @override
  @JsonKey(name: CreatePropertyParam.userIdKey)
  final String userId;
  @override
  @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
  final int propertyTypeId;
  @override
  @JsonKey(name: CreatePropertyParam.provinceIdKey)
  final int provinceId;

  @override
  String toString() {
    return 'CreatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePropertyParamImpl &&
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        userId,
        propertyTypeId,
        provinceId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePropertyParamImplCopyWith<_$CreatePropertyParamImpl> get copyWith =>
      __$$CreatePropertyParamImplCopyWithImpl<_$CreatePropertyParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePropertyParamImplToJson(
      this,
    );
  }
}

abstract class _CreatePropertyParam extends CreatePropertyParam {
  const factory _CreatePropertyParam(
      {@JsonKey(name: CreatePropertyParam.listingTypeKey)
      required final PropertyListingType listingType,
      @JsonKey(name: CreatePropertyParam.imagesKey)
      required final List<String> images,
      @JsonKey(name: CreatePropertyParam.titleKey) required final String title,
      @JsonKey(name: CreatePropertyParam.descriptionKey)
      required final String description,
      @JsonKey(name: CreatePropertyParam.latitudeKey)
      required final double latitude,
      @JsonKey(name: CreatePropertyParam.longitudeKey)
      required final double longitude,
      @JsonKey(name: CreatePropertyParam.priceKey) required final double price,
      @JsonKey(name: CreatePropertyParam.sqmKey) required final double sqm,
      @JsonKey(name: CreatePropertyParam.bedroomsKey)
      required final int? bedrooms,
      @JsonKey(name: CreatePropertyParam.bathroomsKey)
      required final int? bathrooms,
      @JsonKey(name: CreatePropertyParam.floorsKey) required final int? floors,
      @JsonKey(name: CreatePropertyParam.parkingKey)
      required final int? parking,
      @JsonKey(name: CreatePropertyParam.livingRoomsKey)
      required final int? livingRooms,
      @JsonKey(name: CreatePropertyParam.landLengthKey)
      required final double landLength,
      @JsonKey(name: CreatePropertyParam.landWidthKey)
      required final double landWidth,
      @JsonKey(name: CreatePropertyParam.houseLengthKey)
      required final double? houseLength,
      @JsonKey(name: CreatePropertyParam.houseWidthKey)
      required final double? houseWidth,
      @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
      required final double pricePerSqm,
      @JsonKey(name: CreatePropertyParam.userIdKey)
      required final String userId,
      @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
      required final int propertyTypeId,
      @JsonKey(name: CreatePropertyParam.provinceIdKey)
      required final int provinceId}) = _$CreatePropertyParamImpl;
  const _CreatePropertyParam._() : super._();

  factory _CreatePropertyParam.fromJson(Map<String, dynamic> json) =
      _$CreatePropertyParamImpl.fromJson;

  @override
  @JsonKey(name: CreatePropertyParam.listingTypeKey)
  PropertyListingType get listingType;
  @override
  @JsonKey(name: CreatePropertyParam.imagesKey)
  List<String> get images;
  @override
  @JsonKey(name: CreatePropertyParam.titleKey)
  String get title;
  @override
  @JsonKey(name: CreatePropertyParam.descriptionKey)
  String get description;
  @override
  @JsonKey(name: CreatePropertyParam.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: CreatePropertyParam.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: CreatePropertyParam.priceKey)
  double get price;
  @override
  @JsonKey(name: CreatePropertyParam.sqmKey)
  double get sqm;
  @override
  @JsonKey(name: CreatePropertyParam.bedroomsKey)
  int? get bedrooms;
  @override
  @JsonKey(name: CreatePropertyParam.bathroomsKey)
  int? get bathrooms;
  @override
  @JsonKey(name: CreatePropertyParam.floorsKey)
  int? get floors;
  @override
  @JsonKey(name: CreatePropertyParam.parkingKey)
  int? get parking;
  @override
  @JsonKey(name: CreatePropertyParam.livingRoomsKey)
  int? get livingRooms;
  @override
  @JsonKey(name: CreatePropertyParam.landLengthKey)
  double get landLength;
  @override
  @JsonKey(name: CreatePropertyParam.landWidthKey)
  double get landWidth;
  @override
  @JsonKey(name: CreatePropertyParam.houseLengthKey)
  double? get houseLength;
  @override
  @JsonKey(name: CreatePropertyParam.houseWidthKey)
  double? get houseWidth;
  @override
  @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
  double get pricePerSqm;
  @override
  @JsonKey(name: CreatePropertyParam.userIdKey)
  String get userId;
  @override
  @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId;
  @override
  @JsonKey(name: CreatePropertyParam.provinceIdKey)
  int get provinceId;
  @override
  @JsonKey(ignore: true)
  _$$CreatePropertyParamImplCopyWith<_$CreatePropertyParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePropertyParam _$UpdatePropertyParamFromJson(Map<String, dynamic> json) {
  return _UpdatePropertyParam.fromJson(json);
}

/// @nodoc
mixin _$UpdatePropertyParam {
  @JsonKey(name: UpdatePropertyParam.listingTypeKey)
  PropertyListingType get listingType => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.imagesKey)
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.titleKey)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.descriptionKey)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.priceKey)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.sqmKey)
  double get sqm => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.bedroomsKey)
  int? get bedrooms => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.bathroomsKey)
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.floorsKey)
  int? get floors => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.parkingKey)
  int? get parking => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
  int? get livingRooms => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.landLengthKey)
  double get landLength => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.landWidthKey)
  double get landWidth => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.houseLengthKey)
  double? get houseLength => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.houseWidthKey)
  double? get houseWidth => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
  double get pricePerSqm => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdatePropertyParam.provinceIdKey)
  int get provinceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePropertyParamCopyWith<UpdatePropertyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePropertyParamCopyWith<$Res> {
  factory $UpdatePropertyParamCopyWith(
          UpdatePropertyParam value, $Res Function(UpdatePropertyParam) then) =
      _$UpdatePropertyParamCopyWithImpl<$Res, UpdatePropertyParam>;
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePropertyParam.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: UpdatePropertyParam.imagesKey) List<String> images,
      @JsonKey(name: UpdatePropertyParam.titleKey) String title,
      @JsonKey(name: UpdatePropertyParam.descriptionKey) String description,
      @JsonKey(name: UpdatePropertyParam.latitudeKey) double latitude,
      @JsonKey(name: UpdatePropertyParam.longitudeKey) double longitude,
      @JsonKey(name: UpdatePropertyParam.priceKey) double price,
      @JsonKey(name: UpdatePropertyParam.sqmKey) double sqm,
      @JsonKey(name: UpdatePropertyParam.bedroomsKey) int? bedrooms,
      @JsonKey(name: UpdatePropertyParam.bathroomsKey) int? bathrooms,
      @JsonKey(name: UpdatePropertyParam.floorsKey) int? floors,
      @JsonKey(name: UpdatePropertyParam.parkingKey) int? parking,
      @JsonKey(name: UpdatePropertyParam.livingRoomsKey) int? livingRooms,
      @JsonKey(name: UpdatePropertyParam.landLengthKey) double landLength,
      @JsonKey(name: UpdatePropertyParam.landWidthKey) double landWidth,
      @JsonKey(name: UpdatePropertyParam.houseLengthKey) double? houseLength,
      @JsonKey(name: UpdatePropertyParam.houseWidthKey) double? houseWidth,
      @JsonKey(name: UpdatePropertyParam.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: UpdatePropertyParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdatePropertyParam.userIdKey) String userId,
      @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: UpdatePropertyParam.provinceIdKey) int provinceId});
}

/// @nodoc
class _$UpdatePropertyParamCopyWithImpl<$Res, $Val extends UpdatePropertyParam>
    implements $UpdatePropertyParamCopyWith<$Res> {
  _$UpdatePropertyParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
  }) {
    return _then(_value.copyWith(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePropertyParamImplCopyWith<$Res>
    implements $UpdatePropertyParamCopyWith<$Res> {
  factory _$$UpdatePropertyParamImplCopyWith(_$UpdatePropertyParamImpl value,
          $Res Function(_$UpdatePropertyParamImpl) then) =
      __$$UpdatePropertyParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePropertyParam.listingTypeKey)
      PropertyListingType listingType,
      @JsonKey(name: UpdatePropertyParam.imagesKey) List<String> images,
      @JsonKey(name: UpdatePropertyParam.titleKey) String title,
      @JsonKey(name: UpdatePropertyParam.descriptionKey) String description,
      @JsonKey(name: UpdatePropertyParam.latitudeKey) double latitude,
      @JsonKey(name: UpdatePropertyParam.longitudeKey) double longitude,
      @JsonKey(name: UpdatePropertyParam.priceKey) double price,
      @JsonKey(name: UpdatePropertyParam.sqmKey) double sqm,
      @JsonKey(name: UpdatePropertyParam.bedroomsKey) int? bedrooms,
      @JsonKey(name: UpdatePropertyParam.bathroomsKey) int? bathrooms,
      @JsonKey(name: UpdatePropertyParam.floorsKey) int? floors,
      @JsonKey(name: UpdatePropertyParam.parkingKey) int? parking,
      @JsonKey(name: UpdatePropertyParam.livingRoomsKey) int? livingRooms,
      @JsonKey(name: UpdatePropertyParam.landLengthKey) double landLength,
      @JsonKey(name: UpdatePropertyParam.landWidthKey) double landWidth,
      @JsonKey(name: UpdatePropertyParam.houseLengthKey) double? houseLength,
      @JsonKey(name: UpdatePropertyParam.houseWidthKey) double? houseWidth,
      @JsonKey(name: UpdatePropertyParam.pricePerSqmKey) double pricePerSqm,
      @JsonKey(name: UpdatePropertyParam.createdAtKey) DateTime createdAt,
      @JsonKey(name: UpdatePropertyParam.userIdKey) String userId,
      @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey) int propertyTypeId,
      @JsonKey(name: UpdatePropertyParam.provinceIdKey) int provinceId});
}

/// @nodoc
class __$$UpdatePropertyParamImplCopyWithImpl<$Res>
    extends _$UpdatePropertyParamCopyWithImpl<$Res, _$UpdatePropertyParamImpl>
    implements _$$UpdatePropertyParamImplCopyWith<$Res> {
  __$$UpdatePropertyParamImplCopyWithImpl(_$UpdatePropertyParamImpl _value,
      $Res Function(_$UpdatePropertyParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? userId = null,
    Object? propertyTypeId = null,
    Object? provinceId = null,
  }) {
    return _then(_$UpdatePropertyParamImpl(
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _value.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdatePropertyParamImpl extends _UpdatePropertyParam {
  const _$UpdatePropertyParamImpl(
      {@JsonKey(name: UpdatePropertyParam.listingTypeKey)
      required this.listingType,
      @JsonKey(name: UpdatePropertyParam.imagesKey)
      required final List<String> images,
      @JsonKey(name: UpdatePropertyParam.titleKey) required this.title,
      @JsonKey(name: UpdatePropertyParam.descriptionKey)
      required this.description,
      @JsonKey(name: UpdatePropertyParam.latitudeKey) required this.latitude,
      @JsonKey(name: UpdatePropertyParam.longitudeKey) required this.longitude,
      @JsonKey(name: UpdatePropertyParam.priceKey) required this.price,
      @JsonKey(name: UpdatePropertyParam.sqmKey) required this.sqm,
      @JsonKey(name: UpdatePropertyParam.bedroomsKey) required this.bedrooms,
      @JsonKey(name: UpdatePropertyParam.bathroomsKey) required this.bathrooms,
      @JsonKey(name: UpdatePropertyParam.floorsKey) required this.floors,
      @JsonKey(name: UpdatePropertyParam.parkingKey) required this.parking,
      @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
      required this.livingRooms,
      @JsonKey(name: UpdatePropertyParam.landLengthKey)
      required this.landLength,
      @JsonKey(name: UpdatePropertyParam.landWidthKey) required this.landWidth,
      @JsonKey(name: UpdatePropertyParam.houseLengthKey)
      required this.houseLength,
      @JsonKey(name: UpdatePropertyParam.houseWidthKey)
      required this.houseWidth,
      @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
      required this.pricePerSqm,
      @JsonKey(name: UpdatePropertyParam.createdAtKey) required this.createdAt,
      @JsonKey(name: UpdatePropertyParam.userIdKey) required this.userId,
      @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
      required this.propertyTypeId,
      @JsonKey(name: UpdatePropertyParam.provinceIdKey)
      required this.provinceId})
      : _images = images,
        super._();

  factory _$UpdatePropertyParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePropertyParamImplFromJson(json);

  @override
  @JsonKey(name: UpdatePropertyParam.listingTypeKey)
  final PropertyListingType listingType;
  final List<String> _images;
  @override
  @JsonKey(name: UpdatePropertyParam.imagesKey)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: UpdatePropertyParam.titleKey)
  final String title;
  @override
  @JsonKey(name: UpdatePropertyParam.descriptionKey)
  final String description;
  @override
  @JsonKey(name: UpdatePropertyParam.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: UpdatePropertyParam.longitudeKey)
  final double longitude;
  @override
  @JsonKey(name: UpdatePropertyParam.priceKey)
  final double price;
  @override
  @JsonKey(name: UpdatePropertyParam.sqmKey)
  final double sqm;
  @override
  @JsonKey(name: UpdatePropertyParam.bedroomsKey)
  final int? bedrooms;
  @override
  @JsonKey(name: UpdatePropertyParam.bathroomsKey)
  final int? bathrooms;
  @override
  @JsonKey(name: UpdatePropertyParam.floorsKey)
  final int? floors;
  @override
  @JsonKey(name: UpdatePropertyParam.parkingKey)
  final int? parking;
  @override
  @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
  final int? livingRooms;
  @override
  @JsonKey(name: UpdatePropertyParam.landLengthKey)
  final double landLength;
  @override
  @JsonKey(name: UpdatePropertyParam.landWidthKey)
  final double landWidth;
  @override
  @JsonKey(name: UpdatePropertyParam.houseLengthKey)
  final double? houseLength;
  @override
  @JsonKey(name: UpdatePropertyParam.houseWidthKey)
  final double? houseWidth;
  @override
  @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
  final double pricePerSqm;
  @override
  @JsonKey(name: UpdatePropertyParam.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: UpdatePropertyParam.userIdKey)
  final String userId;
  @override
  @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
  final int propertyTypeId;
  @override
  @JsonKey(name: UpdatePropertyParam.provinceIdKey)
  final int provinceId;

  @override
  String toString() {
    return 'UpdatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePropertyParamImpl &&
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyTypeId, propertyTypeId) ||
                other.propertyTypeId == propertyTypeId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
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
        userId,
        propertyTypeId,
        provinceId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePropertyParamImplCopyWith<_$UpdatePropertyParamImpl> get copyWith =>
      __$$UpdatePropertyParamImplCopyWithImpl<_$UpdatePropertyParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePropertyParamImplToJson(
      this,
    );
  }
}

abstract class _UpdatePropertyParam extends UpdatePropertyParam {
  const factory _UpdatePropertyParam(
      {@JsonKey(name: UpdatePropertyParam.listingTypeKey)
      required final PropertyListingType listingType,
      @JsonKey(name: UpdatePropertyParam.imagesKey)
      required final List<String> images,
      @JsonKey(name: UpdatePropertyParam.titleKey) required final String title,
      @JsonKey(name: UpdatePropertyParam.descriptionKey)
      required final String description,
      @JsonKey(name: UpdatePropertyParam.latitudeKey)
      required final double latitude,
      @JsonKey(name: UpdatePropertyParam.longitudeKey)
      required final double longitude,
      @JsonKey(name: UpdatePropertyParam.priceKey) required final double price,
      @JsonKey(name: UpdatePropertyParam.sqmKey) required final double sqm,
      @JsonKey(name: UpdatePropertyParam.bedroomsKey)
      required final int? bedrooms,
      @JsonKey(name: UpdatePropertyParam.bathroomsKey)
      required final int? bathrooms,
      @JsonKey(name: UpdatePropertyParam.floorsKey) required final int? floors,
      @JsonKey(name: UpdatePropertyParam.parkingKey)
      required final int? parking,
      @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
      required final int? livingRooms,
      @JsonKey(name: UpdatePropertyParam.landLengthKey)
      required final double landLength,
      @JsonKey(name: UpdatePropertyParam.landWidthKey)
      required final double landWidth,
      @JsonKey(name: UpdatePropertyParam.houseLengthKey)
      required final double? houseLength,
      @JsonKey(name: UpdatePropertyParam.houseWidthKey)
      required final double? houseWidth,
      @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
      required final double pricePerSqm,
      @JsonKey(name: UpdatePropertyParam.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: UpdatePropertyParam.userIdKey)
      required final String userId,
      @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
      required final int propertyTypeId,
      @JsonKey(name: UpdatePropertyParam.provinceIdKey)
      required final int provinceId}) = _$UpdatePropertyParamImpl;
  const _UpdatePropertyParam._() : super._();

  factory _UpdatePropertyParam.fromJson(Map<String, dynamic> json) =
      _$UpdatePropertyParamImpl.fromJson;

  @override
  @JsonKey(name: UpdatePropertyParam.listingTypeKey)
  PropertyListingType get listingType;
  @override
  @JsonKey(name: UpdatePropertyParam.imagesKey)
  List<String> get images;
  @override
  @JsonKey(name: UpdatePropertyParam.titleKey)
  String get title;
  @override
  @JsonKey(name: UpdatePropertyParam.descriptionKey)
  String get description;
  @override
  @JsonKey(name: UpdatePropertyParam.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: UpdatePropertyParam.longitudeKey)
  double get longitude;
  @override
  @JsonKey(name: UpdatePropertyParam.priceKey)
  double get price;
  @override
  @JsonKey(name: UpdatePropertyParam.sqmKey)
  double get sqm;
  @override
  @JsonKey(name: UpdatePropertyParam.bedroomsKey)
  int? get bedrooms;
  @override
  @JsonKey(name: UpdatePropertyParam.bathroomsKey)
  int? get bathrooms;
  @override
  @JsonKey(name: UpdatePropertyParam.floorsKey)
  int? get floors;
  @override
  @JsonKey(name: UpdatePropertyParam.parkingKey)
  int? get parking;
  @override
  @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
  int? get livingRooms;
  @override
  @JsonKey(name: UpdatePropertyParam.landLengthKey)
  double get landLength;
  @override
  @JsonKey(name: UpdatePropertyParam.landWidthKey)
  double get landWidth;
  @override
  @JsonKey(name: UpdatePropertyParam.houseLengthKey)
  double? get houseLength;
  @override
  @JsonKey(name: UpdatePropertyParam.houseWidthKey)
  double? get houseWidth;
  @override
  @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
  double get pricePerSqm;
  @override
  @JsonKey(name: UpdatePropertyParam.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: UpdatePropertyParam.userIdKey)
  String get userId;
  @override
  @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId;
  @override
  @JsonKey(name: UpdatePropertyParam.provinceIdKey)
  int get provinceId;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePropertyParamImplCopyWith<_$UpdatePropertyParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
