// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_verbal_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoVerbalListFilter {
  IList<PropertyAndAutoVerbalStatus> get statuses;
  String? get ownerNameOrPhone;
  ProvinceModel? get province;
  PropertyTypeModel? get propertyType;
  BankModel? get bank;
  String? get bankBranch;
  double? get minValue;
  double? get maxValue;
  String? get userId;
  double? get buildinglength;
  double? get buildingwidth;
  double? get landlength;
  double? get landwidth;
  RoadModel? get road;
  double? get bed;
  double? get bath;
  double? get livingroom;
  double? get floor;
  DateTime? get dateFrom;
  DateTime? get dateTo;

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoVerbalListFilterCopyWith<AutoVerbalListFilter> get copyWith =>
      _$AutoVerbalListFilterCopyWithImpl<AutoVerbalListFilter>(
          this as AutoVerbalListFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoVerbalListFilter &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            (identical(other.ownerNameOrPhone, ownerNameOrPhone) ||
                other.ownerNameOrPhone == ownerNameOrPhone) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(statuses),
        ownerNameOrPhone,
        province,
        propertyType,
        bank,
        bankBranch,
        minValue,
        maxValue,
        userId,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        dateFrom,
        dateTo
      ]);

  @override
  String toString() {
    return 'AutoVerbalListFilter(statuses: $statuses, ownerNameOrPhone: $ownerNameOrPhone, province: $province, propertyType: $propertyType, bank: $bank, bankBranch: $bankBranch, minValue: $minValue, maxValue: $maxValue, userId: $userId, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, dateFrom: $dateFrom, dateTo: $dateTo)';
  }
}

/// @nodoc
abstract mixin class $AutoVerbalListFilterCopyWith<$Res> {
  factory $AutoVerbalListFilterCopyWith(AutoVerbalListFilter value,
          $Res Function(AutoVerbalListFilter) _then) =
      _$AutoVerbalListFilterCopyWithImpl;
  @useResult
  $Res call(
      {IList<PropertyAndAutoVerbalStatus> statuses,
      String? ownerNameOrPhone,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      BankModel? bank,
      String? bankBranch,
      double? minValue,
      double? maxValue,
      String? userId,
      double? buildinglength,
      double? buildingwidth,
      double? landlength,
      double? landwidth,
      RoadModel? road,
      double? bed,
      double? bath,
      double? livingroom,
      double? floor,
      DateTime? dateFrom,
      DateTime? dateTo});

  $ProvinceModelCopyWith<$Res>? get province;
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $BankModelCopyWith<$Res>? get bank;
  $RoadModelCopyWith<$Res>? get road;
}

/// @nodoc
class _$AutoVerbalListFilterCopyWithImpl<$Res>
    implements $AutoVerbalListFilterCopyWith<$Res> {
  _$AutoVerbalListFilterCopyWithImpl(this._self, this._then);

  final AutoVerbalListFilter _self;
  final $Res Function(AutoVerbalListFilter) _then;

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = null,
    Object? ownerNameOrPhone = freezed,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? bank = freezed,
    Object? bankBranch = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? userId = freezed,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = freezed,
    Object? landwidth = freezed,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
  }) {
    return _then(_self.copyWith(
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      ownerNameOrPhone: freezed == ownerNameOrPhone
          ? _self.ownerNameOrPhone
          : ownerNameOrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: freezed == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: freezed == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double?,
      landwidth: freezed == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as double?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as double?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as double?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as double?,
      dateFrom: freezed == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of AutoVerbalListFilter
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

  /// Create a copy of AutoVerbalListFilter
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

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }
}

/// @nodoc

class _AutoVerbalListFilter extends AutoVerbalListFilter {
  const _AutoVerbalListFilter(
      {this.statuses = const IListConst([PropertyAndAutoVerbalStatus.approved]),
      this.ownerNameOrPhone,
      this.province,
      this.propertyType,
      this.bank,
      this.bankBranch,
      this.minValue,
      this.maxValue,
      this.userId,
      this.buildinglength,
      this.buildingwidth,
      this.landlength,
      this.landwidth,
      this.road,
      this.bed,
      this.bath,
      this.livingroom,
      this.floor,
      this.dateFrom,
      this.dateTo})
      : super._();

  @override
  @JsonKey()
  final IList<PropertyAndAutoVerbalStatus> statuses;
  @override
  final String? ownerNameOrPhone;
  @override
  final ProvinceModel? province;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final BankModel? bank;
  @override
  final String? bankBranch;
  @override
  final double? minValue;
  @override
  final double? maxValue;
  @override
  final String? userId;
  @override
  final double? buildinglength;
  @override
  final double? buildingwidth;
  @override
  final double? landlength;
  @override
  final double? landwidth;
  @override
  final RoadModel? road;
  @override
  final double? bed;
  @override
  final double? bath;
  @override
  final double? livingroom;
  @override
  final double? floor;
  @override
  final DateTime? dateFrom;
  @override
  final DateTime? dateTo;

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoVerbalListFilterCopyWith<_AutoVerbalListFilter> get copyWith =>
      __$AutoVerbalListFilterCopyWithImpl<_AutoVerbalListFilter>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoVerbalListFilter &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            (identical(other.ownerNameOrPhone, ownerNameOrPhone) ||
                other.ownerNameOrPhone == ownerNameOrPhone) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(statuses),
        ownerNameOrPhone,
        province,
        propertyType,
        bank,
        bankBranch,
        minValue,
        maxValue,
        userId,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        dateFrom,
        dateTo
      ]);

  @override
  String toString() {
    return 'AutoVerbalListFilter(statuses: $statuses, ownerNameOrPhone: $ownerNameOrPhone, province: $province, propertyType: $propertyType, bank: $bank, bankBranch: $bankBranch, minValue: $minValue, maxValue: $maxValue, userId: $userId, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, dateFrom: $dateFrom, dateTo: $dateTo)';
  }
}

/// @nodoc
abstract mixin class _$AutoVerbalListFilterCopyWith<$Res>
    implements $AutoVerbalListFilterCopyWith<$Res> {
  factory _$AutoVerbalListFilterCopyWith(_AutoVerbalListFilter value,
          $Res Function(_AutoVerbalListFilter) _then) =
      __$AutoVerbalListFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {IList<PropertyAndAutoVerbalStatus> statuses,
      String? ownerNameOrPhone,
      ProvinceModel? province,
      PropertyTypeModel? propertyType,
      BankModel? bank,
      String? bankBranch,
      double? minValue,
      double? maxValue,
      String? userId,
      double? buildinglength,
      double? buildingwidth,
      double? landlength,
      double? landwidth,
      RoadModel? road,
      double? bed,
      double? bath,
      double? livingroom,
      double? floor,
      DateTime? dateFrom,
      DateTime? dateTo});

  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $BankModelCopyWith<$Res>? get bank;
  @override
  $RoadModelCopyWith<$Res>? get road;
}

/// @nodoc
class __$AutoVerbalListFilterCopyWithImpl<$Res>
    implements _$AutoVerbalListFilterCopyWith<$Res> {
  __$AutoVerbalListFilterCopyWithImpl(this._self, this._then);

  final _AutoVerbalListFilter _self;
  final $Res Function(_AutoVerbalListFilter) _then;

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statuses = null,
    Object? ownerNameOrPhone = freezed,
    Object? province = freezed,
    Object? propertyType = freezed,
    Object? bank = freezed,
    Object? bankBranch = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? userId = freezed,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = freezed,
    Object? landwidth = freezed,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
  }) {
    return _then(_AutoVerbalListFilter(
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as IList<PropertyAndAutoVerbalStatus>,
      ownerNameOrPhone: freezed == ownerNameOrPhone
          ? _self.ownerNameOrPhone
          : ownerNameOrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: freezed == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: freezed == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double?,
      landwidth: freezed == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as double?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as double?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as double?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as double?,
      dateFrom: freezed == dateFrom
          ? _self.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTo: freezed == dateTo
          ? _self.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of AutoVerbalListFilter
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

  /// Create a copy of AutoVerbalListFilter
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

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of AutoVerbalListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }
}

/// @nodoc
mixin _$InsertAutoVerbalState {
// only useful when copy from property
  IList<String> get existingImageUrls;
  int? get propertyId;
  IList<XFile> get imageFiles;
  PropertyTypeModel? get propertyType;
  ProvinceModel? get province;
  BankModel? get bank;
  String? get bankBranch;
  String? get ownerName;
  String? get ownerPhone;
  String? get bankOfficerName;
  String? get bankOfficerPhone;
  double? get minValue;
  double? get maxValue;
  double? get minValueSqm;
  double? get maxValueSqm;
  double? get latitude;
  double? get longitude;
  double? get area;
  double? get buildinglength;
  double? get buildingwidth;
  double? get landlength;
  double? get landwidth;
  RoadModel? get road;
  int? get bed;
  int? get bath;
  int? get livingroom;
  int? get floor;
  ProviderStatus<void> get status;

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsertAutoVerbalStateCopyWith<InsertAutoVerbalState> get copyWith =>
      _$InsertAutoVerbalStateCopyWithImpl<InsertAutoVerbalState>(
          this as InsertAutoVerbalState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsertAutoVerbalState &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            const DeepCollectionEquality()
                .equals(other.imageFiles, imageFiles) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(existingImageUrls),
        propertyId,
        const DeepCollectionEquality().hash(imageFiles),
        propertyType,
        province,
        bank,
        bankBranch,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        latitude,
        longitude,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        status
      ]);

  @override
  String toString() {
    return 'InsertAutoVerbalState(existingImageUrls: $existingImageUrls, propertyId: $propertyId, imageFiles: $imageFiles, propertyType: $propertyType, province: $province, bank: $bank, bankBranch: $bankBranch, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, latitude: $latitude, longitude: $longitude, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, status: $status)';
  }
}

/// @nodoc
abstract mixin class $InsertAutoVerbalStateCopyWith<$Res> {
  factory $InsertAutoVerbalStateCopyWith(InsertAutoVerbalState value,
          $Res Function(InsertAutoVerbalState) _then) =
      _$InsertAutoVerbalStateCopyWithImpl;
  @useResult
  $Res call(
      {IList<String> existingImageUrls,
      int? propertyId,
      IList<XFile> imageFiles,
      PropertyTypeModel? propertyType,
      ProvinceModel? province,
      BankModel? bank,
      String? bankBranch,
      String? ownerName,
      String? ownerPhone,
      String? bankOfficerName,
      String? bankOfficerPhone,
      double? minValue,
      double? maxValue,
      double? minValueSqm,
      double? maxValueSqm,
      double? latitude,
      double? longitude,
      double? area,
      double? buildinglength,
      double? buildingwidth,
      double? landlength,
      double? landwidth,
      RoadModel? road,
      int? bed,
      int? bath,
      int? livingroom,
      int? floor,
      ProviderStatus<void> status});

  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $ProvinceModelCopyWith<$Res>? get province;
  $BankModelCopyWith<$Res>? get bank;
  $RoadModelCopyWith<$Res>? get road;
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class _$InsertAutoVerbalStateCopyWithImpl<$Res>
    implements $InsertAutoVerbalStateCopyWith<$Res> {
  _$InsertAutoVerbalStateCopyWithImpl(this._self, this._then);

  final InsertAutoVerbalState _self;
  final $Res Function(InsertAutoVerbalState) _then;

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingImageUrls = null,
    Object? propertyId = freezed,
    Object? imageFiles = null,
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? bank = freezed,
    Object? bankBranch = freezed,
    Object? ownerName = freezed,
    Object? ownerPhone = freezed,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? minValueSqm = freezed,
    Object? maxValueSqm = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? area = freezed,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = freezed,
    Object? landwidth = freezed,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      propertyId: freezed == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageFiles: null == imageFiles
          ? _self.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerPhone: freezed == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: freezed == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      minValueSqm: freezed == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValueSqm: freezed == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: freezed == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double?,
      landwidth: freezed == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of InsertAutoVerbalState
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

  /// Create a copy of InsertAutoVerbalState
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

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }

  /// Create a copy of InsertAutoVerbalState
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

class _InsertAutoVerbalState extends InsertAutoVerbalState {
  const _InsertAutoVerbalState(
      {this.existingImageUrls = const IList.empty(),
      this.propertyId,
      required this.imageFiles,
      required this.propertyType,
      required this.province,
      required this.bank,
      required this.bankBranch,
      required this.ownerName,
      required this.ownerPhone,
      required this.bankOfficerName,
      required this.bankOfficerPhone,
      required this.minValue,
      required this.maxValue,
      required this.minValueSqm,
      required this.maxValueSqm,
      required this.latitude,
      required this.longitude,
      required this.area,
      required this.buildinglength,
      required this.buildingwidth,
      required this.landlength,
      required this.landwidth,
      required this.road,
      required this.bed,
      required this.bath,
      required this.livingroom,
      required this.floor,
      this.status = const ProviderStatus.initial()})
      : super._();

// only useful when copy from property
  @override
  @JsonKey()
  final IList<String> existingImageUrls;
  @override
  final int? propertyId;
  @override
  final IList<XFile> imageFiles;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final ProvinceModel? province;
  @override
  final BankModel? bank;
  @override
  final String? bankBranch;
  @override
  final String? ownerName;
  @override
  final String? ownerPhone;
  @override
  final String? bankOfficerName;
  @override
  final String? bankOfficerPhone;
  @override
  final double? minValue;
  @override
  final double? maxValue;
  @override
  final double? minValueSqm;
  @override
  final double? maxValueSqm;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? area;
  @override
  final double? buildinglength;
  @override
  final double? buildingwidth;
  @override
  final double? landlength;
  @override
  final double? landwidth;
  @override
  final RoadModel? road;
  @override
  final int? bed;
  @override
  final int? bath;
  @override
  final int? livingroom;
  @override
  final int? floor;
  @override
  @JsonKey()
  final ProviderStatus<void> status;

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InsertAutoVerbalStateCopyWith<_InsertAutoVerbalState> get copyWith =>
      __$InsertAutoVerbalStateCopyWithImpl<_InsertAutoVerbalState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsertAutoVerbalState &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            const DeepCollectionEquality()
                .equals(other.imageFiles, imageFiles) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(existingImageUrls),
        propertyId,
        const DeepCollectionEquality().hash(imageFiles),
        propertyType,
        province,
        bank,
        bankBranch,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        latitude,
        longitude,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        status
      ]);

  @override
  String toString() {
    return 'InsertAutoVerbalState(existingImageUrls: $existingImageUrls, propertyId: $propertyId, imageFiles: $imageFiles, propertyType: $propertyType, province: $province, bank: $bank, bankBranch: $bankBranch, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, latitude: $latitude, longitude: $longitude, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$InsertAutoVerbalStateCopyWith<$Res>
    implements $InsertAutoVerbalStateCopyWith<$Res> {
  factory _$InsertAutoVerbalStateCopyWith(_InsertAutoVerbalState value,
          $Res Function(_InsertAutoVerbalState) _then) =
      __$InsertAutoVerbalStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {IList<String> existingImageUrls,
      int? propertyId,
      IList<XFile> imageFiles,
      PropertyTypeModel? propertyType,
      ProvinceModel? province,
      BankModel? bank,
      String? bankBranch,
      String? ownerName,
      String? ownerPhone,
      String? bankOfficerName,
      String? bankOfficerPhone,
      double? minValue,
      double? maxValue,
      double? minValueSqm,
      double? maxValueSqm,
      double? latitude,
      double? longitude,
      double? area,
      double? buildinglength,
      double? buildingwidth,
      double? landlength,
      double? landwidth,
      RoadModel? road,
      int? bed,
      int? bath,
      int? livingroom,
      int? floor,
      ProviderStatus<void> status});

  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $BankModelCopyWith<$Res>? get bank;
  @override
  $RoadModelCopyWith<$Res>? get road;
  @override
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class __$InsertAutoVerbalStateCopyWithImpl<$Res>
    implements _$InsertAutoVerbalStateCopyWith<$Res> {
  __$InsertAutoVerbalStateCopyWithImpl(this._self, this._then);

  final _InsertAutoVerbalState _self;
  final $Res Function(_InsertAutoVerbalState) _then;

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? existingImageUrls = null,
    Object? propertyId = freezed,
    Object? imageFiles = null,
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? bank = freezed,
    Object? bankBranch = freezed,
    Object? ownerName = freezed,
    Object? ownerPhone = freezed,
    Object? bankOfficerName = freezed,
    Object? bankOfficerPhone = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
    Object? minValueSqm = freezed,
    Object? maxValueSqm = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? area = freezed,
    Object? buildinglength = freezed,
    Object? buildingwidth = freezed,
    Object? landlength = freezed,
    Object? landwidth = freezed,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? status = null,
  }) {
    return _then(_InsertAutoVerbalState(
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      propertyId: freezed == propertyId
          ? _self.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageFiles: null == imageFiles
          ? _self.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: freezed == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: freezed == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerPhone: freezed == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerName: freezed == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankOfficerPhone: freezed == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      minValue: freezed == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValue: freezed == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      minValueSqm: freezed == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double?,
      maxValueSqm: freezed == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      buildinglength: freezed == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double?,
      buildingwidth: freezed == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      landlength: freezed == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double?,
      landwidth: freezed == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double?,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of InsertAutoVerbalState
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

  /// Create a copy of InsertAutoVerbalState
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

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of InsertAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }

  /// Create a copy of InsertAutoVerbalState
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
mixin _$UpdateAutoVerbalState {
  IList<XFile> get newImageFiles;
  IList<String> get existingImageUrls;
  PropertyTypeModel? get propertyType;
  ProvinceModel? get province;
  BankModel? get bank;
  String get bankBranch;
  String get ownerName;
  String get ownerPhone;
  String get bankOfficerName;
  String get bankOfficerPhone;
  double get minValue;
  double get maxValue;
  double get minValueSqm;
  double get maxValueSqm;
  double get latitude;
  double get longitude;
  double get area;
  double get buildinglength;
  double get buildingwidth;
  double get landlength;
  double get landwidth;
  RoadModel? get road;
  int? get bed;
  int? get bath;
  int? get livingroom;
  int? get floor;
  ProviderStatus<void> get status;

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateAutoVerbalStateCopyWith<UpdateAutoVerbalState> get copyWith =>
      _$UpdateAutoVerbalStateCopyWithImpl<UpdateAutoVerbalState>(
          this as UpdateAutoVerbalState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateAutoVerbalState &&
            const DeepCollectionEquality()
                .equals(other.newImageFiles, newImageFiles) &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(newImageFiles),
        const DeepCollectionEquality().hash(existingImageUrls),
        propertyType,
        province,
        bank,
        bankBranch,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        latitude,
        longitude,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        status
      ]);

  @override
  String toString() {
    return 'UpdateAutoVerbalState(newImageFiles: $newImageFiles, existingImageUrls: $existingImageUrls, propertyType: $propertyType, province: $province, bank: $bank, bankBranch: $bankBranch, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, latitude: $latitude, longitude: $longitude, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, status: $status)';
  }
}

/// @nodoc
abstract mixin class $UpdateAutoVerbalStateCopyWith<$Res> {
  factory $UpdateAutoVerbalStateCopyWith(UpdateAutoVerbalState value,
          $Res Function(UpdateAutoVerbalState) _then) =
      _$UpdateAutoVerbalStateCopyWithImpl;
  @useResult
  $Res call(
      {IList<XFile> newImageFiles,
      IList<String> existingImageUrls,
      PropertyTypeModel? propertyType,
      ProvinceModel? province,
      BankModel? bank,
      String bankBranch,
      String ownerName,
      String ownerPhone,
      String bankOfficerName,
      String bankOfficerPhone,
      double minValue,
      double maxValue,
      double minValueSqm,
      double maxValueSqm,
      double latitude,
      double longitude,
      double area,
      double buildinglength,
      double buildingwidth,
      double landlength,
      double landwidth,
      RoadModel? road,
      int? bed,
      int? bath,
      int? livingroom,
      int? floor,
      ProviderStatus<void> status});

  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  $ProvinceModelCopyWith<$Res>? get province;
  $BankModelCopyWith<$Res>? get bank;
  $RoadModelCopyWith<$Res>? get road;
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class _$UpdateAutoVerbalStateCopyWithImpl<$Res>
    implements $UpdateAutoVerbalStateCopyWith<$Res> {
  _$UpdateAutoVerbalStateCopyWithImpl(this._self, this._then);

  final UpdateAutoVerbalState _self;
  final $Res Function(UpdateAutoVerbalState) _then;

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newImageFiles = null,
    Object? existingImageUrls = null,
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? bank = freezed,
    Object? bankBranch = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = null,
    Object? bankOfficerPhone = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? area = null,
    Object? buildinglength = null,
    Object? buildingwidth = null,
    Object? landlength = null,
    Object? landwidth = null,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      newImageFiles: null == newImageFiles
          ? _self.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: null == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: null == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerPhone: null == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: null == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingwidth: null == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of UpdateAutoVerbalState
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

  /// Create a copy of UpdateAutoVerbalState
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

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }

  /// Create a copy of UpdateAutoVerbalState
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

class _UpdateAutoVerbalState extends UpdateAutoVerbalState {
  const _UpdateAutoVerbalState(
      {required this.newImageFiles,
      required this.existingImageUrls,
      required this.propertyType,
      required this.province,
      required this.bank,
      required this.bankBranch,
      required this.ownerName,
      required this.ownerPhone,
      required this.bankOfficerName,
      required this.bankOfficerPhone,
      required this.minValue,
      required this.maxValue,
      required this.minValueSqm,
      required this.maxValueSqm,
      required this.latitude,
      required this.longitude,
      required this.area,
      required this.buildinglength,
      required this.buildingwidth,
      required this.landlength,
      required this.landwidth,
      required this.road,
      required this.bed,
      required this.bath,
      required this.livingroom,
      required this.floor,
      this.status = const ProviderStatus.initial()})
      : super._();

  @override
  final IList<XFile> newImageFiles;
  @override
  final IList<String> existingImageUrls;
  @override
  final PropertyTypeModel? propertyType;
  @override
  final ProvinceModel? province;
  @override
  final BankModel? bank;
  @override
  final String bankBranch;
  @override
  final String ownerName;
  @override
  final String ownerPhone;
  @override
  final String bankOfficerName;
  @override
  final String bankOfficerPhone;
  @override
  final double minValue;
  @override
  final double maxValue;
  @override
  final double minValueSqm;
  @override
  final double maxValueSqm;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double area;
  @override
  final double buildinglength;
  @override
  final double buildingwidth;
  @override
  final double landlength;
  @override
  final double landwidth;
  @override
  final RoadModel? road;
  @override
  final int? bed;
  @override
  final int? bath;
  @override
  final int? livingroom;
  @override
  final int? floor;
  @override
  @JsonKey()
  final ProviderStatus<void> status;

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateAutoVerbalStateCopyWith<_UpdateAutoVerbalState> get copyWith =>
      __$UpdateAutoVerbalStateCopyWithImpl<_UpdateAutoVerbalState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAutoVerbalState &&
            const DeepCollectionEquality()
                .equals(other.newImageFiles, newImageFiles) &&
            const DeepCollectionEquality()
                .equals(other.existingImageUrls, existingImageUrls) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerPhone, ownerPhone) ||
                other.ownerPhone == ownerPhone) &&
            (identical(other.bankOfficerName, bankOfficerName) ||
                other.bankOfficerName == bankOfficerName) &&
            (identical(other.bankOfficerPhone, bankOfficerPhone) ||
                other.bankOfficerPhone == bankOfficerPhone) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.minValueSqm, minValueSqm) ||
                other.minValueSqm == minValueSqm) &&
            (identical(other.maxValueSqm, maxValueSqm) ||
                other.maxValueSqm == maxValueSqm) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.buildinglength, buildinglength) ||
                other.buildinglength == buildinglength) &&
            (identical(other.buildingwidth, buildingwidth) ||
                other.buildingwidth == buildingwidth) &&
            (identical(other.landlength, landlength) ||
                other.landlength == landlength) &&
            (identical(other.landwidth, landwidth) ||
                other.landwidth == landwidth) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.bed, bed) || other.bed == bed) &&
            (identical(other.bath, bath) || other.bath == bath) &&
            (identical(other.livingroom, livingroom) ||
                other.livingroom == livingroom) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(newImageFiles),
        const DeepCollectionEquality().hash(existingImageUrls),
        propertyType,
        province,
        bank,
        bankBranch,
        ownerName,
        ownerPhone,
        bankOfficerName,
        bankOfficerPhone,
        minValue,
        maxValue,
        minValueSqm,
        maxValueSqm,
        latitude,
        longitude,
        area,
        buildinglength,
        buildingwidth,
        landlength,
        landwidth,
        road,
        bed,
        bath,
        livingroom,
        floor,
        status
      ]);

  @override
  String toString() {
    return 'UpdateAutoVerbalState(newImageFiles: $newImageFiles, existingImageUrls: $existingImageUrls, propertyType: $propertyType, province: $province, bank: $bank, bankBranch: $bankBranch, ownerName: $ownerName, ownerPhone: $ownerPhone, bankOfficerName: $bankOfficerName, bankOfficerPhone: $bankOfficerPhone, minValue: $minValue, maxValue: $maxValue, minValueSqm: $minValueSqm, maxValueSqm: $maxValueSqm, latitude: $latitude, longitude: $longitude, area: $area, buildinglength: $buildinglength, buildingwidth: $buildingwidth, landlength: $landlength, landwidth: $landwidth, road: $road, bed: $bed, bath: $bath, livingroom: $livingroom, floor: $floor, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$UpdateAutoVerbalStateCopyWith<$Res>
    implements $UpdateAutoVerbalStateCopyWith<$Res> {
  factory _$UpdateAutoVerbalStateCopyWith(_UpdateAutoVerbalState value,
          $Res Function(_UpdateAutoVerbalState) _then) =
      __$UpdateAutoVerbalStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {IList<XFile> newImageFiles,
      IList<String> existingImageUrls,
      PropertyTypeModel? propertyType,
      ProvinceModel? province,
      BankModel? bank,
      String bankBranch,
      String ownerName,
      String ownerPhone,
      String bankOfficerName,
      String bankOfficerPhone,
      double minValue,
      double maxValue,
      double minValueSqm,
      double maxValueSqm,
      double latitude,
      double longitude,
      double area,
      double buildinglength,
      double buildingwidth,
      double landlength,
      double landwidth,
      RoadModel? road,
      int? bed,
      int? bath,
      int? livingroom,
      int? floor,
      ProviderStatus<void> status});

  @override
  $PropertyTypeModelCopyWith<$Res>? get propertyType;
  @override
  $ProvinceModelCopyWith<$Res>? get province;
  @override
  $BankModelCopyWith<$Res>? get bank;
  @override
  $RoadModelCopyWith<$Res>? get road;
  @override
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class __$UpdateAutoVerbalStateCopyWithImpl<$Res>
    implements _$UpdateAutoVerbalStateCopyWith<$Res> {
  __$UpdateAutoVerbalStateCopyWithImpl(this._self, this._then);

  final _UpdateAutoVerbalState _self;
  final $Res Function(_UpdateAutoVerbalState) _then;

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newImageFiles = null,
    Object? existingImageUrls = null,
    Object? propertyType = freezed,
    Object? province = freezed,
    Object? bank = freezed,
    Object? bankBranch = null,
    Object? ownerName = null,
    Object? ownerPhone = null,
    Object? bankOfficerName = null,
    Object? bankOfficerPhone = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? minValueSqm = null,
    Object? maxValueSqm = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? area = null,
    Object? buildinglength = null,
    Object? buildingwidth = null,
    Object? landlength = null,
    Object? landwidth = null,
    Object? road = freezed,
    Object? bed = freezed,
    Object? bath = freezed,
    Object? livingroom = freezed,
    Object? floor = freezed,
    Object? status = null,
  }) {
    return _then(_UpdateAutoVerbalState(
      newImageFiles: null == newImageFiles
          ? _self.newImageFiles
          : newImageFiles // ignore: cast_nullable_to_non_nullable
              as IList<XFile>,
      existingImageUrls: null == existingImageUrls
          ? _self.existingImageUrls
          : existingImageUrls // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      propertyType: freezed == propertyType
          ? _self.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeModel?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as ProvinceModel?,
      bank: freezed == bank
          ? _self.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      bankBranch: null == bankBranch
          ? _self.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _self.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerPhone: null == ownerPhone
          ? _self.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerName: null == bankOfficerName
          ? _self.bankOfficerName
          : bankOfficerName // ignore: cast_nullable_to_non_nullable
              as String,
      bankOfficerPhone: null == bankOfficerPhone
          ? _self.bankOfficerPhone
          : bankOfficerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _self.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: null == maxValue
          ? _self.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
      minValueSqm: null == minValueSqm
          ? _self.minValueSqm
          : minValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      maxValueSqm: null == maxValueSqm
          ? _self.maxValueSqm
          : maxValueSqm // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      buildinglength: null == buildinglength
          ? _self.buildinglength
          : buildinglength // ignore: cast_nullable_to_non_nullable
              as double,
      buildingwidth: null == buildingwidth
          ? _self.buildingwidth
          : buildingwidth // ignore: cast_nullable_to_non_nullable
              as double,
      landlength: null == landlength
          ? _self.landlength
          : landlength // ignore: cast_nullable_to_non_nullable
              as double,
      landwidth: null == landwidth
          ? _self.landwidth
          : landwidth // ignore: cast_nullable_to_non_nullable
              as double,
      road: freezed == road
          ? _self.road
          : road // ignore: cast_nullable_to_non_nullable
              as RoadModel?,
      bed: freezed == bed
          ? _self.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
      bath: freezed == bath
          ? _self.bath
          : bath // ignore: cast_nullable_to_non_nullable
              as int?,
      livingroom: freezed == livingroom
          ? _self.livingroom
          : livingroom // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _self.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }

  /// Create a copy of UpdateAutoVerbalState
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

  /// Create a copy of UpdateAutoVerbalState
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

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_self.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.bank!, (value) {
      return _then(_self.copyWith(bank: value));
    });
  }

  /// Create a copy of UpdateAutoVerbalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadModelCopyWith<$Res>? get road {
    if (_self.road == null) {
      return null;
    }

    return $RoadModelCopyWith<$Res>(_self.road!, (value) {
      return _then(_self.copyWith(road: value));
    });
  }

  /// Create a copy of UpdateAutoVerbalState
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
