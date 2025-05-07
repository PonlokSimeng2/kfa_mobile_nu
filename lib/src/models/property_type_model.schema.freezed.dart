// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_type_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyTypeModel {
  @JsonKey(name: PropertyTypeModel.idKey)
  int get id;
  @JsonKey(name: PropertyTypeModel.nameKey)
  String get name;

  /// Create a copy of PropertyTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PropertyTypeModelCopyWith<PropertyTypeModel> get copyWith =>
      _$PropertyTypeModelCopyWithImpl<PropertyTypeModel>(
          this as PropertyTypeModel, _$identity);

  /// Serializes this PropertyTypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PropertyTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'PropertyTypeModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $PropertyTypeModelCopyWith<$Res> {
  factory $PropertyTypeModelCopyWith(
          PropertyTypeModel value, $Res Function(PropertyTypeModel) _then) =
      _$PropertyTypeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTypeModel.idKey) int id,
      @JsonKey(name: PropertyTypeModel.nameKey) String name});
}

/// @nodoc
class _$PropertyTypeModelCopyWithImpl<$Res>
    implements $PropertyTypeModelCopyWith<$Res> {
  _$PropertyTypeModelCopyWithImpl(this._self, this._then);

  final PropertyTypeModel _self;
  final $Res Function(PropertyTypeModel) _then;

  /// Create a copy of PropertyTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ));
  }
}

/// @nodoc

@TableModel(PropertyTypeModel.tableName)
@JsonSerializable(explicitToJson: true)
class _PropertyTypeModel extends PropertyTypeModel {
  const _PropertyTypeModel(
      {@JsonKey(name: PropertyTypeModel.idKey) required this.id,
      @JsonKey(name: PropertyTypeModel.nameKey) required this.name})
      : super._();
  factory _PropertyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeModelFromJson(json);

  @override
  @JsonKey(name: PropertyTypeModel.idKey)
  final int id;
  @override
  @JsonKey(name: PropertyTypeModel.nameKey)
  final String name;

  /// Create a copy of PropertyTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PropertyTypeModelCopyWith<_PropertyTypeModel> get copyWith =>
      __$PropertyTypeModelCopyWithImpl<_PropertyTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PropertyTypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PropertyTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'PropertyTypeModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PropertyTypeModelCopyWith<$Res>
    implements $PropertyTypeModelCopyWith<$Res> {
  factory _$PropertyTypeModelCopyWith(
          _PropertyTypeModel value, $Res Function(_PropertyTypeModel) _then) =
      __$PropertyTypeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTypeModel.idKey) int id,
      @JsonKey(name: PropertyTypeModel.nameKey) String name});
}

/// @nodoc
class __$PropertyTypeModelCopyWithImpl<$Res>
    implements _$PropertyTypeModelCopyWith<$Res> {
  __$PropertyTypeModelCopyWithImpl(this._self, this._then);

  final _PropertyTypeModel _self;
  final $Res Function(_PropertyTypeModel) _then;

  /// Create a copy of PropertyTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_PropertyTypeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
