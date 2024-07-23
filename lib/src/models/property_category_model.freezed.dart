// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyCategoryModel _$PropertyCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _PropertyCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyCategoryModel {
  @JsonKey(name: 'property_type_category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_count')
  int? get totalSale => throw _privateConstructorUsedError;
  @JsonKey(name: 'rent_count')
  int? get totalRent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCategoryModelCopyWith<PropertyCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCategoryModelCopyWith<$Res> {
  factory $PropertyCategoryModelCopyWith(PropertyCategoryModel value,
          $Res Function(PropertyCategoryModel) then) =
      _$PropertyCategoryModelCopyWithImpl<$Res, PropertyCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'property_type_category_id') int id,
      @JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'sale_count') int? totalSale,
      @JsonKey(name: 'rent_count') int? totalRent});
}

/// @nodoc
class _$PropertyCategoryModelCopyWithImpl<$Res,
        $Val extends PropertyCategoryModel>
    implements $PropertyCategoryModelCopyWith<$Res> {
  _$PropertyCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalSale = freezed,
    Object? totalRent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSale: freezed == totalSale
          ? _value.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRent: freezed == totalRent
          ? _value.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyCategoryModelImplCopyWith<$Res>
    implements $PropertyCategoryModelCopyWith<$Res> {
  factory _$$PropertyCategoryModelImplCopyWith(
          _$PropertyCategoryModelImpl value,
          $Res Function(_$PropertyCategoryModelImpl) then) =
      __$$PropertyCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'property_type_category_id') int id,
      @JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'sale_count') int? totalSale,
      @JsonKey(name: 'rent_count') int? totalRent});
}

/// @nodoc
class __$$PropertyCategoryModelImplCopyWithImpl<$Res>
    extends _$PropertyCategoryModelCopyWithImpl<$Res,
        _$PropertyCategoryModelImpl>
    implements _$$PropertyCategoryModelImplCopyWith<$Res> {
  __$$PropertyCategoryModelImplCopyWithImpl(_$PropertyCategoryModelImpl _value,
      $Res Function(_$PropertyCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? totalSale = freezed,
    Object? totalRent = freezed,
  }) {
    return _then(_$PropertyCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalSale: freezed == totalSale
          ? _value.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRent: freezed == totalRent
          ? _value.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel('property_type_categories')
class _$PropertyCategoryModelImpl extends _PropertyCategoryModel {
  const _$PropertyCategoryModelImpl(
      {@JsonKey(name: 'property_type_category_id') required this.id,
      @JsonKey(name: 'category_name') required this.name,
      @JsonKey(name: 'sale_count') required this.totalSale,
      @JsonKey(name: 'rent_count') required this.totalRent})
      : super._();

  factory _$PropertyCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'property_type_category_id')
  final int id;
  @override
  @JsonKey(name: 'category_name')
  final String name;
  @override
  @JsonKey(name: 'sale_count')
  final int? totalSale;
  @override
  @JsonKey(name: 'rent_count')
  final int? totalRent;

  @override
  String toString() {
    return 'PropertyCategoryModel(id: $id, name: $name, totalSale: $totalSale, totalRent: $totalRent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalRent, totalRent) ||
                other.totalRent == totalRent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, totalSale, totalRent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyCategoryModelImplCopyWith<_$PropertyCategoryModelImpl>
      get copyWith => __$$PropertyCategoryModelImplCopyWithImpl<
          _$PropertyCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyCategoryModel extends PropertyCategoryModel {
  const factory _PropertyCategoryModel(
          {@JsonKey(name: 'property_type_category_id') required final int id,
          @JsonKey(name: 'category_name') required final String name,
          @JsonKey(name: 'sale_count') required final int? totalSale,
          @JsonKey(name: 'rent_count') required final int? totalRent}) =
      _$PropertyCategoryModelImpl;
  const _PropertyCategoryModel._() : super._();

  factory _PropertyCategoryModel.fromJson(Map<String, dynamic> json) =
      _$PropertyCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'property_type_category_id')
  int get id;
  @override
  @JsonKey(name: 'category_name')
  String get name;
  @override
  @JsonKey(name: 'sale_count')
  int? get totalSale;
  @override
  @JsonKey(name: 'rent_count')
  int? get totalRent;
  @override
  @JsonKey(ignore: true)
  _$$PropertyCategoryModelImplCopyWith<_$PropertyCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
