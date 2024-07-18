// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_verbal_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$nameState {
  ProviderStatus<successDataType> get status =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $nameStateCopyWith<nameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $nameStateCopyWith<$Res> {
  factory $nameStateCopyWith(nameState value, $Res Function(nameState) then) =
      _$nameStateCopyWithImpl<$Res, nameState>;
  @useResult
  $Res call({ProviderStatus<successDataType> status});

  $ProviderStatusCopyWith<InvalidType, $Res> get status;
}

/// @nodoc
class _$nameStateCopyWithImpl<$Res, $Val extends nameState>
    implements $nameStateCopyWith<$Res> {
  _$nameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<successDataType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<InvalidType, $Res> get status {
    return $ProviderStatusCopyWith<InvalidType, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$nameStateImplCopyWith<$Res>
    implements $nameStateCopyWith<$Res> {
  factory _$$nameStateImplCopyWith(
          _$nameStateImpl value, $Res Function(_$nameStateImpl) then) =
      __$$nameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProviderStatus<successDataType> status});

  @override
  $ProviderStatusCopyWith<InvalidType, $Res> get status;
}

/// @nodoc
class __$$nameStateImplCopyWithImpl<$Res>
    extends _$nameStateCopyWithImpl<$Res, _$nameStateImpl>
    implements _$$nameStateImplCopyWith<$Res> {
  __$$nameStateImplCopyWithImpl(
      _$nameStateImpl _value, $Res Function(_$nameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$nameStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<successDataType>,
    ));
  }
}

/// @nodoc

class _$nameStateImpl extends _nameState {
  const _$nameStateImpl({this.status = const ProviderStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final ProviderStatus<successDataType> status;

  @override
  String toString() {
    return 'nameState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$nameStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$nameStateImplCopyWith<_$nameStateImpl> get copyWith =>
      __$$nameStateImplCopyWithImpl<_$nameStateImpl>(this, _$identity);
}

abstract class _nameState extends nameState {
  const factory _nameState({final ProviderStatus<successDataType> status}) =
      _$nameStateImpl;
  const _nameState._() : super._();

  @override
  ProviderStatus<successDataType> get status;
  @override
  @JsonKey(ignore: true)
  _$$nameStateImplCopyWith<_$nameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
