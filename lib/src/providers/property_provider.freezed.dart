// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyListFilter {
  IList<PropertyAndAutoVerbalStatus> get statuses =>
      throw _privateConstructorUsedError;
  IList<int> get propertyIds => throw _privateConstructorUsedError;
  String? get titleOrDescription => throw _privateConstructorUsedError;
  ProvinceModel? get province => throw _privateConstructorUsedError;
  PropertyTypeModel? get propertyType => throw _privateConstructorUsedError;
  PropertyListingType? get listingType => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  bool get showAutoVerbalAddedItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyListFilterCopyWith<PropertyListFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListFilterCopyWith<$Res> {
  factory $PropertyListFilterCopyWith(
          PropertyListFilter value, $Res Function(PropertyListFilter) then) =
      _$PropertyListFilterCopyWithImpl<$Res, PropertyListFilter>;
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
      bool showAutoVerbalAddedItem});

  $ProvinceModelCopyWith<$Res>? get province;
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
}

/// @nodoc
class _$PropertyListFilterCopyWithImpl<$Res, $Val extends PropertyListFilter>
    implements $PropertyListFilterCopyWith<$Res> {
  _$PropertyListFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? showAutoVerbalAddedItem = null,
  }) {
    return _then(_value.copyWith(
      statuses: null == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      propertyIds: null == propertyIds
          ? _value.propertyIds
          : propertyIds // ignore: cast_nullable_to_non_nullable
              as IList<int>,
      titleOrDescription: freezed == titleOrDescription
          ? _value.titleOrDescription
          : titleOrDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      listingType: freezed == listingType
          ? _value.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      showAutoVerbalAddedItem: null == showAutoVerbalAddedItem
          ? _value.showAutoVerbalAddedItem
          : showAutoVerbalAddedItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyListFilterImplCopyWith<$Res>
    implements $PropertyListFilterCopyWith<$Res> {
  factory _$$PropertyListFilterImplCopyWith(_$PropertyListFilterImpl value,
          $Res Function(_$PropertyListFilterImpl) then) =
      __$$PropertyListFilterImplCopyWithImpl<$Res>;
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
      bool showAutoVerbalAddedItem});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
}

/// @nodoc
class __$$PropertyListFilterImplCopyWithImpl<$Res>
    extends _$PropertyListFilterCopyWithImpl<$Res, _$PropertyListFilterImpl>
    implements _$$PropertyListFilterImplCopyWith<$Res> {
  __$$PropertyListFilterImplCopyWithImpl(_$PropertyListFilterImpl _value,
      $Res Function(_$PropertyListFilterImpl) _then)
      : super(_value, _then);

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
    Object? showAutoVerbalAddedItem = null,
  }) {
    return _then(_$PropertyListFilterImpl(
      statuses: null == statuses
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      propertyIds: null == propertyIds
          ? _value.propertyIds
          : propertyIds // ignore: cast_nullable_to_non_nullable
              as IList<int>,
      titleOrDescription: freezed == titleOrDescription
          ? _value.titleOrDescription
          : titleOrDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      listingType: freezed == listingType
          ? _value.listingType
          : listingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      showAutoVerbalAddedItem: null == showAutoVerbalAddedItem
          ? _value.showAutoVerbalAddedItem
          : showAutoVerbalAddedItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PropertyListFilterImpl extends _PropertyListFilter
    with DiagnosticableTreeMixin {
  const _$PropertyListFilterImpl(
      {this.statuses = const IListConst([PropertyAndAutoVerbalStatus.approved]),
      this.propertyIds = const IList.empty(),
      this.titleOrDescription,
      this.province,
      this.propertyType,
      this.listingType,
      this.minPrice,
      this.maxPrice,
      this.userId,
      this.showAutoVerbalAddedItem = true})
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
  @JsonKey()
  final bool showAutoVerbalAddedItem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyListFilter(statuses: $statuses, propertyIds: $propertyIds, titleOrDescription: $titleOrDescription, province: $province, propertyType: $propertyType, listingType: $listingType, minPrice: $minPrice, maxPrice: $maxPrice, userId: $userId, showAutoVerbalAddedItem: $showAutoVerbalAddedItem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
      ..add(DiagnosticsProperty(
          'showAutoVerbalAddedItem', showAutoVerbalAddedItem));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListFilterImpl &&
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
            (identical(
                    other.showAutoVerbalAddedItem, showAutoVerbalAddedItem) ||
                other.showAutoVerbalAddedItem == showAutoVerbalAddedItem));
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
      showAutoVerbalAddedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListFilterImplCopyWith<_$PropertyListFilterImpl> get copyWith =>
      __$$PropertyListFilterImplCopyWithImpl<_$PropertyListFilterImpl>(
          this, _$identity);
}

abstract class _PropertyListFilter extends PropertyListFilter {
  const factory _PropertyListFilter(
      {final IList<PropertyAndAutoVerbalStatus> statuses,
      final IList<int> propertyIds,
      final String? titleOrDescription,
      final ProvinceModel? province,
      final PropertyTypeModel? propertyType,
      final PropertyListingType? listingType,
      final double? minPrice,
      final double? maxPrice,
      final String? userId,
      final bool showAutoVerbalAddedItem}) = _$PropertyListFilterImpl;
  const _PropertyListFilter._() : super._();

  @override
  IList<PropertyAndAutoVerbalStatus> get statuses;
  @override
  IList<int> get propertyIds;
  @override
  String? get titleOrDescription;
  @override
  ProvinceModel? get province;
  @override
  PropertyTypeModel? get propertyType;
  @override
  PropertyListingType? get listingType;
  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  String? get userId;
  @override
  bool get showAutoVerbalAddedItem;
  @override
  @JsonKey(ignore: true)
  _$$PropertyListFilterImplCopyWith<_$PropertyListFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InsertPropertyState {
  PropertyListingType get propertyListingType =>
      throw _privateConstructorUsedError;
  IList<XFile> get imageFiles => throw _privateConstructorUsedError;
  ProvinceModel? get province => throw _privateConstructorUsedError;
  PropertyTypeModel? get propertyType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get sqm => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;
  int get floors => throw _privateConstructorUsedError;
  int get parking => throw _privateConstructorUsedError;
  double get pricePerSqm => throw _privateConstructorUsedError;
  int get livingRooms => throw _privateConstructorUsedError;
  double get landLength => throw _privateConstructorUsedError;
  double get landWidth => throw _privateConstructorUsedError;
  double get buildingLength => throw _privateConstructorUsedError;
  double get buildingWidth => throw _privateConstructorUsedError;
  ProviderStatus<void> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsertPropertyStateCopyWith<InsertPropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertPropertyStateCopyWith<$Res> {
  factory $InsertPropertyStateCopyWith(
          InsertPropertyState value, $Res Function(InsertPropertyState) then) =
      _$InsertPropertyStateCopyWithImpl<$Res, InsertPropertyState>;
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
class _$InsertPropertyStateCopyWithImpl<$Res, $Val extends InsertPropertyState>
    implements $InsertPropertyStateCopyWith<$Res> {
  _$InsertPropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      propertyListingType: null == propertyListingType
          ? _value.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      imageFiles: null == imageFiles
          ? _value.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _value.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _value.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsertPropertyStateImplCopyWith<$Res>
    implements $InsertPropertyStateCopyWith<$Res> {
  factory _$$InsertPropertyStateImplCopyWith(_$InsertPropertyStateImpl value,
          $Res Function(_$InsertPropertyStateImpl) then) =
      __$$InsertPropertyStateImplCopyWithImpl<$Res>;
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
class __$$InsertPropertyStateImplCopyWithImpl<$Res>
    extends _$InsertPropertyStateCopyWithImpl<$Res, _$InsertPropertyStateImpl>
    implements _$$InsertPropertyStateImplCopyWith<$Res> {
  __$$InsertPropertyStateImplCopyWithImpl(_$InsertPropertyStateImpl _value,
      $Res Function(_$InsertPropertyStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$InsertPropertyStateImpl(
      propertyListingType: null == propertyListingType
          ? _value.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      imageFiles: null == imageFiles
          ? _value.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _value.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _value.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }
}

/// @nodoc

class _$InsertPropertyStateImpl extends _InsertPropertyState
    with DiagnosticableTreeMixin {
  const _$InsertPropertyStateImpl(
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InsertPropertyState(propertyListingType: $propertyListingType, imageFiles: $imageFiles, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$InsertPropertyStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertPropertyStateImplCopyWith<_$InsertPropertyStateImpl> get copyWith =>
      __$$InsertPropertyStateImplCopyWithImpl<_$InsertPropertyStateImpl>(
          this, _$identity);
}

abstract class _InsertPropertyState extends InsertPropertyState {
  const factory _InsertPropertyState(
      {required final PropertyListingType propertyListingType,
      required final IList<XFile> imageFiles,
      required final ProvinceModel? province,
      required final PropertyTypeModel? propertyType,
      required final String title,
      required final String description,
      required final double longitude,
      required final double latitude,
      required final double price,
      required final double sqm,
      required final int bedrooms,
      required final int bathrooms,
      required final int floors,
      required final int parking,
      required final double pricePerSqm,
      required final int livingRooms,
      required final double landLength,
      required final double landWidth,
      required final double buildingLength,
      required final double buildingWidth,
      final ProviderStatus<void> status}) = _$InsertPropertyStateImpl;
  const _InsertPropertyState._() : super._();

  @override
  PropertyListingType get propertyListingType;
  @override
  IList<XFile> get imageFiles;
  @override
  ProvinceModel? get province;
  @override
  PropertyTypeModel? get propertyType;
  @override
  String get title;
  @override
  String get description;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  double get price;
  @override
  double get sqm;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  int get floors;
  @override
  int get parking;
  @override
  double get pricePerSqm;
  @override
  int get livingRooms;
  @override
  double get landLength;
  @override
  double get landWidth;
  @override
  double get buildingLength;
  @override
  double get buildingWidth;
  @override
  ProviderStatus<void> get status;
  @override
  @JsonKey(ignore: true)
  _$$InsertPropertyStateImplCopyWith<_$InsertPropertyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdatePropertyState {
  PropertyListingType get propertyListingType =>
      throw _privateConstructorUsedError;
  IList<XFile> get newImageFiles => throw _privateConstructorUsedError;
  IList<String> get existingImageUrls => throw _privateConstructorUsedError;
  ProvinceModel? get province => throw _privateConstructorUsedError;
  PropertyTypeModel? get propertyType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get sqm => throw _privateConstructorUsedError;
  int get bedrooms => throw _privateConstructorUsedError;
  int get bathrooms => throw _privateConstructorUsedError;
  int get floors => throw _privateConstructorUsedError;
  int get parking => throw _privateConstructorUsedError;
  double get pricePerSqm => throw _privateConstructorUsedError;
  int get livingRooms => throw _privateConstructorUsedError;
  double get landLength => throw _privateConstructorUsedError;
  double get landWidth => throw _privateConstructorUsedError;
  double get buildingLength => throw _privateConstructorUsedError;
  double get buildingWidth => throw _privateConstructorUsedError;
  ProviderStatus<void> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePropertyStateCopyWith<UpdatePropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePropertyStateCopyWith<$Res> {
  factory $UpdatePropertyStateCopyWith(
          UpdatePropertyState value, $Res Function(UpdatePropertyState) then) =
      _$UpdatePropertyStateCopyWithImpl<$Res, UpdatePropertyState>;
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
class _$UpdatePropertyStateCopyWithImpl<$Res, $Val extends UpdatePropertyState>
    implements $UpdatePropertyStateCopyWith<$Res> {
  _$UpdatePropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      propertyListingType: null == propertyListingType
          ? _value.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      newImageFiles: null == newImageFiles
          ? _value.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _value.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _value.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _value.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $ProvinceModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeModelCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePropertyStateImplCopyWith<$Res>
    implements $UpdatePropertyStateCopyWith<$Res> {
  factory _$$UpdatePropertyStateImplCopyWith(_$UpdatePropertyStateImpl value,
          $Res Function(_$UpdatePropertyStateImpl) then) =
      __$$UpdatePropertyStateImplCopyWithImpl<$Res>;
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
class __$$UpdatePropertyStateImplCopyWithImpl<$Res>
    extends _$UpdatePropertyStateCopyWithImpl<$Res, _$UpdatePropertyStateImpl>
    implements _$$UpdatePropertyStateImplCopyWith<$Res> {
  __$$UpdatePropertyStateImplCopyWithImpl(_$UpdatePropertyStateImpl _value,
      $Res Function(_$UpdatePropertyStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdatePropertyStateImpl(
      propertyListingType: null == propertyListingType
          ? _value.propertyListingType
          : propertyListingType // ignore: cast_nullable_to_non_nullable
              as PropertyListingType,
      newImageFiles: null == newImageFiles
          ? _value.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _value.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sqm: null == sqm
          ? _value.sqm
          : sqm // ignore: cast_nullable_to_non_nullable
              as double,
      bedrooms: null == bedrooms
          ? _value.bedrooms
          : bedrooms // ignore: cast_nullable_to_non_nullable
              as int,
      bathrooms: null == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int,
      floors: null == floors
          ? _value.floors
          : floors // ignore: cast_nullable_to_non_nullable
              as int,
      parking: null == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerSqm: null == pricePerSqm
          ? _value.pricePerSqm
          : pricePerSqm // ignore: cast_nullable_to_non_nullable
              as double,
      livingRooms: null == livingRooms
          ? _value.livingRooms
          : livingRooms // ignore: cast_nullable_to_non_nullable
              as int,
      landLength: null == landLength
          ? _value.landLength
          : landLength // ignore: cast_nullable_to_non_nullable
              as double,
      landWidth: null == landWidth
          ? _value.landWidth
          : landWidth // ignore: cast_nullable_to_non_nullable
              as double,
      buildingLength: null == buildingLength
          ? _value.buildingLength
          : buildingLength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingWidth: null == buildingWidth
          ? _value.buildingWidth
          : buildingWidth // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }
}

/// @nodoc

class _$UpdatePropertyStateImpl extends _UpdatePropertyState
    with DiagnosticableTreeMixin {
  const _$UpdatePropertyStateImpl(
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdatePropertyState(propertyListingType: $propertyListingType, newImageFiles: $newImageFiles, existingImageUrls: $existingImageUrls, province: $province, propertyType: $propertyType, title: $title, description: $description, longitude: $longitude, latitude: $latitude, price: $price, sqm: $sqm, bedrooms: $bedrooms, bathrooms: $bathrooms, floors: $floors, parking: $parking, pricePerSqm: $pricePerSqm, livingRooms: $livingRooms, landLength: $landLength, landWidth: $landWidth, buildingLength: $buildingLength, buildingWidth: $buildingWidth, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
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
            other is _$UpdatePropertyStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePropertyStateImplCopyWith<_$UpdatePropertyStateImpl> get copyWith =>
      __$$UpdatePropertyStateImplCopyWithImpl<_$UpdatePropertyStateImpl>(
          this, _$identity);
}

abstract class _UpdatePropertyState extends UpdatePropertyState {
  const factory _UpdatePropertyState(
      {required final PropertyListingType propertyListingType,
      required final IList<XFile> newImageFiles,
      required final IList<String> existingImageUrls,
      required final ProvinceModel? province,
      required final PropertyTypeModel? propertyType,
      required final String title,
      required final String description,
      required final double longitude,
      required final double latitude,
      required final double price,
      required final double sqm,
      required final int bedrooms,
      required final int bathrooms,
      required final int floors,
      required final int parking,
      required final double pricePerSqm,
      required final int livingRooms,
      required final double landLength,
      required final double landWidth,
      required final double buildingLength,
      required final double buildingWidth,
      final ProviderStatus<void> status}) = _$UpdatePropertyStateImpl;
  const _UpdatePropertyState._() : super._();

  @override
  PropertyListingType get propertyListingType;
  @override
  IList<XFile> get newImageFiles;
  @override
  IList<String> get existingImageUrls;
  @override
  ProvinceModel? get province;
  @override
  PropertyTypeModel? get propertyType;
  @override
  String get title;
  @override
  String get description;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  double get price;
  @override
  double get sqm;
  @override
  int get bedrooms;
  @override
  int get bathrooms;
  @override
  int get floors;
  @override
  int get parking;
  @override
  double get pricePerSqm;
  @override
  int get livingRooms;
  @override
  double get landLength;
  @override
  double get landWidth;
  @override
  double get buildingLength;
  @override
  double get buildingWidth;
  @override
  ProviderStatus<void> get status;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePropertyStateImplCopyWith<_$UpdatePropertyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
