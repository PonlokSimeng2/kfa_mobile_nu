// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: UserModel.idKey)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.userIdKey)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.photoKey)
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.firstNameKey)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.lastNameKey)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.emailKey)
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.phoneKey)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.vpointsKey)
  int get vpoints => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.isAdminKey)
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: UserModel.joinedAtKey)
  DateTime get joinedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) String id,
      @JsonKey(name: UserModel.userIdKey) String userId,
      @JsonKey(name: UserModel.photoKey) String? photo,
      @JsonKey(name: UserModel.firstNameKey) String firstName,
      @JsonKey(name: UserModel.lastNameKey) String lastName,
      @JsonKey(name: UserModel.emailKey) String email,
      @JsonKey(name: UserModel.phoneKey) String phone,
      @JsonKey(name: UserModel.vpointsKey) int vpoints,
      @JsonKey(name: UserModel.isAdminKey) bool isAdmin,
      @JsonKey(name: UserModel.joinedAtKey) DateTime joinedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? vpoints = null,
    Object? isAdmin = null,
    Object? joinedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _value.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserModel.idKey) String id,
      @JsonKey(name: UserModel.userIdKey) String userId,
      @JsonKey(name: UserModel.photoKey) String? photo,
      @JsonKey(name: UserModel.firstNameKey) String firstName,
      @JsonKey(name: UserModel.lastNameKey) String lastName,
      @JsonKey(name: UserModel.emailKey) String email,
      @JsonKey(name: UserModel.phoneKey) String phone,
      @JsonKey(name: UserModel.vpointsKey) int vpoints,
      @JsonKey(name: UserModel.isAdminKey) bool isAdmin,
      @JsonKey(name: UserModel.joinedAtKey) DateTime joinedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? photo = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? vpoints = null,
    Object? isAdmin = null,
    Object? joinedAt = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      vpoints: null == vpoints
          ? _value.vpoints
          : vpoints // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(UserModel.tableName)
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: UserModel.idKey) required this.id,
      @JsonKey(name: UserModel.userIdKey) required this.userId,
      @JsonKey(name: UserModel.photoKey) this.photo,
      @JsonKey(name: UserModel.firstNameKey) required this.firstName,
      @JsonKey(name: UserModel.lastNameKey) required this.lastName,
      @JsonKey(name: UserModel.emailKey) required this.email,
      @JsonKey(name: UserModel.phoneKey) required this.phone,
      @JsonKey(name: UserModel.vpointsKey) required this.vpoints,
      @JsonKey(name: UserModel.isAdminKey) required this.isAdmin,
      @JsonKey(name: UserModel.joinedAtKey) required this.joinedAt})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: UserModel.idKey)
  final String id;
  @override
  @JsonKey(name: UserModel.userIdKey)
  final String userId;
  @override
  @JsonKey(name: UserModel.photoKey)
  final String? photo;
  @override
  @JsonKey(name: UserModel.firstNameKey)
  final String firstName;
  @override
  @JsonKey(name: UserModel.lastNameKey)
  final String lastName;
  @override
  @JsonKey(name: UserModel.emailKey)
  final String email;
  @override
  @JsonKey(name: UserModel.phoneKey)
  final String phone;
  @override
  @JsonKey(name: UserModel.vpointsKey)
  final int vpoints;
  @override
  @JsonKey(name: UserModel.isAdminKey)
  final bool isAdmin;
  @override
  @JsonKey(name: UserModel.joinedAtKey)
  final DateTime joinedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, userId: $userId, photo: $photo, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, vpoints: $vpoints, isAdmin: $isAdmin, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.vpoints, vpoints) || other.vpoints == vpoints) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, photo, firstName,
      lastName, email, phone, vpoints, isAdmin, joinedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(name: UserModel.idKey) required final String id,
      @JsonKey(name: UserModel.userIdKey) required final String userId,
      @JsonKey(name: UserModel.photoKey) final String? photo,
      @JsonKey(name: UserModel.firstNameKey) required final String firstName,
      @JsonKey(name: UserModel.lastNameKey) required final String lastName,
      @JsonKey(name: UserModel.emailKey) required final String email,
      @JsonKey(name: UserModel.phoneKey) required final String phone,
      @JsonKey(name: UserModel.vpointsKey) required final int vpoints,
      @JsonKey(name: UserModel.isAdminKey) required final bool isAdmin,
      @JsonKey(name: UserModel.joinedAtKey)
      required final DateTime joinedAt}) = _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: UserModel.idKey)
  String get id;
  @override
  @JsonKey(name: UserModel.userIdKey)
  String get userId;
  @override
  @JsonKey(name: UserModel.photoKey)
  String? get photo;
  @override
  @JsonKey(name: UserModel.firstNameKey)
  String get firstName;
  @override
  @JsonKey(name: UserModel.lastNameKey)
  String get lastName;
  @override
  @JsonKey(name: UserModel.emailKey)
  String get email;
  @override
  @JsonKey(name: UserModel.phoneKey)
  String get phone;
  @override
  @JsonKey(name: UserModel.vpointsKey)
  int get vpoints;
  @override
  @JsonKey(name: UserModel.isAdminKey)
  bool get isAdmin;
  @override
  @JsonKey(name: UserModel.joinedAtKey)
  DateTime get joinedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLiteModel _$UserLiteModelFromJson(Map<String, dynamic> json) {
  return _UserLiteModel.fromJson(json);
}

/// @nodoc
mixin _$UserLiteModel {
  @JsonKey(name: UserLiteModel.idKey)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserLiteModel.photoKey)
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: UserLiteModel.firstNameKey)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: UserLiteModel.lastNameKey)
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLiteModelCopyWith<UserLiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLiteModelCopyWith<$Res> {
  factory $UserLiteModelCopyWith(
          UserLiteModel value, $Res Function(UserLiteModel) then) =
      _$UserLiteModelCopyWithImpl<$Res, UserLiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) String id,
      @JsonKey(name: UserLiteModel.photoKey) String? photo,
      @JsonKey(name: UserLiteModel.firstNameKey) String firstName,
      @JsonKey(name: UserLiteModel.lastNameKey) String lastName});
}

/// @nodoc
class _$UserLiteModelCopyWithImpl<$Res, $Val extends UserLiteModel>
    implements $UserLiteModelCopyWith<$Res> {
  _$UserLiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photo = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLiteModelImplCopyWith<$Res>
    implements $UserLiteModelCopyWith<$Res> {
  factory _$$UserLiteModelImplCopyWith(
          _$UserLiteModelImpl value, $Res Function(_$UserLiteModelImpl) then) =
      __$$UserLiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserLiteModel.idKey) String id,
      @JsonKey(name: UserLiteModel.photoKey) String? photo,
      @JsonKey(name: UserLiteModel.firstNameKey) String firstName,
      @JsonKey(name: UserLiteModel.lastNameKey) String lastName});
}

/// @nodoc
class __$$UserLiteModelImplCopyWithImpl<$Res>
    extends _$UserLiteModelCopyWithImpl<$Res, _$UserLiteModelImpl>
    implements _$$UserLiteModelImplCopyWith<$Res> {
  __$$UserLiteModelImplCopyWithImpl(
      _$UserLiteModelImpl _value, $Res Function(_$UserLiteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photo = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$UserLiteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLiteModelImpl extends _UserLiteModel {
  const _$UserLiteModelImpl(
      {@JsonKey(name: UserLiteModel.idKey) required this.id,
      @JsonKey(name: UserLiteModel.photoKey) required this.photo,
      @JsonKey(name: UserLiteModel.firstNameKey) required this.firstName,
      @JsonKey(name: UserLiteModel.lastNameKey) required this.lastName})
      : super._();

  factory _$UserLiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLiteModelImplFromJson(json);

  @override
  @JsonKey(name: UserLiteModel.idKey)
  final String id;
  @override
  @JsonKey(name: UserLiteModel.photoKey)
  final String? photo;
  @override
  @JsonKey(name: UserLiteModel.firstNameKey)
  final String firstName;
  @override
  @JsonKey(name: UserLiteModel.lastNameKey)
  final String lastName;

  @override
  String toString() {
    return 'UserLiteModel(id: $id, photo: $photo, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLiteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photo, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLiteModelImplCopyWith<_$UserLiteModelImpl> get copyWith =>
      __$$UserLiteModelImplCopyWithImpl<_$UserLiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLiteModelImplToJson(
      this,
    );
  }
}

abstract class _UserLiteModel extends UserLiteModel {
  const factory _UserLiteModel(
      {@JsonKey(name: UserLiteModel.idKey) required final String id,
      @JsonKey(name: UserLiteModel.photoKey) required final String? photo,
      @JsonKey(name: UserLiteModel.firstNameKey)
      required final String firstName,
      @JsonKey(name: UserLiteModel.lastNameKey)
      required final String lastName}) = _$UserLiteModelImpl;
  const _UserLiteModel._() : super._();

  factory _UserLiteModel.fromJson(Map<String, dynamic> json) =
      _$UserLiteModelImpl.fromJson;

  @override
  @JsonKey(name: UserLiteModel.idKey)
  String get id;
  @override
  @JsonKey(name: UserLiteModel.photoKey)
  String? get photo;
  @override
  @JsonKey(name: UserLiteModel.firstNameKey)
  String get firstName;
  @override
  @JsonKey(name: UserLiteModel.lastNameKey)
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$UserLiteModelImplCopyWith<_$UserLiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
