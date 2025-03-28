// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyListFilter implements DiagnosticableTreeMixin {
  IList<PropertyAndAutoVerbalStatus> get statuses;
  IList<int> get propertyIds;
  String? get titleOrDescription;
  ProvinceModel? get province;
  PropertyTypeModel? get propertyType;
  PropertyListingType? get listingType;
  double? get minPrice;
  double? get maxPrice;
  String? get userId;
  DateTime? get dateFrom;
  DateTime? get dateTo;
  bool get showHiddenFromHomePageItem;

  /// Create a copy of PropertyListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyListFilterCopyWith<PropertyListFilter> get copyWith =>
      _$PropertyListFilterCopyWithImpl<PropertyListFilter>(
          this as PropertyListFilter, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PropertyListFilter'))
      ..add(DiagnosticsProperty('statuses', statuses))
      ..add(DiagnosticsProperty('propertyIds', propertyIds))
      ..add(DiagnosticsProperty('titleOrDescription', titleOrDescription))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('listingType', listingType))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('dateFrom', dateFrom))
      ..add(DiagnosticsProperty('dateTo', dateTo))
      ..add(DiagnosticsProperty(
          'showHiddenFromHomePageItem', showHiddenFromHomePageItem));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyListFilter &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            const DeepCollectionEquality()
                .equals(other.propertyIds, propertyIds) &&
            (identical(other.titleOrDescription, titleOrDescription) ||
                other.titleOrDescription == titleOrDescription) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.showHiddenFromHomePageItem,
                    showHiddenFromHomePageItem) ||
                other.showHiddenFromHomePageItem ==
                    showHiddenFromHomePageItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statuses),
      const DeepCollectionEquality().hash(propertyIds),
      titleOrDescription,
      province,
      propertyType,
      listingType,
      minPrice,
      maxPrice,
      userId,
      dateFrom,
      dateTo,
      showHiddenFromHomePageItem);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyListFilter(statuses: $statuses, propertyIds: $propertyIds, titleOrDescription: $titleOrDescription, province: $province, propertyType: $propertyType, listingType: $listingType, minPrice: $minPrice, maxPrice: $maxPrice, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, showHiddenFromHomePageItem: $showHiddenFromHomePageItem)';
  }
}

/// @nodoc
abstract mixin class $PropertyListFilterCopyWith<$Res> {
  factory $PropertyListFilterCopyWith(
          PropertyListFilter value, $Res Function(PropertyListFilter) _then) =
      _$PropertyListFilterCopyWithImpl;
  @useResult
  $Res call(
      {IList<PropertyAndAutoVerbalStatus> statuses,
      IList<int> propertyIds,
      String? titleOrDescription,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      PropertyListingType? listingType,
      double? minPrice,
      double? maxPrice,
      String? userId,
      DateTime? dateFrom,
      DateTime? dateTo,
      bool showHiddenFromHomePageItem});

  $ProvinceModelCopyWith<$Res>? get province;
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
}

/// @nodoc
class _$PropertyListFilterCopyWithImpl<$Res>
    implements $PropertyListFilterCopyWith<$Res> {
  _$PropertyListFilterCopyWithImpl(this._self, this._then);

  final PropertyListFilter _self;
  final $Res Function(PropertyListFilter) _then;

  /// Create a copy of PropertyListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = null,
    Object? propertyIds = null,
    Object? titleOrDescription = freezed,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? listingType = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? userId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? showHiddenFromHomePageItem = null,
  }) {
    return _then(_self.copyWith(
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      propertyIds: null == propertyIds
          ? _self.propertyIds
          : propertyIds // ignore: cast_nullable_to_non_nullable
              as IList<int>,
      titleOrDescription: freezed == titleOrDescription
          ? _self.titleOrDescription
          : titleOrDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      listingType: freezed == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType?,
      minPrice: freezed == minPrice
          ? _self.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFrom: freezed == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      showHiddenFromHomePageItem: null == showHiddenFromHomePageItem
          ? _self.showHiddenFromHomePageItem
          : showHiddenFromHomePageItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of PropertyListFilter
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

  /// Create a copy of PropertyListFilter
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
}

/// @nodoc

class _PropertyListFilter extends PropertyListFilter
    with DiagnosticableTreeMixin {
  const _PropertyListFilter(
      {this.statuses = const IListConst([PropertyAndAutoVerbalStatus.approved]),
      this.propertyIds = const IList.empty(),
      this.titleOrDescription,
      this.province,
      this.propertyType,
      this.listingType,
      this.minPrice,
      this.maxPrice,
      this.userId,
      this.dateFrom,
      this.dateTo,
      this.showHiddenFromHomePageItem = false})
      : super._();

  @override
  @JsonKey()
  final IList<PropertyAndAutoVerbalStatus> statuses;
  @override
  @JsonKey()
  final IList<int> propertyIds;
  @override
  final String? titleOrDescription;
  @override
  final ProvinceModel? province;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final PropertyListingType? listingType;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final String? userId;
  @override
  final DateTime? dateFrom;
  @override
  final DateTime? dateTo;
  @override
  @JsonKey()
  final bool showHiddenFromHomePageItem;

  /// Create a copy of PropertyListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyListFilterCopyWith<_PropertyListFilter> get copyWith =>
      __$PropertyListFilterCopyWithImpl<_PropertyListFilter>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PropertyListFilter'))
      ..add(DiagnosticsProperty('statuses', statuses))
      ..add(DiagnosticsProperty('propertyIds', propertyIds))
      ..add(DiagnosticsProperty('titleOrDescription', titleOrDescription))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('listingType', listingType))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('dateFrom', dateFrom))
      ..add(DiagnosticsProperty('dateTo', dateTo))
      ..add(DiagnosticsProperty(
          'showHiddenFromHomePageItem', showHiddenFromHomePageItem));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyListFilter &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            const DeepCollectionEquality()
                .equals(other.propertyIds, propertyIds) &&
            (identical(other.titleOrDescription, titleOrDescription) ||
                other.titleOrDescription == titleOrDescription) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.showHiddenFromHomePageItem,
                    showHiddenFromHomePageItem) ||
                other.showHiddenFromHomePageItem ==
                    showHiddenFromHomePageItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statuses),
      const DeepCollectionEquality().hash(propertyIds),
      titleOrDescription,
      province,
      propertyType,
      listingType,
      minPrice,
      maxPrice,
      userId,
      dateFrom,
      dateTo,
      showHiddenFromHomePageItem);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyListFilter(statuses: $statuses, propertyIds: $propertyIds, titleOrDescription: $titleOrDescription, province: $province, propertyType: $propertyType, listingType: $listingType, minPrice: $minPrice, maxPrice: $maxPrice, userId: $userId, dateFrom: $dateFrom, dateTo: $dateTo, showHiddenFromHomePageItem: $showHiddenFromHomePageItem)';
  }
}

/// @nodoc
abstract mixin class _$PropertyListFilterCopyWith<$Res>
    implements $PropertyListFilterCopyWith<$Res> {
  factory _$PropertyListFilterCopyWith(
          _PropertyListFilter value, $Res Function(_PropertyListFilter) _then) =
      __$PropertyListFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {IList<PropertyAndAutoVerbalStatus> statuses,
      IList<int> propertyIds,
      String? titleOrDescription,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      PropertyListingType? listingType,
      double? minPrice,
      double? maxPrice,
      String? userId,
      DateTime? dateFrom,
      DateTime? dateTo,
      bool showHiddenFromHomePageItem});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
}

/// @nodoc
class __$PropertyListFilterCopyWithImpl<$Res>
    implements _$PropertyListFilterCopyWith<$Res> {
  __$PropertyListFilterCopyWithImpl(this._self, this._then);

  final _PropertyListFilter _self;
  final $Res Function(_PropertyListFilter) _then;

  /// Create a copy of PropertyListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statuses = null,
    Object? propertyIds = null,
    Object? titleOrDescription = freezed,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? listingType = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? userId = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? showHiddenFromHomePageItem = null,
  }) {
    return _then(_PropertyListFilter(
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      propertyIds: null == propertyIds
          ? _self.propertyIds
          : propertyIds // ignore: cast_nullable_to_non_nullable
              as IList<int>,
      titleOrDescription: freezed == titleOrDescription
          ? _self.titleOrDescription
          : titleOrDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      listingType: freezed == listingType
          ? _self.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType?,
      minPrice: freezed == minPrice
          ? _self.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _self.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFrom: freezed == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      showHiddenFromHomePageItem: null == showHiddenFromHomePageItem
          ? _self.showHiddenFromHomePageItem
          : showHiddenFromHomePageItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of PropertyListFilter
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

  /// Create a copy of PropertyListFilter
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
}

/// @nodoc
mixin _$InsertPropertyState implements DiagnosticableTreeMixin {
  PropertyListingType get propertyListingType;
  IList<XFile> get imageFiles;
  ProvinceModel? get province;
  PropertyTypeModel? get propertyType;
  String get title;
  String get description;
  double get longitude;
  double get latitude;
  double get price;
  double get sqm;
  int get bedrooms;
  int get bathrooms;
  int get floors;
  int get parking;
  double get pricePerSqm;
  int get livingRooms;
  double get landLength;
  double get landWidth;
  double get buildingLength;
  double get buildingWidth;
  ProviderStatus<void> get status;

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsertPropertyStateCopyWith<InsertPropertyState> get copyWith =>
      _$InsertPropertyStateCopyWithImpl<InsertPropertyState>(
          this as InsertPropertyState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InsertPropertyState'))
      ..add(DiagnosticsProperty('propertyListingType', propertyListingType))
      ..add(DiagnosticsProperty('imageFiles', imageFiles))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('sqm', sqm))
      ..add(DiagnosticsProperty('bedrooms', bedrooms))
      ..add(DiagnosticsProperty('bathrooms', bathrooms))
      ..add(DiagnosticsProperty('floors', floors))
      ..add(DiagnosticsProperty('parking', parking))
      ..add(DiagnosticsProperty('pricePerSqm', pricePerSqm))
      ..add(DiagnosticsProperty('livingRooms', livingRooms))
      ..add(DiagnosticsProperty('landLength', landLength))
      ..add(DiagnosticsProperty('landWidth', landWidth))
      ..add(DiagnosticsProperty('buildingLength', buildingLength))
      ..add(DiagnosticsProperty('buildingWidth', buildingWidth))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsertPropertyState &&
            (identical(other.propertyListingType, propertyListingType) ||
                other.propertyListingType == propertyListingType) &&
            const DeepCollectionEquality()
                .equals(other.imageFiles, imageFiles) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sqm, sqm) || other.sqm == sqm) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.livingRooms, livingRooms) ||
                other.livingRooms == livingRooms) &&
            (identical(other.landLength, landLength) ||
                other.landLength == landLength) &&
            (identical(other.landWidth, landWidth) ||
                other.landWidth == landWidth) &&
            (identical(other.buildingLength, buildingLength) ||
                other.buildingLength == buildingLength) &&
            (identical(other.buildingWidth, buildingWidth) ||
                other.buildingWidth == buildingWidth) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propertyListingType,
        const DeepCollectionEquality().hash(imageFiles),
        province,
        propertyType,
        title,
        description,
        longitude,
        latitude,
        price,
        sqm,
        bedrooms,
        bathrooms,
        floors,
        parking,
        pricePerSqm,
        livingRooms,
        landLength,
        landWidth,
        buildingLength,
        buildingWidth,
        status
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InsertPropertyState(propertyListingType: $propertyListingType, imageFiles: $imageFiles, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }
}

/// @nodoc
abstract mixin class $InsertPropertyStateCopyWith<$Res> {
  factory $InsertPropertyStateCopyWith(
          InsertPropertyState value, $Res Function(InsertPropertyState) _then) =
      _$InsertPropertyStateCopyWithImpl;
  @useResult
  $Res call(
      {PropertyListingType propertyListingType,
      IList<XFile> imageFiles,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      String title,
      String description,
      double longitude,
      double latitude,
      double price,
      double sqm,
      int bedrooms,
      int bathrooms,
      int floors,
      int parking,
      double pricePerSqm,
      int livingRooms,
      double landLength,
      double landWidth,
      double buildingLength,
      double buildingWidth,
      ProviderStatus<void> status});

  $ProvinceModelCopyWith<$Res>? get province;
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class _$InsertPropertyStateCopyWithImpl<$Res>
    implements $InsertPropertyStateCopyWith<$Res> {
  _$InsertPropertyStateCopyWithImpl(this._self, this._then);

  final InsertPropertyState _self;
  final $Res Function(InsertPropertyState) _then;

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyListingType = null,
    Object? imageFiles = null,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? title = null,
    Object? description = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? floors = null,
    Object? parking = null,
    Object? pricePerSqm = null,
    Object? livingRooms = null,
    Object? landLength = null,
    Object? landWidth = null,
    Object? buildingLength = null,
    Object? buildingWidth = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      propertyListingType: null == propertyListingType
          ? _self.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      imageFiles: null == imageFiles
          ? _self.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _self.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _self.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of InsertPropertyState
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

  /// Create a copy of InsertPropertyState
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

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc

class _InsertPropertyState extends InsertPropertyState
    with DiagnosticableTreeMixin {
  const _InsertPropertyState(
      {required this.propertyListingType,
      required this.imageFiles,
      required this.province,
      required this.propertyType,
      required this.title,
      required this.description,
      required this.longitude,
      required this.latitude,
      required this.price,
      required this.sqm,
      required this.bedrooms,
      required this.bathrooms,
      required this.floors,
      required this.parking,
      required this.pricePerSqm,
      required this.livingRooms,
      required this.landLength,
      required this.landWidth,
      required this.buildingLength,
      required this.buildingWidth,
      this.status = const ProviderStatus.initial()})
      : super._();

  @override
  final PropertyListingType propertyListingType;
  @override
  final IList<XFile> imageFiles;
  @override
  final ProvinceModel? province;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final String title;
  @override
  final String description;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final double price;
  @override
  final double sqm;
  @override
  final int bedrooms;
  @override
  final int bathrooms;
  @override
  final int floors;
  @override
  final int parking;
  @override
  final double pricePerSqm;
  @override
  final int livingRooms;
  @override
  final double landLength;
  @override
  final double landWidth;
  @override
  final double buildingLength;
  @override
  final double buildingWidth;
  @override
  @JsonKey()
  final ProviderStatus<void> status;

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InsertPropertyStateCopyWith<_InsertPropertyState> get copyWith =>
      __$InsertPropertyStateCopyWithImpl<_InsertPropertyState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'InsertPropertyState'))
      ..add(DiagnosticsProperty('propertyListingType', propertyListingType))
      ..add(DiagnosticsProperty('imageFiles', imageFiles))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('sqm', sqm))
      ..add(DiagnosticsProperty('bedrooms', bedrooms))
      ..add(DiagnosticsProperty('bathrooms', bathrooms))
      ..add(DiagnosticsProperty('floors', floors))
      ..add(DiagnosticsProperty('parking', parking))
      ..add(DiagnosticsProperty('pricePerSqm', pricePerSqm))
      ..add(DiagnosticsProperty('livingRooms', livingRooms))
      ..add(DiagnosticsProperty('landLength', landLength))
      ..add(DiagnosticsProperty('landWidth', landWidth))
      ..add(DiagnosticsProperty('buildingLength', buildingLength))
      ..add(DiagnosticsProperty('buildingWidth', buildingWidth))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsertPropertyState &&
            (identical(other.propertyListingType, propertyListingType) ||
                other.propertyListingType == propertyListingType) &&
            const DeepCollectionEquality()
                .equals(other.imageFiles, imageFiles) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sqm, sqm) || other.sqm == sqm) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.livingRooms, livingRooms) ||
                other.livingRooms == livingRooms) &&
            (identical(other.landLength, landLength) ||
                other.landLength == landLength) &&
            (identical(other.landWidth, landWidth) ||
                other.landWidth == landWidth) &&
            (identical(other.buildingLength, buildingLength) ||
                other.buildingLength == buildingLength) &&
            (identical(other.buildingWidth, buildingWidth) ||
                other.buildingWidth == buildingWidth) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propertyListingType,
        const DeepCollectionEquality().hash(imageFiles),
        province,
        propertyType,
        title,
        description,
        longitude,
        latitude,
        price,
        sqm,
        bedrooms,
        bathrooms,
        floors,
        parking,
        pricePerSqm,
        livingRooms,
        landLength,
        landWidth,
        buildingLength,
        buildingWidth,
        status
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InsertPropertyState(propertyListingType: $propertyListingType, imageFiles: $imageFiles, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$InsertPropertyStateCopyWith<$Res>
    implements $InsertPropertyStateCopyWith<$Res> {
  factory _$InsertPropertyStateCopyWith(_InsertPropertyState value,
          $Res Function(_InsertPropertyState) _then) =
      __$InsertPropertyStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PropertyListingType propertyListingType,
      IList<XFile> imageFiles,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      String title,
      String description,
      double longitude,
      double latitude,
      double price,
      double sqm,
      int bedrooms,
      int bathrooms,
      int floors,
      int parking,
      double pricePerSqm,
      int livingRooms,
      double landLength,
      double landWidth,
      double buildingLength,
      double buildingWidth,
      ProviderStatus<void> status});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class __$InsertPropertyStateCopyWithImpl<$Res>
    implements _$InsertPropertyStateCopyWith<$Res> {
  __$InsertPropertyStateCopyWithImpl(this._self, this._then);

  final _InsertPropertyState _self;
  final $Res Function(_InsertPropertyState) _then;

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? propertyListingType = null,
    Object? imageFiles = null,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? title = null,
    Object? description = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? floors = null,
    Object? parking = null,
    Object? pricePerSqm = null,
    Object? livingRooms = null,
    Object? landLength = null,
    Object? landWidth = null,
    Object? buildingLength = null,
    Object? buildingWidth = null,
    Object? status = null,
  }) {
    return _then(_InsertPropertyState(
      propertyListingType: null == propertyListingType
          ? _self.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      imageFiles: null == imageFiles
          ? _self.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _self.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _self.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of InsertPropertyState
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

  /// Create a copy of InsertPropertyState
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

  /// Create a copy of InsertPropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc
mixin _$UpdatePropertyState implements DiagnosticableTreeMixin {
  PropertyListingType get propertyListingType;
  IList<XFile> get newImageFiles;
  IList<String> get existingImageUrls;
  ProvinceModel? get province;
  PropertyTypeModel? get propertyType;
  String get title;
  String get description;
  double get longitude;
  double get latitude;
  double get price;
  double get sqm;
  int get bedrooms;
  int get bathrooms;
  int get floors;
  int get parking;
  double get pricePerSqm;
  int get livingRooms;
  double get landLength;
  double get landWidth;
  double get buildingLength;
  double get buildingWidth;
  ProviderStatus<void> get status;

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePropertyStateCopyWith<UpdatePropertyState> get copyWith =>
      _$UpdatePropertyStateCopyWithImpl<UpdatePropertyState>(
          this as UpdatePropertyState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UpdatePropertyState'))
      ..add(DiagnosticsProperty('propertyListingType', propertyListingType))
      ..add(DiagnosticsProperty('newImageFiles', newImageFiles))
      ..add(DiagnosticsProperty('existingImageUrls', existingImageUrls))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('sqm', sqm))
      ..add(DiagnosticsProperty('bedrooms', bedrooms))
      ..add(DiagnosticsProperty('bathrooms', bathrooms))
      ..add(DiagnosticsProperty('floors', floors))
      ..add(DiagnosticsProperty('parking', parking))
      ..add(DiagnosticsProperty('pricePerSqm', pricePerSqm))
      ..add(DiagnosticsProperty('livingRooms', livingRooms))
      ..add(DiagnosticsProperty('landLength', landLength))
      ..add(DiagnosticsProperty('landWidth', landWidth))
      ..add(DiagnosticsProperty('buildingLength', buildingLength))
      ..add(DiagnosticsProperty('buildingWidth', buildingWidth))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePropertyState &&
            (identical(other.propertyListingType, propertyListingType) ||
                other.propertyListingType == propertyListingType) &&
            const DeepCollectionEquality()
                .equals(other.newImageFiles, newImageFiles) &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sqm, sqm) || other.sqm == sqm) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.livingRooms, livingRooms) ||
                other.livingRooms == livingRooms) &&
            (identical(other.landLength, landLength) ||
                other.landLength == landLength) &&
            (identical(other.landWidth, landWidth) ||
                other.landWidth == landWidth) &&
            (identical(other.buildingLength, buildingLength) ||
                other.buildingLength == buildingLength) &&
            (identical(other.buildingWidth, buildingWidth) ||
                other.buildingWidth == buildingWidth) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propertyListingType,
        const DeepCollectionEquality().hash(newImageFiles),
        const DeepCollectionEquality().hash(existingImageUrls),
        province,
        propertyType,
        title,
        description,
        longitude,
        latitude,
        price,
        sqm,
        bedrooms,
        bathrooms,
        floors,
        parking,
        pricePerSqm,
        livingRooms,
        landLength,
        landWidth,
        buildingLength,
        buildingWidth,
        status
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdatePropertyState(propertyListingType: $propertyListingType, newImageFiles: $newImageFiles, existingImageUrls: $existingImageUrls, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }
}

/// @nodoc
abstract mixin class $UpdatePropertyStateCopyWith<$Res> {
  factory $UpdatePropertyStateCopyWith(
          UpdatePropertyState value, $Res Function(UpdatePropertyState) _then) =
      _$UpdatePropertyStateCopyWithImpl;
  @useResult
  $Res call(
      {PropertyListingType propertyListingType,
      IList<XFile> newImageFiles,
      IList<String> existingImageUrls,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      String title,
      String description,
      double longitude,
      double latitude,
      double price,
      double sqm,
      int bedrooms,
      int bathrooms,
      int floors,
      int parking,
      double pricePerSqm,
      int livingRooms,
      double landLength,
      double landWidth,
      double buildingLength,
      double buildingWidth,
      ProviderStatus<void> status});

  $ProvinceModelCopyWith<$Res>? get province;
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class _$UpdatePropertyStateCopyWithImpl<$Res>
    implements $UpdatePropertyStateCopyWith<$Res> {
  _$UpdatePropertyStateCopyWithImpl(this._self, this._then);

  final UpdatePropertyState _self;
  final $Res Function(UpdatePropertyState) _then;

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyListingType = null,
    Object? newImageFiles = null,
    Object? existingImageUrls = null,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? title = null,
    Object? description = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? floors = null,
    Object? parking = null,
    Object? pricePerSqm = null,
    Object? livingRooms = null,
    Object? landLength = null,
    Object? landWidth = null,
    Object? buildingLength = null,
    Object? buildingWidth = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      propertyListingType: null == propertyListingType
          ? _self.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      newImageFiles: null == newImageFiles
          ? _self.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _self.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _self.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of UpdatePropertyState
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

  /// Create a copy of UpdatePropertyState
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

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// @nodoc

class _UpdatePropertyState extends UpdatePropertyState
    with DiagnosticableTreeMixin {
  const _UpdatePropertyState(
      {required this.propertyListingType,
      required this.newImageFiles,
      required this.existingImageUrls,
      required this.province,
      required this.propertyType,
      required this.title,
      required this.description,
      required this.longitude,
      required this.latitude,
      required this.price,
      required this.sqm,
      required this.bedrooms,
      required this.bathrooms,
      required this.floors,
      required this.parking,
      required this.pricePerSqm,
      required this.livingRooms,
      required this.landLength,
      required this.landWidth,
      required this.buildingLength,
      required this.buildingWidth,
      this.status = const ProviderStatus.initial()})
      : super._();

  @override
  final PropertyListingType propertyListingType;
  @override
  final IList<XFile> newImageFiles;
  @override
  final IList<String> existingImageUrls;
  @override
  final ProvinceModel? province;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final String title;
  @override
  final String description;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final double price;
  @override
  final double sqm;
  @override
  final int bedrooms;
  @override
  final int bathrooms;
  @override
  final int floors;
  @override
  final int parking;
  @override
  final double pricePerSqm;
  @override
  final int livingRooms;
  @override
  final double landLength;
  @override
  final double landWidth;
  @override
  final double buildingLength;
  @override
  final double buildingWidth;
  @override
  @JsonKey()
  final ProviderStatus<void> status;

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePropertyStateCopyWith<_UpdatePropertyState> get copyWith =>
      __$UpdatePropertyStateCopyWithImpl<_UpdatePropertyState>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UpdatePropertyState'))
      ..add(DiagnosticsProperty('propertyListingType', propertyListingType))
      ..add(DiagnosticsProperty('newImageFiles', newImageFiles))
      ..add(DiagnosticsProperty('existingImageUrls', existingImageUrls))
      ..add(DiagnosticsProperty('province', province))
      ..add(DiagnosticsProperty('propertyType', propertyType))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('sqm', sqm))
      ..add(DiagnosticsProperty('bedrooms', bedrooms))
      ..add(DiagnosticsProperty('bathrooms', bathrooms))
      ..add(DiagnosticsProperty('floors', floors))
      ..add(DiagnosticsProperty('parking', parking))
      ..add(DiagnosticsProperty('pricePerSqm', pricePerSqm))
      ..add(DiagnosticsProperty('livingRooms', livingRooms))
      ..add(DiagnosticsProperty('landLength', landLength))
      ..add(DiagnosticsProperty('landWidth', landWidth))
      ..add(DiagnosticsProperty('buildingLength', buildingLength))
      ..add(DiagnosticsProperty('buildingWidth', buildingWidth))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePropertyState &&
            (identical(other.propertyListingType, propertyListingType) ||
                other.propertyListingType == propertyListingType) &&
            const DeepCollectionEquality()
                .equals(other.newImageFiles, newImageFiles) &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sqm, sqm) || other.sqm == sqm) &&
            (identical(other.bedrooms, bedrooms) ||
                other.bedrooms == bedrooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.floors, floors) || other.floors == floors) &&
            (identical(other.parking, parking) || other.parking == parking) &&
            (identical(other.pricePerSqm, pricePerSqm) ||
                other.pricePerSqm == pricePerSqm) &&
            (identical(other.livingRooms, livingRooms) ||
                other.livingRooms == livingRooms) &&
            (identical(other.landLength, landLength) ||
                other.landLength == landLength) &&
            (identical(other.landWidth, landWidth) ||
                other.landWidth == landWidth) &&
            (identical(other.buildingLength, buildingLength) ||
                other.buildingLength == buildingLength) &&
            (identical(other.buildingWidth, buildingWidth) ||
                other.buildingWidth == buildingWidth) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        propertyListingType,
        const DeepCollectionEquality().hash(newImageFiles),
        const DeepCollectionEquality().hash(existingImageUrls),
        province,
        propertyType,
        title,
        description,
        longitude,
        latitude,
        price,
        sqm,
        bedrooms,
        bathrooms,
        floors,
        parking,
        pricePerSqm,
        livingRooms,
        landLength,
        landWidth,
        buildingLength,
        buildingWidth,
        status
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdatePropertyState(propertyListingType: $propertyListingType, newImageFiles: $newImageFiles, existingImageUrls: $existingImageUrls, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePropertyStateCopyWith<$Res>
    implements $UpdatePropertyStateCopyWith<$Res> {
  factory _$UpdatePropertyStateCopyWith(_UpdatePropertyState value,
          $Res Function(_UpdatePropertyState) _then) =
      __$UpdatePropertyStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PropertyListingType propertyListingType,
      IList<XFile> newImageFiles,
      IList<String> existingImageUrls,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      String title,
      String description,
      double longitude,
      double latitude,
      double price,
      double sqm,
      int bedrooms,
      int bathrooms,
      int floors,
      int parking,
      double pricePerSqm,
      int livingRooms,
      double landLength,
      double landWidth,
      double buildingLength,
      double buildingWidth,
      ProviderStatus<void> status});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class __$UpdatePropertyStateCopyWithImpl<$Res>
    implements _$UpdatePropertyStateCopyWith<$Res> {
  __$UpdatePropertyStateCopyWithImpl(this._self, this._then);

  final _UpdatePropertyState _self;
  final $Res Function(_UpdatePropertyState) _then;

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? propertyListingType = null,
    Object? newImageFiles = null,
    Object? existingImageUrls = null,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? title = null,
    Object? description = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? price = null,
    Object? sqm = null,
    Object? bedrooms = null,
    Object? bathrooms = null,
    Object? floors = null,
    Object? parking = null,
    Object? pricePerSqm = null,
    Object? livingRooms = null,
    Object? landLength = null,
    Object? landWidth = null,
    Object? buildingLength = null,
    Object? buildingWidth = null,
    Object? status = null,
  }) {
    return _then(_UpdatePropertyState(
      propertyListingType: null == propertyListingType
          ? _self.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      newImageFiles: null == newImageFiles
          ? _self.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _self.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _self.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _self.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _self.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _self.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _self.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _self.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _self.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _self.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _self.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _self.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of UpdatePropertyState
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

  /// Create a copy of UpdatePropertyState
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

  /// Create a copy of UpdatePropertyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

// dart format on
