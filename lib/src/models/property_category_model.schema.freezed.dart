// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_category_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyCategoryModel {
  @JsonKey(name: PropertyCategoryModel.idKey)
  int get id;
  @JsonKey(name: PropertyCategoryModel.nameKey)
  String get name;
  @JsonKey(name: PropertyCategoryModel.totalSaleKey)
  int? get totalSale;
  @JsonKey(name: PropertyCategoryModel.totalRentKey)
  int? get totalRent;

  /// Create a copy of PropertyCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyCategoryModelCopyWith<PropertyCategoryModel> get copyWith =>
      _$PropertyCategoryModelCopyWithImpl<PropertyCategoryModel>(
          this as PropertyCategoryModel, _$identity);

  /// Serializes this PropertyCategoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalRent, totalRent) ||
                other.totalRent == totalRent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, totalSale, totalRent);

  @override
  String toString() {
    return 'PropertyCategoryModel(id: $id, name: $name, totalSale: $totalSale, totalRent: $totalRent)';
  }
}

/// @nodoc
abstract mixin class $PropertyCategoryModelCopyWith<$Res> {
  factory $PropertyCategoryModelCopyWith(PropertyCategoryModel value,
          $Res Function(PropertyCategoryModel) _then) =
      _$PropertyCategoryModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyCategoryModel.idKey) int id,
      @JsonKey(name: PropertyCategoryModel.nameKey) String name,
      @JsonKey(name: PropertyCategoryModel.totalSaleKey) int? totalSale,
      @JsonKey(name: PropertyCategoryModel.totalRentKey) int? totalRent});
}

/// @nodoc
class _$PropertyCategoryModelCopyWithImpl<$Res>
    implements $PropertyCategoryModelCopyWith<$Res> {
  _$PropertyCategoryModelCopyWithImpl(this._self, this._then);

  final PropertyCategoryModel _self;
  final $Res Function(PropertyCategoryModel) _then;

  /// Create a copy of PropertyCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalSale = freezed,
    Object? totalRent = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSale: freezed == totalSale
          ? _self.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRent: freezed == totalRent
          ? _self.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@TableModel(PropertyCategoryModel.tableName)
@JsonSerializable(explicitToJson: true)
class _PropertyCategoryModel extends PropertyCategoryModel {
  const _PropertyCategoryModel(
      {@JsonKey(name: PropertyCategoryModel.idKey) required this.id,
      @JsonKey(name: PropertyCategoryModel.nameKey) required this.name,
      @JsonKey(name: PropertyCategoryModel.totalSaleKey)
      required this.totalSale,
      @JsonKey(name: PropertyCategoryModel.totalRentKey)
      required this.totalRent})
      : super._();
  factory _PropertyCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyCategoryModelFromJson(json);

  @override
  @JsonKey(name: PropertyCategoryModel.idKey)
  final int id;
  @override
  @JsonKey(name: PropertyCategoryModel.nameKey)
  final String name;
  @override
  @JsonKey(name: PropertyCategoryModel.totalSaleKey)
  final int? totalSale;
  @override
  @JsonKey(name: PropertyCategoryModel.totalRentKey)
  final int? totalRent;

  /// Create a copy of PropertyCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyCategoryModelCopyWith<_PropertyCategoryModel> get copyWith =>
      __$PropertyCategoryModelCopyWithImpl<_PropertyCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyCategoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalRent, totalRent) ||
                other.totalRent == totalRent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, totalSale, totalRent);

  @override
  String toString() {
    return 'PropertyCategoryModel(id: $id, name: $name, totalSale: $totalSale, totalRent: $totalRent)';
  }
}

/// @nodoc
abstract mixin class _$PropertyCategoryModelCopyWith<$Res>
    implements $PropertyCategoryModelCopyWith<$Res> {
  factory _$PropertyCategoryModelCopyWith(_PropertyCategoryModel value,
          $Res Function(_PropertyCategoryModel) _then) =
      __$PropertyCategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyCategoryModel.idKey) int id,
      @JsonKey(name: PropertyCategoryModel.nameKey) String name,
      @JsonKey(name: PropertyCategoryModel.totalSaleKey) int? totalSale,
      @JsonKey(name: PropertyCategoryModel.totalRentKey) int? totalRent});
}

/// @nodoc
class __$PropertyCategoryModelCopyWithImpl<$Res>
    implements _$PropertyCategoryModelCopyWith<$Res> {
  __$PropertyCategoryModelCopyWithImpl(this._self, this._then);

  final _PropertyCategoryModel _self;
  final $Res Function(_PropertyCategoryModel) _then;

  /// Create a copy of PropertyCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalSale = freezed,
    Object? totalRent = freezed,
  }) {
    return _then(_PropertyCategoryModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSale: freezed == totalSale
          ? _self.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRent: freezed == totalRent
          ? _self.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
