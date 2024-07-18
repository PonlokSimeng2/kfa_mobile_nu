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
mixin _$InsertAutoVerbalState {
  ProviderStatus<void> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsertAutoVerbalStateCopyWith<InsertAutoVerbalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertAutoVerbalStateCopyWith<$Res> {
  factory $InsertAutoVerbalStateCopyWith(InsertAutoVerbalState value,
          $Res Function(InsertAutoVerbalState) then) =
      _$InsertAutoVerbalStateCopyWithImpl<$Res, InsertAutoVerbalState>;
  @useResult
  $Res call({ProviderStatus<void> status});

  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class _$InsertAutoVerbalStateCopyWithImpl<$Res,
        $Val extends InsertAutoVerbalState>
    implements $InsertAutoVerbalStateCopyWith<$Res> {
  _$InsertAutoVerbalStateCopyWithImpl(this._value, this._then);

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
              as ProviderStatus<void>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProviderStatusCopyWith<void, $Res> get status {
    return $ProviderStatusCopyWith<void, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InsertAutoVerbalStateImplCopyWith<$Res>
    implements $InsertAutoVerbalStateCopyWith<$Res> {
  factory _$$InsertAutoVerbalStateImplCopyWith(
          _$InsertAutoVerbalStateImpl value,
          $Res Function(_$InsertAutoVerbalStateImpl) then) =
      __$$InsertAutoVerbalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProviderStatus<void> status});

  @override
  $ProviderStatusCopyWith<void, $Res> get status;
}

/// @nodoc
class __$$InsertAutoVerbalStateImplCopyWithImpl<$Res>
    extends _$InsertAutoVerbalStateCopyWithImpl<$Res,
        _$InsertAutoVerbalStateImpl>
    implements _$$InsertAutoVerbalStateImplCopyWith<$Res> {
  __$$InsertAutoVerbalStateImplCopyWithImpl(_$InsertAutoVerbalStateImpl _value,
      $Res Function(_$InsertAutoVerbalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$InsertAutoVerbalStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProviderStatus<void>,
    ));
  }
}

/// @nodoc

class _$InsertAutoVerbalStateImpl extends _InsertAutoVerbalState {
  const _$InsertAutoVerbalStateImpl(
      {this.status = const ProviderStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final ProviderStatus<void> status;

  @override
  String toString() {
    return 'InsertAutoVerbalState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertAutoVerbalStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertAutoVerbalStateImplCopyWith<_$InsertAutoVerbalStateImpl>
      get copyWith => __$$InsertAutoVerbalStateImplCopyWithImpl<
          _$InsertAutoVerbalStateImpl>(this, _$identity);
}

abstract class _InsertAutoVerbalState extends InsertAutoVerbalState {
  const factory _InsertAutoVerbalState({final ProviderStatus<void> status}) =
      _$InsertAutoVerbalStateImpl;
  const _InsertAutoVerbalState._() : super._();

  @override
  ProviderStatus<void> get status;
  @override
  @JsonKey(ignore: true)
  _$$InsertAutoVerbalStateImplCopyWith<_$InsertAutoVerbalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
