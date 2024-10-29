// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'property_comment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertyCommentListHash() =>
    r'd2d59bc8d6865cbdea18f42e308fbd2e0ff8b0c9';

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

/// See also [propertyCommentList].
@ProviderFor(propertyCommentList)
const propertyCommentListProvider = PropertyCommentListFamily();

/// See also [propertyCommentList].
class PropertyCommentListFamily
    extends Family<AsyncValue<IList<PropertyCommentModel>>> {
  /// See also [propertyCommentList].
  const PropertyCommentListFamily();

  /// See also [propertyCommentList].
  PropertyCommentListProvider call({
    required int propertyId,
    required int page,
  }) {
    return PropertyCommentListProvider(
      propertyId: propertyId,
      page: page,
    );
  }

  @override
  PropertyCommentListProvider getProviderOverride(
    covariant PropertyCommentListProvider provider,
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
  String? get name => r'propertyCommentListProvider';
}

/// See also [propertyCommentList].
class PropertyCommentListProvider
    extends AutoDisposeFutureProvider<IList<PropertyCommentModel>> {
  /// See also [propertyCommentList].
  PropertyCommentListProvider({
    required int propertyId,
    required int page,
  }) : this._internal(
          (ref) => propertyCommentList(
            ref as PropertyCommentListRef,
            propertyId: propertyId,
            page: page,
          ),
          from: propertyCommentListProvider,
          name: r'propertyCommentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyCommentListHash,
          dependencies: PropertyCommentListFamily._dependencies,
          allTransitiveDependencies:
              PropertyCommentListFamily._allTransitiveDependencies,
          propertyId: propertyId,
          page: page,
        );

  PropertyCommentListProvider._internal(
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
    FutureOr<IList<PropertyCommentModel>> Function(
            PropertyCommentListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyCommentListProvider._internal(
        (ref) => create(ref as PropertyCommentListRef),
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
  AutoDisposeFutureProviderElement<IList<PropertyCommentModel>>
      createElement() {
    return _PropertyCommentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyCommentListProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PropertyCommentListRef
    on AutoDisposeFutureProviderRef<IList<PropertyCommentModel>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;

  /// The parameter `page` of this provider.
  int get page;
}

class _PropertyCommentListProviderElement
    extends AutoDisposeFutureProviderElement<IList<PropertyCommentModel>>
    with PropertyCommentListRef {
  _PropertyCommentListProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyCommentListProvider).propertyId;
  @override
  int get page => (origin as PropertyCommentListProvider).page;
}

String _$propertyCommentAtIndexHash() =>
    r'a5658414b04f2f5061f206568cc0e90394905c2c';

/// See also [propertyCommentAtIndex].
@ProviderFor(propertyCommentAtIndex)
const propertyCommentAtIndexProvider = PropertyCommentAtIndexFamily();

/// See also [propertyCommentAtIndex].
class PropertyCommentAtIndexFamily
    extends Family<PaginatedItem<PropertyCommentModel>?> {
  /// See also [propertyCommentAtIndex].
  const PropertyCommentAtIndexFamily();

  /// See also [propertyCommentAtIndex].
  PropertyCommentAtIndexProvider call({
    required int propertyId,
    required int index,
  }) {
    return PropertyCommentAtIndexProvider(
      propertyId: propertyId,
      index: index,
    );
  }

  @override
  PropertyCommentAtIndexProvider getProviderOverride(
    covariant PropertyCommentAtIndexProvider provider,
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
  String? get name => r'propertyCommentAtIndexProvider';
}

/// See also [propertyCommentAtIndex].
class PropertyCommentAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<PropertyCommentModel>?> {
  /// See also [propertyCommentAtIndex].
  PropertyCommentAtIndexProvider({
    required int propertyId,
    required int index,
  }) : this._internal(
          (ref) => propertyCommentAtIndex(
            ref as PropertyCommentAtIndexRef,
            propertyId: propertyId,
            index: index,
          ),
          from: propertyCommentAtIndexProvider,
          name: r'propertyCommentAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyCommentAtIndexHash,
          dependencies: PropertyCommentAtIndexFamily._dependencies,
          allTransitiveDependencies:
              PropertyCommentAtIndexFamily._allTransitiveDependencies,
          propertyId: propertyId,
          index: index,
        );

  PropertyCommentAtIndexProvider._internal(
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
    PaginatedItem<PropertyCommentModel>? Function(
            PropertyCommentAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyCommentAtIndexProvider._internal(
        (ref) => create(ref as PropertyCommentAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<PropertyCommentModel>?>
      createElement() {
    return _PropertyCommentAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyCommentAtIndexProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PropertyCommentAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<PropertyCommentModel>?> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;

  /// The parameter `index` of this provider.
  int get index;
}

class _PropertyCommentAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<PropertyCommentModel>?>
    with PropertyCommentAtIndexRef {
  _PropertyCommentAtIndexProviderElement(super.provider);

  @override
  int get propertyId => (origin as PropertyCommentAtIndexProvider).propertyId;
  @override
  int get index => (origin as PropertyCommentAtIndexProvider).index;
}

String _$addPropertyCommentHash() =>
    r'0e759a26a95196bd4111663da4e6e5e521e6eba7';

abstract class _$AddPropertyComment
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int propertyId;

  ProviderStatus<void> build(
    int propertyId,
  );
}

/// See also [AddPropertyComment].
@ProviderFor(AddPropertyComment)
const addPropertyCommentProvider = AddPropertyCommentFamily();

/// See also [AddPropertyComment].
class AddPropertyCommentFamily extends Family<ProviderStatus<void>> {
  /// See also [AddPropertyComment].
  const AddPropertyCommentFamily();

  /// See also [AddPropertyComment].
  AddPropertyCommentProvider call(
    int propertyId,
  ) {
    return AddPropertyCommentProvider(
      propertyId,
    );
  }

  @override
  AddPropertyCommentProvider getProviderOverride(
    covariant AddPropertyCommentProvider provider,
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
  String? get name => r'addPropertyCommentProvider';
}

/// See also [AddPropertyComment].
class AddPropertyCommentProvider extends AutoDisposeNotifierProviderImpl<
    AddPropertyComment, ProviderStatus<void>> {
  /// See also [AddPropertyComment].
  AddPropertyCommentProvider(
    int propertyId,
  ) : this._internal(
          () => AddPropertyComment()..propertyId = propertyId,
          from: addPropertyCommentProvider,
          name: r'addPropertyCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addPropertyCommentHash,
          dependencies: AddPropertyCommentFamily._dependencies,
          allTransitiveDependencies:
              AddPropertyCommentFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  AddPropertyCommentProvider._internal(
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
    covariant AddPropertyComment notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(AddPropertyComment Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddPropertyCommentProvider._internal(
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
  AutoDisposeNotifierProviderElement<AddPropertyComment, ProviderStatus<void>>
      createElement() {
    return _AddPropertyCommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddPropertyCommentProvider &&
        other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddPropertyCommentRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _AddPropertyCommentProviderElement
    extends AutoDisposeNotifierProviderElement<AddPropertyComment,
        ProviderStatus<void>> with AddPropertyCommentRef {
  _AddPropertyCommentProviderElement(super.provider);

  @override
  int get propertyId => (origin as AddPropertyCommentProvider).propertyId;
}

String _$editPropertyCommentHash() =>
    r'8a1df36eefd2be22b159d4e7b3bbf1d07f2f62a4';

abstract class _$EditPropertyComment
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final PropertyCommentId commentId;

  ProviderStatus<void> build(
    PropertyCommentId commentId,
  );
}

/// See also [EditPropertyComment].
@ProviderFor(EditPropertyComment)
const editPropertyCommentProvider = EditPropertyCommentFamily();

/// See also [EditPropertyComment].
class EditPropertyCommentFamily extends Family<ProviderStatus<void>> {
  /// See also [EditPropertyComment].
  const EditPropertyCommentFamily();

  /// See also [EditPropertyComment].
  EditPropertyCommentProvider call(
    PropertyCommentId commentId,
  ) {
    return EditPropertyCommentProvider(
      commentId,
    );
  }

  @override
  EditPropertyCommentProvider getProviderOverride(
    covariant EditPropertyCommentProvider provider,
  ) {
    return call(
      provider.commentId,
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
  String? get name => r'editPropertyCommentProvider';
}

/// See also [EditPropertyComment].
class EditPropertyCommentProvider extends AutoDisposeNotifierProviderImpl<
    EditPropertyComment, ProviderStatus<void>> {
  /// See also [EditPropertyComment].
  EditPropertyCommentProvider(
    PropertyCommentId commentId,
  ) : this._internal(
          () => EditPropertyComment()..commentId = commentId,
          from: editPropertyCommentProvider,
          name: r'editPropertyCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editPropertyCommentHash,
          dependencies: EditPropertyCommentFamily._dependencies,
          allTransitiveDependencies:
              EditPropertyCommentFamily._allTransitiveDependencies,
          commentId: commentId,
        );

  EditPropertyCommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.commentId,
  }) : super.internal();

  final PropertyCommentId commentId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant EditPropertyComment notifier,
  ) {
    return notifier.build(
      commentId,
    );
  }

  @override
  Override overrideWith(EditPropertyComment Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditPropertyCommentProvider._internal(
        () => create()..commentId = commentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        commentId: commentId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EditPropertyComment, ProviderStatus<void>>
      createElement() {
    return _EditPropertyCommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditPropertyCommentProvider && other.commentId == commentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, commentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EditPropertyCommentRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `commentId` of this provider.
  PropertyCommentId get commentId;
}

class _EditPropertyCommentProviderElement
    extends AutoDisposeNotifierProviderElement<EditPropertyComment,
        ProviderStatus<void>> with EditPropertyCommentRef {
  _EditPropertyCommentProviderElement(super.provider);

  @override
  PropertyCommentId get commentId =>
      (origin as EditPropertyCommentProvider).commentId;
}

String _$deletePropertyCommentHash() =>
    r'4cb6f1ffa67b8799d5ec9c637338a0fe11b2305d';

abstract class _$DeletePropertyComment
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final PropertyCommentId commentId;

  ProviderStatus<void> build(
    PropertyCommentId commentId,
  );
}

/// See also [DeletePropertyComment].
@ProviderFor(DeletePropertyComment)
const deletePropertyCommentProvider = DeletePropertyCommentFamily();

/// See also [DeletePropertyComment].
class DeletePropertyCommentFamily extends Family<ProviderStatus<void>> {
  /// See also [DeletePropertyComment].
  const DeletePropertyCommentFamily();

  /// See also [DeletePropertyComment].
  DeletePropertyCommentProvider call(
    PropertyCommentId commentId,
  ) {
    return DeletePropertyCommentProvider(
      commentId,
    );
  }

  @override
  DeletePropertyCommentProvider getProviderOverride(
    covariant DeletePropertyCommentProvider provider,
  ) {
    return call(
      provider.commentId,
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
  String? get name => r'deletePropertyCommentProvider';
}

/// See also [DeletePropertyComment].
class DeletePropertyCommentProvider extends AutoDisposeNotifierProviderImpl<
    DeletePropertyComment, ProviderStatus<void>> {
  /// See also [DeletePropertyComment].
  DeletePropertyCommentProvider(
    PropertyCommentId commentId,
  ) : this._internal(
          () => DeletePropertyComment()..commentId = commentId,
          from: deletePropertyCommentProvider,
          name: r'deletePropertyCommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePropertyCommentHash,
          dependencies: DeletePropertyCommentFamily._dependencies,
          allTransitiveDependencies:
              DeletePropertyCommentFamily._allTransitiveDependencies,
          commentId: commentId,
        );

  DeletePropertyCommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.commentId,
  }) : super.internal();

  final PropertyCommentId commentId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant DeletePropertyComment notifier,
  ) {
    return notifier.build(
      commentId,
    );
  }

  @override
  Override overrideWith(DeletePropertyComment Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeletePropertyCommentProvider._internal(
        () => create()..commentId = commentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        commentId: commentId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DeletePropertyComment,
      ProviderStatus<void>> createElement() {
    return _DeletePropertyCommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePropertyCommentProvider &&
        other.commentId == commentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, commentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePropertyCommentRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `commentId` of this provider.
  PropertyCommentId get commentId;
}

class _DeletePropertyCommentProviderElement
    extends AutoDisposeNotifierProviderElement<DeletePropertyComment,
        ProviderStatus<void>> with DeletePropertyCommentRef {
  _DeletePropertyCommentProviderElement(super.provider);

  @override
  PropertyCommentId get commentId =>
      (origin as DeletePropertyCommentProvider).commentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
