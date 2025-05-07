// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v_point_transaction_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VPointTransactionModel {
  @JsonKey(name: VPointTransactionModel.idKey)
  int get id;
  @JsonKey(name: VPointTransactionModel.transactionIdKey)
  String get transactionId;
  @JsonKey(name: VPointTransactionModel.typeKey)
  String get type;
  @JsonKey(name: VPointTransactionModel.userIdKey)
  String get userId;
  @JsonKey(name: VPointTransactionModel.vpointsKey)
  int get vpoints;
  @JsonKey(name: VPointTransactionModel.createdAtKey)
  DateTime get createdAt;

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VPointTransactionModelCopyWith<VPointTransactionModel> get copyWith =>
      _$VPointTransactionModelCopyWithImpl<VPointTransactionModel>(
          this as VPointTransactionModel, _$identity);

  /// Serializes this VPointTransactionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VPointTransactionModel &&
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

  @override
  String toString() {
    return 'VPointTransactionModel(id: $id, transactionId: $transactionId, type: $type, userId: $userId, vpoints: $vpoints, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $VPointTransactionModelCopyWith<$Res> {
  factory $VPointTransactionModelCopyWith(VPointTransactionModel value,
          $Res Function(VPointTransactionModel) _then) =
      _$VPointTransactionModelCopyWithImpl;
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
class _$VPointTransactionModelCopyWithImpl<$Res>
    implements $VPointTransactionModelCopyWith<$Res> {
  _$VPointTransactionModelCopyWithImpl(this._self, this._then);

  final VPointTransactionModel _self;
  final $Res Function(VPointTransactionModel) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _self.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@TableModel(VPointTransactionModel.tableName)
@JsonSerializable(explicitToJson: true)
class _VPointTransactionModel extends VPointTransactionModel {
  const _VPointTransactionModel(
      {@JsonKey(name: VPointTransactionModel.idKey) required this.id,
      @JsonKey(name: VPointTransactionModel.transactionIdKey)
      required this.transactionId,
      @JsonKey(name: VPointTransactionModel.typeKey) required this.type,
      @JsonKey(name: VPointTransactionModel.userIdKey) required this.userId,
      @JsonKey(name: VPointTransactionModel.vpointsKey) required this.vpoints,
      @JsonKey(name: VPointTransactionModel.createdAtKey)
      required this.createdAt})
      : super._();
  factory _VPointTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$VPointTransactionModelFromJson(json);

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

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VPointTransactionModelCopyWith<_VPointTransactionModel> get copyWith =>
      __$VPointTransactionModelCopyWithImpl<_VPointTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VPointTransactionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VPointTransactionModel &&
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

  @override
  String toString() {
    return 'VPointTransactionModel(id: $id, transactionId: $transactionId, type: $type, userId: $userId, vpoints: $vpoints, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$VPointTransactionModelCopyWith<$Res>
    implements $VPointTransactionModelCopyWith<$Res> {
  factory _$VPointTransactionModelCopyWith(_VPointTransactionModel value,
          $Res Function(_VPointTransactionModel) _then) =
      __$VPointTransactionModelCopyWithImpl;
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
class __$VPointTransactionModelCopyWithImpl<$Res>
    implements _$VPointTransactionModelCopyWith<$Res> {
  __$VPointTransactionModelCopyWithImpl(this._self, this._then);

  final _VPointTransactionModel _self;
  final $Res Function(_VPointTransactionModel) _then;

  /// Create a copy of VPointTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? type = null,
    Object? userId = null,
    Object? vpoints = null,
    Object? createdAt = null,
  }) {
    return _then(_VPointTransactionModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _self.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
