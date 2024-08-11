// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v_point_transaction_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VPointTransactionModel _$VPointTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _VPointTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$VPointTransactionModel {
  @JsonKey(name: VPointTransactionModel.idKey)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: VPointTransactionModel.transactionIdKey)
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: VPointTransactionModel.typeKey)
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: VPointTransactionModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: VPointTransactionModel.vpointsKey)
  int get vpoints => throw _privateConstructorUsedError;
  @JsonKey(name: VPointTransactionModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this VPointTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VPointTransactionModelCopyWith<VPointTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VPointTransactionModelCopyWith<$Res> {
  factory $VPointTransactionModelCopyWith(VPointTransactionModel value,
          $Res Function(VPointTransactionModel) then) =
      _$VPointTransactionModelCopyWithImpl<$Res, VPointTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: VPointTransactionModel.idKey) int id,
      @JsonKey(name: VPointTransactionModel.transactionIdKey)
      String transactionId,
      @JsonKey(name: VPointTransactionModel.typeKey) String type,
      @JsonKey(name: VPointTransactionModel.userIdKey) String userId,
      @JsonKey(name: VPointTransactionModel.vpointsKey) int vpoints,
      @JsonKey(name: VPointTransactionModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class _$VPointTransactionModelCopyWithImpl<$Res,
        $Val extends VPointTransactionModel>
    implements $VPointTransactionModelCopyWith<$Res> {
  _$VPointTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? type = null,
    Object? userId = null,
    Object? vpoints = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _value.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VPointTransactionModelImplCopyWith<$Res>
    implements $VPointTransactionModelCopyWith<$Res> {
  factory _$$VPointTransactionModelImplCopyWith(
          _$VPointTransactionModelImpl value,
          $Res Function(_$VPointTransactionModelImpl) then) =
      __$$VPointTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: VPointTransactionModel.idKey) int id,
      @JsonKey(name: VPointTransactionModel.transactionIdKey)
      String transactionId,
      @JsonKey(name: VPointTransactionModel.typeKey) String type,
      @JsonKey(name: VPointTransactionModel.userIdKey) String userId,
      @JsonKey(name: VPointTransactionModel.vpointsKey) int vpoints,
      @JsonKey(name: VPointTransactionModel.createdAtKey) DateTime createdAt});
}

/// @nodoc
class __$$VPointTransactionModelImplCopyWithImpl<$Res>
    extends _$VPointTransactionModelCopyWithImpl<$Res,
        _$VPointTransactionModelImpl>
    implements _$$VPointTransactionModelImplCopyWith<$Res> {
  __$$VPointTransactionModelImplCopyWithImpl(
      _$VPointTransactionModelImpl _value,
      $Res Function(_$VPointTransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? type = null,
    Object? userId = null,
    Object? vpoints = null,
    Object? createdAt = null,
  }) {
    return _then(_$VPointTransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _value.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(VPointTransactionModel.tableName)
@JsonSerializable(explicitToJson: true)
class _$VPointTransactionModelImpl extends _VPointTransactionModel {
  const _$VPointTransactionModelImpl(
      {@JsonKey(name: VPointTransactionModel.idKey) required this.id,
      @JsonKey(name: VPointTransactionModel.transactionIdKey)
      required this.transactionId,
      @JsonKey(name: VPointTransactionModel.typeKey) required this.type,
      @JsonKey(name: VPointTransactionModel.userIdKey) required this.userId,
      @JsonKey(name: VPointTransactionModel.vpointsKey) required this.vpoints,
      @JsonKey(name: VPointTransactionModel.createdAtKey)
      required this.createdAt})
      : super._();

  factory _$VPointTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VPointTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: VPointTransactionModel.idKey)
  final int id;
  @override
  @JsonKey(name: VPointTransactionModel.transactionIdKey)
  final String transactionId;
  @override
  @JsonKey(name: VPointTransactionModel.typeKey)
  final String type;
  @override
  @JsonKey(name: VPointTransactionModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: VPointTransactionModel.vpointsKey)
  final int vpoints;
  @override
  @JsonKey(name: VPointTransactionModel.createdAtKey)
  final DateTime createdAt;

  @override
  String toString() {
    return 'VPointTransactionModel(id: $id, transactionId: $transactionId, type: $type, userId: $userId, vpoints: $vpoints, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VPointTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vpoints, vpoints) || other.vpoints == vpoints) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, transactionId, type, userId, vpoints, createdAt);

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VPointTransactionModelImplCopyWith<_$VPointTransactionModelImpl>
      get copyWith => __$$VPointTransactionModelImplCopyWithImpl<
          _$VPointTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VPointTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _VPointTransactionModel extends VPointTransactionModel {
  const factory _VPointTransactionModel(
      {@JsonKey(name: VPointTransactionModel.idKey) required final int id,
      @JsonKey(name: VPointTransactionModel.transactionIdKey)
      required final String transactionId,
      @JsonKey(name: VPointTransactionModel.typeKey) required final String type,
      @JsonKey(name: VPointTransactionModel.userIdKey)
      required final String userId,
      @JsonKey(name: VPointTransactionModel.vpointsKey)
      required final int vpoints,
      @JsonKey(name: VPointTransactionModel.createdAtKey)
      required final DateTime createdAt}) = _$VPointTransactionModelImpl;
  const _VPointTransactionModel._() : super._();

  factory _VPointTransactionModel.fromJson(Map<String, dynamic> json) =
      _$VPointTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: VPointTransactionModel.idKey)
  int get id;
  @override
  @JsonKey(name: VPointTransactionModel.transactionIdKey)
  String get transactionId;
  @override
  @JsonKey(name: VPointTransactionModel.typeKey)
  String get type;
  @override
  @JsonKey(name: VPointTransactionModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: VPointTransactionModel.vpointsKey)
  int get vpoints;
  @override
  @JsonKey(name: VPointTransactionModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VPointTransactionModelImplCopyWith<_$VPointTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
