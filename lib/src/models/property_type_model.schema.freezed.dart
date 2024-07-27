// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_type_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyTypeModel _$PropertyTypeModelFromJson(Map<String, dynamic> json) {
  return _PropertyTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyTypeModel {
  @JsonKey(name: PropertyTypeModel.idKey)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: PropertyTypeModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyTypeModelCopyWith<PropertyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyTypeModelCopyWith<$Res> {
  factory $PropertyTypeModelCopyWith(
          PropertyTypeModel value, $Res Function(PropertyTypeModel) then) =
      _$PropertyTypeModelCopyWithImpl<$Res, PropertyTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTypeModel.idKey) int id,
      @JsonKey(name: PropertyTypeModel.nameKey) String name});
}

/// @nodoc
class _$PropertyTypeModelCopyWithImpl<$Res, $Val extends PropertyTypeModel>
    implements $PropertyTypeModelCopyWith<$Res> {
  _$PropertyTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyTypeModelImplCopyWith<$Res>
    implements $PropertyTypeModelCopyWith<$Res> {
  factory _$$PropertyTypeModelImplCopyWith(_$PropertyTypeModelImpl value,
          $Res Function(_$PropertyTypeModelImpl) then) =
      __$$PropertyTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PropertyTypeModel.idKey) int id,
      @JsonKey(name: PropertyTypeModel.nameKey) String name});
}

/// @nodoc
class __$$PropertyTypeModelImplCopyWithImpl<$Res>
    extends _$PropertyTypeModelCopyWithImpl<$Res, _$PropertyTypeModelImpl>
    implements _$$PropertyTypeModelImplCopyWith<$Res> {
  __$$PropertyTypeModelImplCopyWithImpl(_$PropertyTypeModelImpl _value,
      $Res Function(_$PropertyTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PropertyTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(PropertyTypeModel.tableName)
class _$PropertyTypeModelImpl extends _PropertyTypeModel {
  const _$PropertyTypeModelImpl(
      {@JsonKey(name: PropertyTypeModel.idKey) required this.id,
      @JsonKey(name: PropertyTypeModel.nameKey) required this.name})
      : super._();

  factory _$PropertyTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyTypeModelImplFromJson(json);

  @override
  @JsonKey(name: PropertyTypeModel.idKey)
  final int id;
  @override
  @JsonKey(name: PropertyTypeModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'PropertyTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyTypeModelImplCopyWith<_$PropertyTypeModelImpl> get copyWith =>
      __$$PropertyTypeModelImplCopyWithImpl<_$PropertyTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyTypeModel extends PropertyTypeModel {
  const factory _PropertyTypeModel(
      {@JsonKey(name: PropertyTypeModel.idKey) required final int id,
      @JsonKey(name: PropertyTypeModel.nameKey)
      required final String name}) = _$PropertyTypeModelImpl;
  const _PropertyTypeModel._() : super._();

  factory _PropertyTypeModel.fromJson(Map<String, dynamic> json) =
      _$PropertyTypeModelImpl.fromJson;

  @override
  @JsonKey(name: PropertyTypeModel.idKey)
  int get id;
  @override
  @JsonKey(name: PropertyTypeModel.nameKey)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PropertyTypeModelImplCopyWith<_$PropertyTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
