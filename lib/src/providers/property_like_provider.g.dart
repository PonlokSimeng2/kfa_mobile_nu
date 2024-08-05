// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'property_like_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertyLikeListHash() => r'3611e7cb9a5bd66a5ed743792e8abecb4c08c113';

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

/// See also [propertyLikeList].
@ProviderFor(propertyLikeList)
const propertyLikeListProvider = PropertyLikeListFamily();

/// See also [propertyLikeList].
class PropertyLikeListFamily
    extends Family<AsyncValue<IList<PropertyLikeModel>>> {
  /// See also [propertyLikeList].
  const PropertyLikeListFamily();

  /// See also [propertyLikeList].
  PropertyLikeListProvider call({
    required int propertyId,
    required int page,
  }) {
    return PropertyLikeListProvider(
      propertyId: propertyId,
      page: page,
    );
  }

  @override
  PropertyLikeListProvider getProviderOverride(
    covariant PropertyLikeListProvider provider,
  ) {
    return call(
      propertyId: provider.propertyId,
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
  String? get name => r'propertyLikeListProvider';
}

/// See also [propertyLikeList].
class PropertyLikeListProvider
    extends AutoDisposeFutureProvider<IList<PropertyLikeModel>> {
  /// See also [propertyLikeList].
  PropertyLikeListProvider({
    required int propertyId,
    required int page,
  }) : this._internal(
          (ref) => propertyLikeList(
            ref as PropertyLikeListRef,
            propertyId: propertyId,
            page: page,
          ),
          from: propertyLikeListProvider,
          name: r'propertyLikeListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyLikeListHash,
          dependencies: PropertyLikeListFamily._dependencies,
          allTransitiveDependencies:
              PropertyLikeListFamily._allTransitiveDependencies,
          propertyId: propertyId,
          page: page,
        );

  PropertyLikeListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyId,
    required this.page,
  }) : super.internal();

  final int propertyId;
  final int page;

  @override
  Override overrideWith(
    FutureOr<IList<PropertyLikeModel>> Function(PropertyLikeListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyLikeListProvider._internal(
        (ref) => create(ref as PropertyLikeListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyId: propertyId,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<IList<PropertyLikeModel>> createElement() {
    return _PropertyLikeListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyLikeListProvider &&
        other.propertyId == propertyId &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyLikeListRef
    on AutoDisposeFutureProviderRef<IList<PropertyLikeModel>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;

  /// The parameter `page` of this provider.
  int get page;
}

class _PropertyLikeListProviderElement
    extends AutoDisposeFutureProviderElement<IList<PropertyLikeModel>>
    with PropertyLikeListRef {
  _PropertyLikeListProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyLikeListProvider).propertyId;
  @override
  int get page => (origin as PropertyLikeListProvider).page;
}

String _$propertyLikeAtIndexHash() =>
    r'53392f1110155670ff43cc6a5de303b68b6521e5';

/// See also [propertyLikeAtIndex].
@ProviderFor(propertyLikeAtIndex)
const propertyLikeAtIndexProvider = PropertyLikeAtIndexFamily();

/// See also [propertyLikeAtIndex].
class PropertyLikeAtIndexFamily
    extends Family<PaginatedItem<PropertyLikeModel>?> {
  /// See also [propertyLikeAtIndex].
  const PropertyLikeAtIndexFamily();

  /// See also [propertyLikeAtIndex].
  PropertyLikeAtIndexProvider call({
    required int propertyId,
    required int index,
  }) {
    return PropertyLikeAtIndexProvider(
      propertyId: propertyId,
      index: index,
    );
  }

  @override
  PropertyLikeAtIndexProvider getProviderOverride(
    covariant PropertyLikeAtIndexProvider provider,
  ) {
    return call(
      propertyId: provider.propertyId,
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
  String? get name => r'propertyLikeAtIndexProvider';
}

/// See also [propertyLikeAtIndex].
class PropertyLikeAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<PropertyLikeModel>?> {
  /// See also [propertyLikeAtIndex].
  PropertyLikeAtIndexProvider({
    required int propertyId,
    required int index,
  }) : this._internal(
          (ref) => propertyLikeAtIndex(
            ref as PropertyLikeAtIndexRef,
            propertyId: propertyId,
            index: index,
          ),
          from: propertyLikeAtIndexProvider,
          name: r'propertyLikeAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyLikeAtIndexHash,
          dependencies: PropertyLikeAtIndexFamily._dependencies,
          allTransitiveDependencies:
              PropertyLikeAtIndexFamily._allTransitiveDependencies,
          propertyId: propertyId,
          index: index,
        );

  PropertyLikeAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyId,
    required this.index,
  }) : super.internal();

  final int propertyId;
  final int index;

  @override
  Override overrideWith(
    PaginatedItem<PropertyLikeModel>? Function(PropertyLikeAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyLikeAtIndexProvider._internal(
        (ref) => create(ref as PropertyLikeAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyId: propertyId,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<PropertyLikeModel>?>
      createElement() {
    return _PropertyLikeAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyLikeAtIndexProvider &&
        other.propertyId == propertyId &&
        other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyLikeAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<PropertyLikeModel>?> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;

  /// The parameter `index` of this provider.
  int get index;
}

class _PropertyLikeAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<PropertyLikeModel>?>
    with PropertyLikeAtIndexRef {
  _PropertyLikeAtIndexProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyLikeAtIndexProvider).propertyId;
  @override
  int get index => (origin as PropertyLikeAtIndexProvider).index;
}

String _$hasLikedHash() => r'ecbb95698ad48963e094684c93a54eafb4d101f7';

abstract class _$HasLiked extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final int propertyId;

  FutureOr<bool> build(
    int propertyId,
  );
}

/// See also [HasLiked].
@ProviderFor(HasLiked)
const hasLikedProvider = HasLikedFamily();

/// See also [HasLiked].
class HasLikedFamily extends Family<AsyncValue<bool>> {
  /// See also [HasLiked].
  const HasLikedFamily();

  /// See also [HasLiked].
  HasLikedProvider call(
    int propertyId,
  ) {
    return HasLikedProvider(
      propertyId,
    );
  }

  @override
  HasLikedProvider getProviderOverride(
    covariant HasLikedProvider provider,
  ) {
    return call(
      provider.propertyId,
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
  String? get name => r'hasLikedProvider';
}

/// See also [HasLiked].
class HasLikedProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HasLiked, bool> {
  /// See also [HasLiked].
  HasLikedProvider(
    int propertyId,
  ) : this._internal(
          () => HasLiked()..propertyId = propertyId,
          from: hasLikedProvider,
          name: r'hasLikedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hasLikedHash,
          dependencies: HasLikedFamily._dependencies,
          allTransitiveDependencies: HasLikedFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  HasLikedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyId,
  }) : super.internal();

  final int propertyId;

  @override
  FutureOr<bool> runNotifierBuild(
    covariant HasLiked notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(HasLiked Function() create) {
    return ProviderOverride(
      origin: this,
      override: HasLikedProvider._internal(
        () => create()..propertyId = propertyId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyId: propertyId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HasLiked, bool> createElement() {
    return _HasLikedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HasLikedProvider && other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HasLikedRef on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _HasLikedProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HasLiked, bool>
    with HasLikedRef {
  _HasLikedProviderElement(super.provider);

  @override
  int get propertyId => (origin as HasLikedProvider).propertyId;
}

String _$propertyLikeHash() => r'1a0fccffd2e9c849deb76ac83ff7cf7c6c5453b3';

abstract class _$PropertyLike
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int propertyId;

  ProviderStatus<void> build(
    int propertyId,
  );
}

/// See also [PropertyLike].
@ProviderFor(PropertyLike)
const propertyLikeProvider = PropertyLikeFamily();

/// See also [PropertyLike].
class PropertyLikeFamily extends Family<ProviderStatus<void>> {
  /// See also [PropertyLike].
  const PropertyLikeFamily();

  /// See also [PropertyLike].
  PropertyLikeProvider call(
    int propertyId,
  ) {
    return PropertyLikeProvider(
      propertyId,
    );
  }

  @override
  PropertyLikeProvider getProviderOverride(
    covariant PropertyLikeProvider provider,
  ) {
    return call(
      provider.propertyId,
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
  String? get name => r'propertyLikeProvider';
}

/// See also [PropertyLike].
class PropertyLikeProvider extends AutoDisposeNotifierProviderImpl<PropertyLike,
    ProviderStatus<void>> {
  /// See also [PropertyLike].
  PropertyLikeProvider(
    int propertyId,
  ) : this._internal(
          () => PropertyLike()..propertyId = propertyId,
          from: propertyLikeProvider,
          name: r'propertyLikeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyLikeHash,
          dependencies: PropertyLikeFamily._dependencies,
          allTransitiveDependencies:
              PropertyLikeFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  PropertyLikeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyId,
  }) : super.internal();

  final int propertyId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant PropertyLike notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(PropertyLike Function() create) {
    return ProviderOverride(
      origin: this,
      override: PropertyLikeProvider._internal(
        () => create()..propertyId = propertyId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyId: propertyId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PropertyLike, ProviderStatus<void>>
      createElement() {
    return _PropertyLikeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyLikeProvider && other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyLikeRef on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _PropertyLikeProviderElement extends AutoDisposeNotifierProviderElement<
    PropertyLike, ProviderStatus<void>> with PropertyLikeRef {
  _PropertyLikeProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyLikeProvider).propertyId;
}

String _$propertyUnlikeHash() => r'd42796eafcac9453acf0c58e58650f93d5513297';

abstract class _$PropertyUnlike
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int propertyId;

  ProviderStatus<void> build(
    int propertyId,
  );
}

/// See also [PropertyUnlike].
@ProviderFor(PropertyUnlike)
const propertyUnlikeProvider = PropertyUnlikeFamily();

/// See also [PropertyUnlike].
class PropertyUnlikeFamily extends Family<ProviderStatus<void>> {
  /// See also [PropertyUnlike].
  const PropertyUnlikeFamily();

  /// See also [PropertyUnlike].
  PropertyUnlikeProvider call(
    int propertyId,
  ) {
    return PropertyUnlikeProvider(
      propertyId,
    );
  }

  @override
  PropertyUnlikeProvider getProviderOverride(
    covariant PropertyUnlikeProvider provider,
  ) {
    return call(
      provider.propertyId,
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
  String? get name => r'propertyUnlikeProvider';
}

/// See also [PropertyUnlike].
class PropertyUnlikeProvider extends AutoDisposeNotifierProviderImpl<
    PropertyUnlike, ProviderStatus<void>> {
  /// See also [PropertyUnlike].
  PropertyUnlikeProvider(
    int propertyId,
  ) : this._internal(
          () => PropertyUnlike()..propertyId = propertyId,
          from: propertyUnlikeProvider,
          name: r'propertyUnlikeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyUnlikeHash,
          dependencies: PropertyUnlikeFamily._dependencies,
          allTransitiveDependencies:
              PropertyUnlikeFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  PropertyUnlikeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyId,
  }) : super.internal();

  final int propertyId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant PropertyUnlike notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(PropertyUnlike Function() create) {
    return ProviderOverride(
      origin: this,
      override: PropertyUnlikeProvider._internal(
        () => create()..propertyId = propertyId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyId: propertyId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PropertyUnlike, ProviderStatus<void>>
      createElement() {
    return _PropertyUnlikeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyUnlikeProvider && other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyUnlikeRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _PropertyUnlikeProviderElement extends AutoDisposeNotifierProviderElement<
    PropertyUnlike, ProviderStatus<void>> with PropertyUnlikeRef {
  _PropertyUnlikeProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyUnlikeProvider).propertyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
