// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorit_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  @JsonKey(name: FavoriteModel.idKey)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: FavoriteModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: FavoriteModel.propertyIdKey)
  String get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: FavoriteModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.userKey)
  UserModel get user => throw _privateConstructorUsedError;
  @JoinedColumn(foreignKey: "property_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.propertyKey)
  PropertyModel get property => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res, FavoriteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: FavoriteModel.idKey) int id,
      @JsonKey(name: FavoriteModel.userIdKey) String userId,
      @JsonKey(name: FavoriteModel.propertyIdKey) String propertyId,
      @JsonKey(name: FavoriteModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.userKey)
      UserModel user,
      @JoinedColumn(foreignKey: "property_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.propertyKey)
      PropertyModel property});

  $UserModelCopyWith<$Res> get user;
  $PropertyModelCopyWith<$Res> get property;
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res, $Val extends FavoriteModel>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyId = null,
    Object? createdAt = null,
    Object? user = null,
    Object? property = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyModelCopyWith<$Res> get property {
    return $PropertyModelCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteModelImplCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$$FavoriteModelImplCopyWith(
          _$FavoriteModelImpl value, $Res Function(_$FavoriteModelImpl) then) =
      __$$FavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: FavoriteModel.idKey) int id,
      @JsonKey(name: FavoriteModel.userIdKey) String userId,
      @JsonKey(name: FavoriteModel.propertyIdKey) String propertyId,
      @JsonKey(name: FavoriteModel.createdAtKey) DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.userKey)
      UserModel user,
      @JoinedColumn(foreignKey: "property_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.propertyKey)
      PropertyModel property});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $PropertyModelCopyWith<$Res> get property;
}

/// @nodoc
class __$$FavoriteModelImplCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res, _$FavoriteModelImpl>
    implements _$$FavoriteModelImplCopyWith<$Res> {
  __$$FavoriteModelImplCopyWithImpl(
      _$FavoriteModelImpl _value, $Res Function(_$FavoriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? propertyId = null,
    Object? createdAt = null,
    Object? user = null,
    Object? property = null,
  }) {
    return _then(_$FavoriteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(FavoriteModel.tableName)
class _$FavoriteModelImpl extends _FavoriteModel {
  const _$FavoriteModelImpl(
      {@JsonKey(name: FavoriteModel.idKey) required this.id,
      @JsonKey(name: FavoriteModel.userIdKey) required this.userId,
      @JsonKey(name: FavoriteModel.propertyIdKey) required this.propertyId,
      @JsonKey(name: FavoriteModel.createdAtKey) required this.createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.userKey)
      required this.user,
      @JoinedColumn(foreignKey: "property_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.propertyKey)
      required this.property})
      : super._();

  factory _$FavoriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteModelImplFromJson(json);

  @override
  @JsonKey(name: FavoriteModel.idKey)
  final int id;
  @override
  @JsonKey(name: FavoriteModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: FavoriteModel.propertyIdKey)
  final String propertyId;
  @override
  @JsonKey(name: FavoriteModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.userKey)
  final UserModel user;
  @override
  @JoinedColumn(foreignKey: "property_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.propertyKey)
  final PropertyModel property;

  @override
  String toString() {
    return 'FavoriteModel(id: $id, userId: $userId, propertyId: $propertyId, createdAt: $createdAt, user: $user, property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.property, property) ||
                other.property == property));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, propertyId, createdAt, user, property);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      __$$FavoriteModelImplCopyWithImpl<_$FavoriteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteModelImplToJson(
      this,
    );
  }
}

abstract class _FavoriteModel extends FavoriteModel {
  const factory _FavoriteModel(
      {@JsonKey(name: FavoriteModel.idKey) required final int id,
      @JsonKey(name: FavoriteModel.userIdKey) required final String userId,
      @JsonKey(name: FavoriteModel.propertyIdKey)
      required final String propertyId,
      @JsonKey(name: FavoriteModel.createdAtKey)
      required final DateTime createdAt,
      @JoinedColumn(foreignKey: "user_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.userKey)
      required final UserModel user,
      @JoinedColumn(foreignKey: "property_id", candidateKey: null)
      @JsonKey(name: FavoriteModel.propertyKey)
      required final PropertyModel property}) = _$FavoriteModelImpl;
  const _FavoriteModel._() : super._();

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteModelImpl.fromJson;

  @override
  @JsonKey(name: FavoriteModel.idKey)
  int get id;
  @override
  @JsonKey(name: FavoriteModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: FavoriteModel.propertyIdKey)
  String get propertyId;
  @override
  @JsonKey(name: FavoriteModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JoinedColumn(foreignKey: "user_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.userKey)
  UserModel get user;
  @override
  @JoinedColumn(foreignKey: "property_id", candidateKey: null)
  @JsonKey(name: FavoriteModel.propertyKey)
  PropertyModel get property;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateFavoriteParam _$CreateFavoriteParamFromJson(Map<String, dynamic> json) {
  return _CreateFavoriteParam.fromJson(json);
}

/// @nodoc
mixin _$CreateFavoriteParam {
  @JsonKey(name: CreateFavoriteParam.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: CreateFavoriteParam.propertyIdKey)
  String get propertyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateFavoriteParamCopyWith<CreateFavoriteParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFavoriteParamCopyWith<$Res> {
  factory $CreateFavoriteParamCopyWith(
          CreateFavoriteParam value, $Res Function(CreateFavoriteParam) then) =
      _$CreateFavoriteParamCopyWithImpl<$Res, CreateFavoriteParam>;
  @useResult
  $Res call(
      {@JsonKey(name: CreateFavoriteParam.userIdKey) String userId,
      @JsonKey(name: CreateFavoriteParam.propertyIdKey) String propertyId});
}

/// @nodoc
class _$CreateFavoriteParamCopyWithImpl<$Res, $Val extends CreateFavoriteParam>
    implements $CreateFavoriteParamCopyWith<$Res> {
  _$CreateFavoriteParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? propertyId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFavoriteParamImplCopyWith<$Res>
    implements $CreateFavoriteParamCopyWith<$Res> {
  factory _$$CreateFavoriteParamImplCopyWith(_$CreateFavoriteParamImpl value,
          $Res Function(_$CreateFavoriteParamImpl) then) =
      __$$CreateFavoriteParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateFavoriteParam.userIdKey) String userId,
      @JsonKey(name: CreateFavoriteParam.propertyIdKey) String propertyId});
}

/// @nodoc
class __$$CreateFavoriteParamImplCopyWithImpl<$Res>
    extends _$CreateFavoriteParamCopyWithImpl<$Res, _$CreateFavoriteParamImpl>
    implements _$$CreateFavoriteParamImplCopyWith<$Res> {
  __$$CreateFavoriteParamImplCopyWithImpl(_$CreateFavoriteParamImpl _value,
      $Res Function(_$CreateFavoriteParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? propertyId = null,
  }) {
    return _then(_$CreateFavoriteParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFavoriteParamImpl extends _CreateFavoriteParam {
  const _$CreateFavoriteParamImpl(
      {@JsonKey(name: CreateFavoriteParam.userIdKey) required this.userId,
      @JsonKey(name: CreateFavoriteParam.propertyIdKey)
      required this.propertyId})
      : super._();

  factory _$CreateFavoriteParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFavoriteParamImplFromJson(json);

  @override
  @JsonKey(name: CreateFavoriteParam.userIdKey)
  final String userId;
  @override
  @JsonKey(name: CreateFavoriteParam.propertyIdKey)
  final String propertyId;

  @override
  String toString() {
    return 'CreateFavoriteParam(userId: $userId, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFavoriteParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, propertyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFavoriteParamImplCopyWith<_$CreateFavoriteParamImpl> get copyWith =>
      __$$CreateFavoriteParamImplCopyWithImpl<_$CreateFavoriteParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFavoriteParamImplToJson(
      this,
    );
  }
}

abstract class _CreateFavoriteParam extends CreateFavoriteParam {
  const factory _CreateFavoriteParam(
      {@JsonKey(name: CreateFavoriteParam.userIdKey)
      required final String userId,
      @JsonKey(name: CreateFavoriteParam.propertyIdKey)
      required final String propertyId}) = _$CreateFavoriteParamImpl;
  const _CreateFavoriteParam._() : super._();

  factory _CreateFavoriteParam.fromJson(Map<String, dynamic> json) =
      _$CreateFavoriteParamImpl.fromJson;

  @override
  @JsonKey(name: CreateFavoriteParam.userIdKey)
  String get userId;
  @override
  @JsonKey(name: CreateFavoriteParam.propertyIdKey)
  String get propertyId;
  @override
  @JsonKey(ignore: true)
  _$$CreateFavoriteParamImplCopyWith<_$CreateFavoriteParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateFavoriteParam _$UpdateFavoriteParamFromJson(Map<String, dynamic> json) {
  return _UpdateFavoriteParam.fromJson(json);
}

/// @nodoc
mixin _$UpdateFavoriteParam {
  @JsonKey(name: UpdateFavoriteParam.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: UpdateFavoriteParam.propertyIdKey)
  String get propertyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFavoriteParamCopyWith<UpdateFavoriteParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFavoriteParamCopyWith<$Res> {
  factory $UpdateFavoriteParamCopyWith(
          UpdateFavoriteParam value, $Res Function(UpdateFavoriteParam) then) =
      _$UpdateFavoriteParamCopyWithImpl<$Res, UpdateFavoriteParam>;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateFavoriteParam.userIdKey) String userId,
      @JsonKey(name: UpdateFavoriteParam.propertyIdKey) String propertyId});
}

/// @nodoc
class _$UpdateFavoriteParamCopyWithImpl<$Res, $Val extends UpdateFavoriteParam>
    implements $UpdateFavoriteParamCopyWith<$Res> {
  _$UpdateFavoriteParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? propertyId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFavoriteParamImplCopyWith<$Res>
    implements $UpdateFavoriteParamCopyWith<$Res> {
  factory _$$UpdateFavoriteParamImplCopyWith(_$UpdateFavoriteParamImpl value,
          $Res Function(_$UpdateFavoriteParamImpl) then) =
      __$$UpdateFavoriteParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateFavoriteParam.userIdKey) String userId,
      @JsonKey(name: UpdateFavoriteParam.propertyIdKey) String propertyId});
}

/// @nodoc
class __$$UpdateFavoriteParamImplCopyWithImpl<$Res>
    extends _$UpdateFavoriteParamCopyWithImpl<$Res, _$UpdateFavoriteParamImpl>
    implements _$$UpdateFavoriteParamImplCopyWith<$Res> {
  __$$UpdateFavoriteParamImplCopyWithImpl(_$UpdateFavoriteParamImpl _value,
      $Res Function(_$UpdateFavoriteParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? propertyId = null,
  }) {
    return _then(_$UpdateFavoriteParamImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFavoriteParamImpl extends _UpdateFavoriteParam {
  const _$UpdateFavoriteParamImpl(
      {@JsonKey(name: UpdateFavoriteParam.userIdKey) required this.userId,
      @JsonKey(name: UpdateFavoriteParam.propertyIdKey)
      required this.propertyId})
      : super._();

  factory _$UpdateFavoriteParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFavoriteParamImplFromJson(json);

  @override
  @JsonKey(name: UpdateFavoriteParam.userIdKey)
  final String userId;
  @override
  @JsonKey(name: UpdateFavoriteParam.propertyIdKey)
  final String propertyId;

  @override
  String toString() {
    return 'UpdateFavoriteParam(userId: $userId, propertyId: $propertyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavoriteParamImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, propertyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavoriteParamImplCopyWith<_$UpdateFavoriteParamImpl> get copyWith =>
      __$$UpdateFavoriteParamImplCopyWithImpl<_$UpdateFavoriteParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFavoriteParamImplToJson(
      this,
    );
  }
}

abstract class _UpdateFavoriteParam extends UpdateFavoriteParam {
  const factory _UpdateFavoriteParam(
      {@JsonKey(name: UpdateFavoriteParam.userIdKey)
      required final String userId,
      @JsonKey(name: UpdateFavoriteParam.propertyIdKey)
      required final String propertyId}) = _$UpdateFavoriteParamImpl;
  const _UpdateFavoriteParam._() : super._();

  factory _UpdateFavoriteParam.fromJson(Map<String, dynamic> json) =
      _$UpdateFavoriteParamImpl.fromJson;

  @override
  @JsonKey(name: UpdateFavoriteParam.userIdKey)
  String get userId;
  @override
  @JsonKey(name: UpdateFavoriteParam.propertyIdKey)
  String get propertyId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateFavoriteParamImplCopyWith<_$UpdateFavoriteParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
