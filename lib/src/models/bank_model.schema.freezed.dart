// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_model.schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankModel _$BankModelFromJson(Map<String, dynamic> json) {
  return _BankModel.fromJson(json);
}

/// @nodoc
mixin _$BankModel {
  @JsonKey(name: BankModel.idKey)
  BankId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BankModel.nameKey)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankModelCopyWith<BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) then) =
      _$BankModelCopyWithImpl<$Res, BankModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BankModel.idKey) BankId id,
      @JsonKey(name: BankModel.nameKey) String name});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res, $Val extends BankModel>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._value, this._then);

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
              as BankId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankModelImplCopyWith<$Res>
    implements $BankModelCopyWith<$Res> {
  factory _$$BankModelImplCopyWith(
          _$BankModelImpl value, $Res Function(_$BankModelImpl) then) =
      __$$BankModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BankModel.idKey) BankId id,
      @JsonKey(name: BankModel.nameKey) String name});
}

/// @nodoc
class __$$BankModelImplCopyWithImpl<$Res>
    extends _$BankModelCopyWithImpl<$Res, _$BankModelImpl>
    implements _$$BankModelImplCopyWith<$Res> {
  __$$BankModelImplCopyWithImpl(
      _$BankModelImpl _value, $Res Function(_$BankModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BankModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BankId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(BankModel.tableName)
class _$BankModelImpl extends _BankModel {
  const _$BankModelImpl(
      {@JsonKey(name: BankModel.idKey) required this.id,
      @JsonKey(name: BankModel.nameKey) required this.name})
      : super._();

  factory _$BankModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankModelImplFromJson(json);

  @override
  @JsonKey(name: BankModel.idKey)
  final BankId id;
  @override
  @JsonKey(name: BankModel.nameKey)
  final String name;

  @override
  String toString() {
    return 'BankModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      __$$BankModelImplCopyWithImpl<_$BankModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankModelImplToJson(
      this,
    );
  }
}

abstract class _BankModel extends BankModel {
  const factory _BankModel(
          {@JsonKey(name: BankModel.idKey) required final BankId id,
          @JsonKey(name: BankModel.nameKey) required final String name}) =
      _$BankModelImpl;
  const _BankModel._() : super._();

  factory _BankModel.fromJson(Map<String, dynamic> json) =
      _$BankModelImpl.fromJson;

  @override
  @JsonKey(name: BankModel.idKey)
  BankId get id;
  @override
  @JsonKey(name: BankModel.nameKey)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankDetailModel _$BankDetailModelFromJson(Map<String, dynamic> json) {
  return _BankDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BankDetailModel {
  @JsonKey(name: BankDetailModel.idKey)
  BankId get id => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.nameKey)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.createdAtKey)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.updatedAtKey)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.adressKey)
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.phoneKey)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: BankDetailModel.emailKey)
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDetailModelCopyWith<BankDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailModelCopyWith<$Res> {
  factory $BankDetailModelCopyWith(
          BankDetailModel value, $Res Function(BankDetailModel) then) =
      _$BankDetailModelCopyWithImpl<$Res, BankDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: BankDetailModel.idKey) BankId id,
      @JsonKey(name: BankDetailModel.nameKey) String name,
      @JsonKey(name: BankDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BankDetailModel.updatedAtKey) DateTime updatedAt,
      @JsonKey(name: BankDetailModel.adressKey) String adress,
      @JsonKey(name: BankDetailModel.phoneKey) String phone,
      @JsonKey(name: BankDetailModel.emailKey) String email});
}

/// @nodoc
class _$BankDetailModelCopyWithImpl<$Res, $Val extends BankDetailModel>
    implements $BankDetailModelCopyWith<$Res> {
  _$BankDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? adress = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BankId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankDetailModelImplCopyWith<$Res>
    implements $BankDetailModelCopyWith<$Res> {
  factory _$$BankDetailModelImplCopyWith(_$BankDetailModelImpl value,
          $Res Function(_$BankDetailModelImpl) then) =
      __$$BankDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BankDetailModel.idKey) BankId id,
      @JsonKey(name: BankDetailModel.nameKey) String name,
      @JsonKey(name: BankDetailModel.createdAtKey) DateTime createdAt,
      @JsonKey(name: BankDetailModel.updatedAtKey) DateTime updatedAt,
      @JsonKey(name: BankDetailModel.adressKey) String adress,
      @JsonKey(name: BankDetailModel.phoneKey) String phone,
      @JsonKey(name: BankDetailModel.emailKey) String email});
}

/// @nodoc
class __$$BankDetailModelImplCopyWithImpl<$Res>
    extends _$BankDetailModelCopyWithImpl<$Res, _$BankDetailModelImpl>
    implements _$$BankDetailModelImplCopyWith<$Res> {
  __$$BankDetailModelImplCopyWithImpl(
      _$BankDetailModelImpl _value, $Res Function(_$BankDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? adress = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$BankDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BankId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TableModel(BankDetailModel.tableName)
class _$BankDetailModelImpl extends _BankDetailModel {
  const _$BankDetailModelImpl(
      {@JsonKey(name: BankDetailModel.idKey) required this.id,
      @JsonKey(name: BankDetailModel.nameKey) required this.name,
      @JsonKey(name: BankDetailModel.createdAtKey) required this.createdAt,
      @JsonKey(name: BankDetailModel.updatedAtKey) required this.updatedAt,
      @JsonKey(name: BankDetailModel.adressKey) required this.adress,
      @JsonKey(name: BankDetailModel.phoneKey) required this.phone,
      @JsonKey(name: BankDetailModel.emailKey) required this.email})
      : super._();

  factory _$BankDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDetailModelImplFromJson(json);

  @override
  @JsonKey(name: BankDetailModel.idKey)
  final BankId id;
  @override
  @JsonKey(name: BankDetailModel.nameKey)
  final String name;
  @override
  @JsonKey(name: BankDetailModel.createdAtKey)
  final DateTime createdAt;
  @override
  @JsonKey(name: BankDetailModel.updatedAtKey)
  final DateTime updatedAt;
  @override
  @JsonKey(name: BankDetailModel.adressKey)
  final String adress;
  @override
  @JsonKey(name: BankDetailModel.phoneKey)
  final String phone;
  @override
  @JsonKey(name: BankDetailModel.emailKey)
  final String email;

  @override
  String toString() {
    return 'BankDetailModel(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, adress: $adress, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, createdAt, updatedAt, adress, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDetailModelImplCopyWith<_$BankDetailModelImpl> get copyWith =>
      __$$BankDetailModelImplCopyWithImpl<_$BankDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BankDetailModel extends BankDetailModel {
  const factory _BankDetailModel(
      {@JsonKey(name: BankDetailModel.idKey) required final BankId id,
      @JsonKey(name: BankDetailModel.nameKey) required final String name,
      @JsonKey(name: BankDetailModel.createdAtKey)
      required final DateTime createdAt,
      @JsonKey(name: BankDetailModel.updatedAtKey)
      required final DateTime updatedAt,
      @JsonKey(name: BankDetailModel.adressKey) required final String adress,
      @JsonKey(name: BankDetailModel.phoneKey) required final String phone,
      @JsonKey(name: BankDetailModel.emailKey)
      required final String email}) = _$BankDetailModelImpl;
  const _BankDetailModel._() : super._();

  factory _BankDetailModel.fromJson(Map<String, dynamic> json) =
      _$BankDetailModelImpl.fromJson;

  @override
  @JsonKey(name: BankDetailModel.idKey)
  BankId get id;
  @override
  @JsonKey(name: BankDetailModel.nameKey)
  String get name;
  @override
  @JsonKey(name: BankDetailModel.createdAtKey)
  DateTime get createdAt;
  @override
  @JsonKey(name: BankDetailModel.updatedAtKey)
  DateTime get updatedAt;
  @override
  @JsonKey(name: BankDetailModel.adressKey)
  String get adress;
  @override
  @JsonKey(name: BankDetailModel.phoneKey)
  String get phone;
  @override
  @JsonKey(name: BankDetailModel.emailKey)
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$BankDetailModelImplCopyWith<_$BankDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
