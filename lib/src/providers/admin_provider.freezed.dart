// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportData {
  int get totalSale;
  int get totalRent;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDataCopyWith<ReportData> get copyWith =>
      _$ReportDataCopyWithImpl<ReportData>(this as ReportData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportData &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalRent, totalRent) ||
                other.totalRent == totalRent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalSale, totalRent);

  @override
  String toString() {
    return 'ReportData(totalSale: $totalSale, totalRent: $totalRent)';
  }
}

/// @nodoc
abstract mixin class $ReportDataCopyWith<$Res> {
  factory $ReportDataCopyWith(
          ReportData value, $Res Function(ReportData) _then) =
      _$ReportDataCopyWithImpl;
  @useResult
  $Res call({int totalSale, int totalRent});
}

/// @nodoc
class _$ReportDataCopyWithImpl<$Res> implements $ReportDataCopyWith<$Res> {
  _$ReportDataCopyWithImpl(this._self, this._then);

  final ReportData _self;
  final $Res Function(ReportData) _then;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSale = null,
    Object? totalRent = null,
  }) {
    return _then(_self.copyWith(
      totalSale: null == totalSale
          ? _self.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int,
      totalRent: null == totalRent
          ? _self.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _ReportData extends ReportData {
  const _ReportData({required this.totalSale, required this.totalRent})
      : super._();

  @override
  final int totalSale;
  @override
  final int totalRent;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportDataCopyWith<_ReportData> get copyWith =>
      __$ReportDataCopyWithImpl<_ReportData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportData &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalRent, totalRent) ||
                other.totalRent == totalRent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalSale, totalRent);

  @override
  String toString() {
    return 'ReportData(totalSale: $totalSale, totalRent: $totalRent)';
  }
}

/// @nodoc
abstract mixin class _$ReportDataCopyWith<$Res>
    implements $ReportDataCopyWith<$Res> {
  factory _$ReportDataCopyWith(
          _ReportData value, $Res Function(_ReportData) _then) =
      __$ReportDataCopyWithImpl;
  @override
  @useResult
  $Res call({int totalSale, int totalRent});
}

/// @nodoc
class __$ReportDataCopyWithImpl<$Res> implements _$ReportDataCopyWith<$Res> {
  __$ReportDataCopyWithImpl(this._self, this._then);

  final _ReportData _self;
  final $Res Function(_ReportData) _then;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalSale = null,
    Object? totalRent = null,
  }) {
    return _then(_ReportData(
      totalSale: null == totalSale
          ? _self.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as int,
      totalRent: null == totalRent
          ? _self.totalRent
          : totalRent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
