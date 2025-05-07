// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProvinceModel {
  @JsonKey(name: ProvinceModel.idKey)
  int get id;
  @JsonKey(name: ProvinceModel.nameKey)
  String get name;

  /// Create a copy of ProvinceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProvinceModelCopyWith<ProvinceModel> get copyWith =>
      _$ProvinceModelCopyWithImpl<ProvinceModel>(
          this as ProvinceModel, _$identity);

  /// Serializes this ProvinceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProvinceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProvinceModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ProvinceModelCopyWith<$Res> {
  factory $ProvinceModelCopyWith(
          ProvinceModel value, $Res Function(ProvinceModel) _then) =
      _$ProvinceModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProvinceModel.idKey) int id,
      @JsonKey(name: ProvinceModel.nameKey) String name});
}

/// @nodoc
class _$ProvinceModelCopyWithImpl<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  _$ProvinceModelCopyWithImpl(this._self, this._then);

  final ProvinceModel _self;
  final $Res Function(ProvinceModel) _then;

  /// Create a copy of ProvinceModel
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

@TableModel(ProvinceModel.tableName)
@JsonSerializable(explicitToJson: true)
class _ProvinceModel extends ProvinceModel {
  const _ProvinceModel(
      {@JsonKey(name: ProvinceModel.idKey) required this.id,
      @JsonKey(name: ProvinceModel.nameKey) required this.name})
      : super._();
  factory _ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  @override
  @JsonKey(name: ProvinceModel.idKey)
  final int id;
  @override
  @JsonKey(name: ProvinceModel.nameKey)
  final String name;

  /// Create a copy of ProvinceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProvinceModelCopyWith<_ProvinceModel> get copyWith =>
      __$ProvinceModelCopyWithImpl<_ProvinceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProvinceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProvinceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProvinceModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ProvinceModelCopyWith<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  factory _$ProvinceModelCopyWith(
          _ProvinceModel value, $Res Function(_ProvinceModel) _then) =
      __$ProvinceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProvinceModel.idKey) int id,
      @JsonKey(name: ProvinceModel.nameKey) String name});
}

/// @nodoc
class __$ProvinceModelCopyWithImpl<$Res>
    implements _$ProvinceModelCopyWith<$Res> {
  __$ProvinceModelCopyWithImpl(this._self, this._then);

  final _ProvinceModel _self;
  final $Res Function(_ProvinceModel) _then;

  /// Create a copy of ProvinceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_ProvinceModel(
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
