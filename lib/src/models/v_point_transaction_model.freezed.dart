// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v_point_transaction_model.dart';

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
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get vpoints => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {int id,
      String transactionId,
      String type,
      String userId,
      int vpoints,
      DateTime createdAt});
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
      {int id,
      String transactionId,
      String type,
      String userId,
      int vpoints,
      DateTime createdAt});
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
@JsonSerializable()
class _$VPointTransactionModelImpl implements _VPointTransactionModel {
  _$VPointTransactionModelImpl(
      {required this.id,
      required this.transactionId,
      required this.type,
      required this.userId,
      required this.vpoints,
      required this.createdAt});

  factory _$VPointTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VPointTransactionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final String type;
  @override
  final String userId;
  @override
  final int vpoints;
  @override
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, transactionId, type, userId, vpoints, createdAt);

  @JsonKey(ignore: true)
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

abstract class _VPointTransactionModel implements VPointTransactionModel {
  factory _VPointTransactionModel(
      {required final int id,
      required final String transactionId,
      required final String type,
      required final String userId,
      required final int vpoints,
      required final DateTime createdAt}) = _$VPointTransactionModelImpl;

  factory _VPointTransactionModel.fromJson(Map<String, dynamic> json) =
      _$VPointTransactionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  String get type;
  @override
  String get userId;
  @override
  int get vpoints;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$VPointTransactionModelImplCopyWith<_$VPointTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
