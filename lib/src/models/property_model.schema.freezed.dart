// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyModel {
  @JsonKey(name: PropertyModel.idKey)
  int get id;
  @JsonKey(name: PropertyModel.statusKey)
  PropertyAndAutoVerbalStatus get status;
  @JsonKey(name: PropertyModel.propertyIdKey)
  String get propertyId;
  @JsonKey(name: PropertyModel.listingTypeKey)
  PropertyListingType get listingType;
  @JsonKey(name: PropertyModel.imagesKey)
  List<String> get images;
  @JsonKey(name: PropertyModel.titleKey)
  String get title;
  @JsonKey(name: PropertyModel.descriptionKey)
  String get description;
  @JsonKey(name: PropertyModel.latitudeKey)
  double get latitude;
  @JsonKey(name: PropertyModel.longitudeKey)
  double get longitude;
  @JsonKey(name: PropertyModel.priceKey)
  double get price;
  @JsonKey(name: PropertyModel.sqmKey)
  double get sqm;
  @JsonKey(name: PropertyModel.bedroomsKey)
  int? get bedrooms;
  @JsonKey(name: PropertyModel.bathroomsKey)
  int? get bathrooms;
  @JsonKey(name: PropertyModel.floorsKey)
  int? get floors;
  @JsonKey(name: PropertyModel.parkingKey)
  int? get parking;
  @JsonKey(name: PropertyModel.livingRoomsKey)
  int? get livingRooms;
  @JsonKey(name: PropertyModel.landLengthKey)
  double get landLength;
  @JsonKey(name: PropertyModel.landWidthKey)
  double get landWidth;
  @JsonKey(name: PropertyModel.houseLengthKey)
  double? get houseLength;
  @JsonKey(name: PropertyModel.houseWidthKey)
  double? get houseWidth;
  @JsonKey(name: PropertyModel.pricePerSqmKey)
  double get pricePerSqm;
  @JsonKey(name: PropertyModel.createdAtKey)
  DateTime get createdAt;
  @JsonKey(name: PropertyModel.userIdKey)
  String get userId;
  @JsonKey(name: PropertyModel.propertyTypeIdKey)
  int get propertyTypeId;
  @JsonKey(name: PropertyModel.provinceIdKey)
  int get provinceId;
  @JsonKey(name: PropertyModel.approvedAtKey)
  DateTime? get approvedAt;
  @JsonKey(name: PropertyModel.rejectedAtKey)
  DateTime? get rejectedAt;
  @JsonKey(name: PropertyModel.rejectReasonKey)
  String? get rejectReason;
  @JsonKey(name: PropertyModel.viewCountKey)
  int get viewCount;
  @JsonKey(name: PropertyModel.likeCountKey)
  int get likeCount;
  @JsonKey(name: PropertyModel.autoVerbalAddedKey)
  bool get autoVerbalAdded;
  @JsonKey(name: PropertyModel.hiddenFromHomePageKey)
  bool get hiddenFromHomePage;
  @JoinedColumn(foreignKey: "property_type_id", candidateKey: null)
  @JsonKey(name: PropertyModel.propertyTypeKey)
  PropertyTypeModel? get propertyType;
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: PropertyModel.provinceKey)
  ProvinceModel? get province;
  @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
  @JsonKey(name: PropertyModel.approvedByKey)
  UserModel? get approvedBy;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyModel.userKey)
  UserModel? get user;

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyModelCopyWith<PropertyModel> get copyWith =>
      _$PropertyModelCopyWithImpl<PropertyModel>(
          this as PropertyModel, _$identity);

  /// Serializes this PropertyModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            const DeepCollectionEquality().equals(other.images, images) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        propertyId,
        listingType,
        const DeepCollectionEquality().hash(images),
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

  @override
  String toString() {
    return 'PropertyModel(id: $id, status: $status, propertyId: $propertyId, listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId, approvedAt: $approvedAt, rejectedAt: $rejectedAt, rejectReason: $rejectReason, viewCount: $viewCount, likeCount: $likeCount, autoVerbalAdded: $autoVerbalAdded, hiddenFromHomePage: $hiddenFromHomePage, propertyType: $propertyType, province: $province, approvedBy: $approvedBy, user: $user)';
  }
}

/// @nodoc
abstract mixin class $PropertyModelCopyWith<$Res> {
  factory $PropertyModelCopyWith(
          PropertyModel value, $Res Function(PropertyModel) _then) =
      _$PropertyModelCopyWithImpl;
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
      PropertyTypeModel? propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      ProvinceModel? province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      UserModel? user});

  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $ProvinceModelCopyWith<$Res>? get province;
  $UserModelCopyWith<$Res>? get approvedBy;
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$PropertyModelCopyWithImpl<$Res>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._self, this._then);

  final PropertyModel _self;
  final $Res Function(PropertyModel) _then;

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
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
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? approvedBy = freezed,
    Object? user = freezed,
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
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _self.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: null == viewCount
          ? _self.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalAdded: null == autoVerbalAdded
          ? _self.autoVerbalAdded
          : autoVerbalAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenFromHomePage: null == hiddenFromHomePage
          ? _self.hiddenFromHomePage
          : hiddenFromHomePage // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res>? get propertyType {
    if (_self.propertyType == null) {
      return null;
    }

    return $PropertyTypeModelCopyWith<$Res>(_self.propertyType!, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_self.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_self.province!, (value) {
      return _then(_self.copyWith(province: value));
    });
  }

  /// Create a copy of PropertyModel
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

  /// Create a copy of PropertyModel
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
}

/// @nodoc

@TableModel(PropertyModel.tableName)
@JsonSerializable(explicitToJson: true)
class _PropertyModel extends PropertyModel {
  const _PropertyModel(
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
  factory _PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

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
  final PropertyTypeModel? propertyType;
  @override
  @JoinedColumn(foreignKey: "province_id", candidateKey: null)
  @JsonKey(name: PropertyModel.provinceKey)
  final ProvinceModel? province;
  @override
  @JoinedColumn(foreignKey: null, candidateKey: "properties_approved_by_fkey")
  @JsonKey(name: PropertyModel.approvedByKey)
  final UserModel? approvedBy;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: PropertyModel.userKey)
  final UserModel? user;

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyModelCopyWith<_PropertyModel> get copyWith =>
      __$PropertyModelCopyWithImpl<_PropertyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PropertyModel(id: $id, status: $status, propertyId: $propertyId, listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId, approvedAt: $approvedAt, rejectedAt: $rejectedAt, rejectReason: $rejectReason, viewCount: $viewCount, likeCount: $likeCount, autoVerbalAdded: $autoVerbalAdded, hiddenFromHomePage: $hiddenFromHomePage, propertyType: $propertyType, province: $province, approvedBy: $approvedBy, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$PropertyModelCopyWith<$Res>
    implements $PropertyModelCopyWith<$Res> {
  factory _$PropertyModelCopyWith(
          _PropertyModel value, $Res Function(_PropertyModel) _then) =
      __$PropertyModelCopyWithImpl;
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
      PropertyTypeModel? propertyType,
      @JoinedColumn(foreignKey: "province_id", candidateKey: null)
      @JsonKey(name: PropertyModel.provinceKey)
      ProvinceModel? province,
      @JoinedColumn(
          foreignKey: null, candidateKey: "properties_approved_by_fkey")
      @JsonKey(name: PropertyModel.approvedByKey)
      UserModel? approvedBy,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: PropertyModel.userKey)
      UserModel? user});

  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $UserModelCopyWith<$Res>? get approvedBy;
  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$PropertyModelCopyWithImpl<$Res>
    implements _$PropertyModelCopyWith<$Res> {
  __$PropertyModelCopyWithImpl(this._self, this._then);

  final _PropertyModel _self;
  final $Res Function(_PropertyModel) _then;

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? approvedBy = freezed,
    Object? user = freezed,
  }) {
    return _then(_PropertyModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyAndAutoVerbalStatus,
      propertyId: null == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectReason: freezed == rejectReason
          ? _self.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: null == viewCount
          ? _self.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      autoVerbalAdded: null == autoVerbalAdded
          ? _self.autoVerbalAdded
          : autoVerbalAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenFromHomePage: null == hiddenFromHomePage
          ? _self.hiddenFromHomePage
          : hiddenFromHomePage // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res>? get propertyType {
    if (_self.propertyType == null) {
      return null;
    }

    return $PropertyTypeModelCopyWith<$Res>(_self.propertyType!, (value) {
      return _then(_self.copyWith(propertyType: value));
    });
  }

  /// Create a copy of PropertyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_self.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_self.province!, (value) {
      return _then(_self.copyWith(province: value));
    });
  }

  /// Create a copy of PropertyModel
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

  /// Create a copy of PropertyModel
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
}

/// @nodoc
mixin _$CreatePropertyParam {
  @JsonKey(name: CreatePropertyParam.listingTypeKey)
  PropertyListingType get listingType;
  @JsonKey(name: CreatePropertyParam.imagesKey)
  List<String> get images;
  @JsonKey(name: CreatePropertyParam.titleKey)
  String get title;
  @JsonKey(name: CreatePropertyParam.descriptionKey)
  String get description;
  @JsonKey(name: CreatePropertyParam.latitudeKey)
  double get latitude;
  @JsonKey(name: CreatePropertyParam.longitudeKey)
  double get longitude;
  @JsonKey(name: CreatePropertyParam.priceKey)
  double get price;
  @JsonKey(name: CreatePropertyParam.sqmKey)
  double get sqm;
  @JsonKey(name: CreatePropertyParam.bedroomsKey)
  int? get bedrooms;
  @JsonKey(name: CreatePropertyParam.bathroomsKey)
  int? get bathrooms;
  @JsonKey(name: CreatePropertyParam.floorsKey)
  int? get floors;
  @JsonKey(name: CreatePropertyParam.parkingKey)
  int? get parking;
  @JsonKey(name: CreatePropertyParam.livingRoomsKey)
  int? get livingRooms;
  @JsonKey(name: CreatePropertyParam.landLengthKey)
  double get landLength;
  @JsonKey(name: CreatePropertyParam.landWidthKey)
  double get landWidth;
  @JsonKey(name: CreatePropertyParam.houseLengthKey)
  double? get houseLength;
  @JsonKey(name: CreatePropertyParam.houseWidthKey)
  double? get houseWidth;
  @JsonKey(name: CreatePropertyParam.pricePerSqmKey)
  double get pricePerSqm;
  @JsonKey(name: CreatePropertyParam.userIdKey)
  String get userId;
  @JsonKey(name: CreatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId;
  @JsonKey(name: CreatePropertyParam.provinceIdKey)
  int get provinceId;

  /// Create a copy of CreatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePropertyParamCopyWith<CreatePropertyParam> get copyWith =>
      _$CreatePropertyParamCopyWithImpl<CreatePropertyParam>(
          this as CreatePropertyParam, _$identity);

  /// Serializes this CreatePropertyParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePropertyParam &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            const DeepCollectionEquality().equals(other.images, images) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        listingType,
        const DeepCollectionEquality().hash(images),
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

  @override
  String toString() {
    return 'CreatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class $CreatePropertyParamCopyWith<$Res> {
  factory $CreatePropertyParamCopyWith(
          CreatePropertyParam value, $Res Function(CreatePropertyParam) _then) =
      _$CreatePropertyParamCopyWithImpl;
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
class _$CreatePropertyParamCopyWithImpl<$Res>
    implements $CreatePropertyParamCopyWith<$Res> {
  _$CreatePropertyParamCopyWithImpl(this._self, this._then);

  final CreatePropertyParam _self;
  final $Res Function(CreatePropertyParam) _then;

  /// Create a copy of CreatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CreatePropertyParam extends CreatePropertyParam {
  const _CreatePropertyParam(
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
  factory _CreatePropertyParam.fromJson(Map<String, dynamic> json) =>
      _$CreatePropertyParamFromJson(json);

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

  /// Create a copy of CreatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePropertyParamCopyWith<_CreatePropertyParam> get copyWith =>
      __$CreatePropertyParamCopyWithImpl<_CreatePropertyParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePropertyParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePropertyParam &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class _$CreatePropertyParamCopyWith<$Res>
    implements $CreatePropertyParamCopyWith<$Res> {
  factory _$CreatePropertyParamCopyWith(_CreatePropertyParam value,
          $Res Function(_CreatePropertyParam) _then) =
      __$CreatePropertyParamCopyWithImpl;
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
class __$CreatePropertyParamCopyWithImpl<$Res>
    implements _$CreatePropertyParamCopyWith<$Res> {
  __$CreatePropertyParamCopyWithImpl(this._self, this._then);

  final _CreatePropertyParam _self;
  final $Res Function(_CreatePropertyParam) _then;

  /// Create a copy of CreatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreatePropertyParam(
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UpdatePropertyParam {
  @JsonKey(name: UpdatePropertyParam.listingTypeKey)
  PropertyListingType get listingType;
  @JsonKey(name: UpdatePropertyParam.imagesKey)
  List<String> get images;
  @JsonKey(name: UpdatePropertyParam.titleKey)
  String get title;
  @JsonKey(name: UpdatePropertyParam.descriptionKey)
  String get description;
  @JsonKey(name: UpdatePropertyParam.latitudeKey)
  double get latitude;
  @JsonKey(name: UpdatePropertyParam.longitudeKey)
  double get longitude;
  @JsonKey(name: UpdatePropertyParam.priceKey)
  double get price;
  @JsonKey(name: UpdatePropertyParam.sqmKey)
  double get sqm;
  @JsonKey(name: UpdatePropertyParam.bedroomsKey)
  int? get bedrooms;
  @JsonKey(name: UpdatePropertyParam.bathroomsKey)
  int? get bathrooms;
  @JsonKey(name: UpdatePropertyParam.floorsKey)
  int? get floors;
  @JsonKey(name: UpdatePropertyParam.parkingKey)
  int? get parking;
  @JsonKey(name: UpdatePropertyParam.livingRoomsKey)
  int? get livingRooms;
  @JsonKey(name: UpdatePropertyParam.landLengthKey)
  double get landLength;
  @JsonKey(name: UpdatePropertyParam.landWidthKey)
  double get landWidth;
  @JsonKey(name: UpdatePropertyParam.houseLengthKey)
  double? get houseLength;
  @JsonKey(name: UpdatePropertyParam.houseWidthKey)
  double? get houseWidth;
  @JsonKey(name: UpdatePropertyParam.pricePerSqmKey)
  double get pricePerSqm;
  @JsonKey(name: UpdatePropertyParam.createdAtKey)
  DateTime get createdAt;
  @JsonKey(name: UpdatePropertyParam.userIdKey)
  String get userId;
  @JsonKey(name: UpdatePropertyParam.propertyTypeIdKey)
  int get propertyTypeId;
  @JsonKey(name: UpdatePropertyParam.provinceIdKey)
  int get provinceId;

  /// Create a copy of UpdatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePropertyParamCopyWith<UpdatePropertyParam> get copyWith =>
      _$UpdatePropertyParamCopyWithImpl<UpdatePropertyParam>(
          this as UpdatePropertyParam, _$identity);

  /// Serializes this UpdatePropertyParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePropertyParam &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            const DeepCollectionEquality().equals(other.images, images) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        listingType,
        const DeepCollectionEquality().hash(images),
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

  @override
  String toString() {
    return 'UpdatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class $UpdatePropertyParamCopyWith<$Res> {
  factory $UpdatePropertyParamCopyWith(
          UpdatePropertyParam value, $Res Function(UpdatePropertyParam) _then) =
      _$UpdatePropertyParamCopyWithImpl;
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
class _$UpdatePropertyParamCopyWithImpl<$Res>
    implements $UpdatePropertyParamCopyWith<$Res> {
  _$UpdatePropertyParamCopyWithImpl(this._self, this._then);

  final UpdatePropertyParam _self;
  final $Res Function(UpdatePropertyParam) _then;

  /// Create a copy of UpdatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UpdatePropertyParam extends UpdatePropertyParam {
  const _UpdatePropertyParam(
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
  factory _UpdatePropertyParam.fromJson(Map<String, dynamic> json) =>
      _$UpdatePropertyParamFromJson(json);

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

  /// Create a copy of UpdatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePropertyParamCopyWith<_UpdatePropertyParam> get copyWith =>
      __$UpdatePropertyParamCopyWithImpl<_UpdatePropertyParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePropertyParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePropertyParam &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdatePropertyParam(listingType: $listingType, images: $images, title: $title, description: $description, latitude: $latitude, longitude: $longitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, houseLength: $houseLength, houseWidth: $houseWidth, pricePerSqm: $pricePerSqm, createdAt: $createdAt, userId: $userId, propertyTypeId: $propertyTypeId, provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePropertyParamCopyWith<$Res>
    implements $UpdatePropertyParamCopyWith<$Res> {
  factory _$UpdatePropertyParamCopyWith(_UpdatePropertyParam value,
          $Res Function(_UpdatePropertyParam) _then) =
      __$UpdatePropertyParamCopyWithImpl;
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
class __$UpdatePropertyParamCopyWithImpl<$Res>
    implements _$UpdatePropertyParamCopyWith<$Res> {
  __$UpdatePropertyParamCopyWithImpl(this._self, this._then);

  final _UpdatePropertyParam _self;
  final $Res Function(_UpdatePropertyParam) _then;

  /// Create a copy of UpdatePropertyParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdatePropertyParam(
      listingType: null == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: freezed == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      floors: freezed == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int?,
      parking: freezed == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingRooms: freezed == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int?,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      houseLength: freezed == houseLength
          ? _self.houseLength
          : houseLength // ignore: cast_nullable_to_non_nullable
              as double?,
      houseWidth: freezed == houseWidth
          ? _self.houseWidth
          : houseWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTypeId: null == propertyTypeId
          ? _self.propertyTypeId
          : propertyTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
