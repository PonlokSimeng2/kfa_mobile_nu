// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'report_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countPropertyAndAutoVerbalHash() =>
    r'd647334b85dcc838afd5e437f1a5a9d7071a908d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [countPropertyAndAutoVerbal].
@ProviderFor(countPropertyAndAutoVerbal)
const countPropertyAndAutoVerbalProvider = CountPropertyAndAutoVerbalFamily();

/// See also [countPropertyAndAutoVerbal].
class CountPropertyAndAutoVerbalFamily
    extends Family<AsyncValue<({int propertyCount, int autoVerbalCount})>> {
  /// See also [countPropertyAndAutoVerbal].
  const CountPropertyAndAutoVerbalFamily();

  /// See also [countPropertyAndAutoVerbal].
  CountPropertyAndAutoVerbalProvider call({
    IList<PropertyAndAutoVerbalStatus> statuses = const IList.empty(),
    String? userId,
  }) {
    return CountPropertyAndAutoVerbalProvider(
      statuses: statuses,
      userId: userId,
    );
  }

  @override
  CountPropertyAndAutoVerbalProvider getProviderOverride(
    covariant CountPropertyAndAutoVerbalProvider provider,
  ) {
    return call(
      statuses: provider.statuses,
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countPropertyAndAutoVerbalProvider';
}

/// See also [countPropertyAndAutoVerbal].
class CountPropertyAndAutoVerbalProvider extends AutoDisposeFutureProvider<
    ({int propertyCount, int autoVerbalCount})> {
  /// See also [countPropertyAndAutoVerbal].
  CountPropertyAndAutoVerbalProvider({
    IList<PropertyAndAutoVerbalStatus> statuses = const IList.empty(),
    String? userId,
  }) : this._internal(
          (ref) => countPropertyAndAutoVerbal(
            ref as CountPropertyAndAutoVerbalRef,
            statuses: statuses,
            userId: userId,
          ),
          from: countPropertyAndAutoVerbalProvider,
          name: r'countPropertyAndAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countPropertyAndAutoVerbalHash,
          dependencies: CountPropertyAndAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              CountPropertyAndAutoVerbalFamily._allTransitiveDependencies,
          statuses: statuses,
          userId: userId,
        );

  CountPropertyAndAutoVerbalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.statuses,
    required this.userId,
  }) : super.internal();

  final IList<PropertyAndAutoVerbalStatus> statuses;
  final String? userId;

  @override
  Override overrideWith(
    FutureOr<({int propertyCount, int autoVerbalCount})> Function(
            CountPropertyAndAutoVerbalRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CountPropertyAndAutoVerbalProvider._internal(
        (ref) => create(ref as CountPropertyAndAutoVerbalRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        statuses: statuses,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<({int propertyCount, int autoVerbalCount})>
      createElement() {
    return _CountPropertyAndAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountPropertyAndAutoVerbalProvider &&
        other.statuses == statuses &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, statuses.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CountPropertyAndAutoVerbalRef on AutoDisposeFutureProviderRef<
    ({int propertyCount, int autoVerbalCount})> {
  /// The parameter `statuses` of this provider.
  IList<PropertyAndAutoVerbalStatus> get statuses;

  /// The parameter `userId` of this provider.
  String? get userId;
}

class _CountPropertyAndAutoVerbalProviderElement
    extends AutoDisposeFutureProviderElement<
        ({int propertyCount, int autoVerbalCount})>
    with CountPropertyAndAutoVerbalRef {
  _CountPropertyAndAutoVerbalProviderElement(super.provider);

  @override
  IList<PropertyAndAutoVerbalStatus> get statuses =>
      (origin as CountPropertyAndAutoVerbalProvider).statuses;
  @override
  String? get userId => (origin as CountPropertyAndAutoVerbalProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
