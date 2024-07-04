// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertyListHash() => r'7d8989ee534fa42dc975627c08e8ee9dbacc2e0c';

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

/// See also [propertyList].
@ProviderFor(propertyList)
const propertyListProvider = PropertyListFamily();

/// See also [propertyList].
class PropertyListFamily extends Family<AsyncValue<IList<PropertyModel>>> {
  /// See also [propertyList].
  const PropertyListFamily();

  /// See also [propertyList].
  PropertyListProvider call({
    required int page,
  }) {
    return PropertyListProvider(
      page: page,
    );
  }

  @override
  PropertyListProvider getProviderOverride(
    covariant PropertyListProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'propertyListProvider';
}

/// See also [propertyList].
class PropertyListProvider
    extends AutoDisposeFutureProvider<IList<PropertyModel>> {
  /// See also [propertyList].
  PropertyListProvider({
    required int page,
  }) : this._internal(
          (ref) => propertyList(
            ref as PropertyListRef,
            page: page,
          ),
          from: propertyListProvider,
          name: r'propertyListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyListHash,
          dependencies: PropertyListFamily._dependencies,
          allTransitiveDependencies:
              PropertyListFamily._allTransitiveDependencies,
          page: page,
        );

  PropertyListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<IList<PropertyModel>> Function(PropertyListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyListProvider._internal(
        (ref) => create(ref as PropertyListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<IList<PropertyModel>> createElement() {
    return _PropertyListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyListProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyListRef on AutoDisposeFutureProviderRef<IList<PropertyModel>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PropertyListProviderElement
    extends AutoDisposeFutureProviderElement<IList<PropertyModel>>
    with PropertyListRef {
  _PropertyListProviderElement(super.provider);

  @override
  int get page => (origin as PropertyListProvider).page;
}

String _$propertyAtIndexHash() => r'70d859bb4f1ab4fe4a38f25d29b47dc604741ed2';

/// See also [propertyAtIndex].
@ProviderFor(propertyAtIndex)
const propertyAtIndexProvider = PropertyAtIndexFamily();

/// See also [propertyAtIndex].
class PropertyAtIndexFamily extends Family<PaginatedItem<PropertyModel>?> {
  /// See also [propertyAtIndex].
  const PropertyAtIndexFamily();

  /// See also [propertyAtIndex].
  PropertyAtIndexProvider call({
    required int index,
  }) {
    return PropertyAtIndexProvider(
      index: index,
    );
  }

  @override
  PropertyAtIndexProvider getProviderOverride(
    covariant PropertyAtIndexProvider provider,
  ) {
    return call(
      index: provider.index,
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
  String? get name => r'propertyAtIndexProvider';
}

/// See also [propertyAtIndex].
class PropertyAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<PropertyModel>?> {
  /// See also [propertyAtIndex].
  PropertyAtIndexProvider({
    required int index,
  }) : this._internal(
          (ref) => propertyAtIndex(
            ref as PropertyAtIndexRef,
            index: index,
          ),
          from: propertyAtIndexProvider,
          name: r'propertyAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyAtIndexHash,
          dependencies: PropertyAtIndexFamily._dependencies,
          allTransitiveDependencies:
              PropertyAtIndexFamily._allTransitiveDependencies,
          index: index,
        );

  PropertyAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    PaginatedItem<PropertyModel>? Function(PropertyAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyAtIndexProvider._internal(
        (ref) => create(ref as PropertyAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<PropertyModel>?> createElement() {
    return _PropertyAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyAtIndexProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<PropertyModel>?> {
  /// The parameter `index` of this provider.
  int get index;
}

class _PropertyAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<PropertyModel>?>
    with PropertyAtIndexRef {
  _PropertyAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as PropertyAtIndexProvider).index;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
