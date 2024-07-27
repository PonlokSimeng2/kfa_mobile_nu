// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'road_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoadModel _$RoadModelFromJson(Map<String, dynamic> json) {
  return _RoadModel.fromJson(json);
}

/// @nodoc
mixin _$RoadModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoadModelCopyWith<RoadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadModelCopyWith<$Res> {
  factory $RoadModelCopyWith(RoadModel value, $Res Function(RoadModel) then) =
      _$RoadModelCopyWithImpl<$Res, RoadModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RoadModelCopyWithImpl<$Res, $Val extends RoadModel>
    implements $RoadModelCopyWith<$Res> {
  _$RoadModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RoadModelImplCopyWith<$Res>
    implements $RoadModelCopyWith<$Res> {
  factory _$$RoadModelImplCopyWith(
          _$RoadModelImpl value, $Res Function(_$RoadModelImpl) then) =
      __$$RoadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$RoadModelImplCopyWithImpl<$Res>
    extends _$RoadModelCopyWithImpl<$Res, _$RoadModelImpl>
    implements _$$RoadModelImplCopyWith<$Res> {
  __$$RoadModelImplCopyWithImpl(
      _$RoadModelImpl _value, $Res Function(_$RoadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$RoadModelImpl(
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
@TableModel('roads')
class _$RoadModelImpl extends _RoadModel {
  _$RoadModelImpl({required this.id, required this.name}) : super._();

  factory _$RoadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RoadModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadModelImplCopyWith<_$RoadModelImpl> get copyWith =>
      __$$RoadModelImplCopyWithImpl<_$RoadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadModelImplToJson(
      this,
    );
  }
}

abstract class _RoadModel extends RoadModel {
  factory _RoadModel({required final int id, required final String name}) =
      _$RoadModelImpl;
  _RoadModel._() : super._();

  factory _RoadModel.fromJson(Map<String, dynamic> json) =
      _$RoadModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RoadModelImplCopyWith<_$RoadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
