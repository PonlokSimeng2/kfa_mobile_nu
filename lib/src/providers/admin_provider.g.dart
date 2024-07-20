// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reportDataHash() => r'85a8c4583a7b7d844eb339f288180c185a989cc2';

/// See also [reportData].
@ProviderFor(reportData)
final reportDataProvider = AutoDisposeFutureProvider<ReportData>.internal(
  reportData,
  name: r'reportDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$reportDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReportDataRef = AutoDisposeFutureProviderRef<ReportData>;
String _$userListHash() => r'f92f108fbef6a34b97b46c4b147e3f00c5e197e9';

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

/// See also [userList].
@ProviderFor(userList)
const userListProvider = UserListFamily();

/// See also [userList].
class UserListFamily extends Family<AsyncValue<IList<UserModel>>> {
  /// See also [userList].
  const UserListFamily();

  /// See also [userList].
  UserListProvider call({
    required int page,
    String? searchString,
  }) {
    return UserListProvider(
      page: page,
      searchString: searchString,
    );
  }

  @override
  UserListProvider getProviderOverride(
    covariant UserListProvider provider,
  ) {
    return call(
      page: provider.page,
      searchString: provider.searchString,
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
  String? get name => r'userListProvider';
}

/// See also [userList].
class UserListProvider extends AutoDisposeFutureProvider<IList<UserModel>> {
  /// See also [userList].
  UserListProvider({
    required int page,
    String? searchString,
  }) : this._internal(
          (ref) => userList(
            ref as UserListRef,
            page: page,
            searchString: searchString,
          ),
          from: userListProvider,
          name: r'userListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userListHash,
          dependencies: UserListFamily._dependencies,
          allTransitiveDependencies: UserListFamily._allTransitiveDependencies,
          page: page,
          searchString: searchString,
        );

  UserListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.searchString,
  }) : super.internal();

  final int page;
  final String? searchString;

  @override
  Override overrideWith(
    FutureOr<IList<UserModel>> Function(UserListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserListProvider._internal(
        (ref) => create(ref as UserListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        searchString: searchString,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<IList<UserModel>> createElement() {
    return _UserListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserListProvider &&
        other.page == page &&
        other.searchString == searchString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserListRef on AutoDisposeFutureProviderRef<IList<UserModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `searchString` of this provider.
  String? get searchString;
}

class _UserListProviderElement
    extends AutoDisposeFutureProviderElement<IList<UserModel>>
    with UserListRef {
  _UserListProviderElement(super.provider);

  @override
  int get page => (origin as UserListProvider).page;
  @override
  String? get searchString => (origin as UserListProvider).searchString;
}

String _$userAtIndexHash() => r'560c648ec785e375a1bdf16f666dfdd1fa890026';

/// See also [userAtIndex].
@ProviderFor(userAtIndex)
const userAtIndexProvider = UserAtIndexFamily();

/// See also [userAtIndex].
class UserAtIndexFamily extends Family<PaginatedItem<UserModel>?> {
  /// See also [userAtIndex].
  const UserAtIndexFamily();

  /// See also [userAtIndex].
  UserAtIndexProvider call({
    required int index,
    String? searchString,
  }) {
    return UserAtIndexProvider(
      index: index,
      searchString: searchString,
    );
  }

  @override
  UserAtIndexProvider getProviderOverride(
    covariant UserAtIndexProvider provider,
  ) {
    return call(
      index: provider.index,
      searchString: provider.searchString,
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
  String? get name => r'userAtIndexProvider';
}

/// See also [userAtIndex].
class UserAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<UserModel>?> {
  /// See also [userAtIndex].
  UserAtIndexProvider({
    required int index,
    String? searchString,
  }) : this._internal(
          (ref) => userAtIndex(
            ref as UserAtIndexRef,
            index: index,
            searchString: searchString,
          ),
          from: userAtIndexProvider,
          name: r'userAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userAtIndexHash,
          dependencies: UserAtIndexFamily._dependencies,
          allTransitiveDependencies:
              UserAtIndexFamily._allTransitiveDependencies,
          index: index,
          searchString: searchString,
        );

  UserAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.searchString,
  }) : super.internal();

  final int index;
  final String? searchString;

  @override
  Override overrideWith(
    PaginatedItem<UserModel>? Function(UserAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserAtIndexProvider._internal(
        (ref) => create(ref as UserAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        searchString: searchString,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<UserModel>?> createElement() {
    return _UserAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserAtIndexProvider &&
        other.index == index &&
        other.searchString == searchString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserAtIndexRef on AutoDisposeProviderRef<PaginatedItem<UserModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `searchString` of this provider.
  String? get searchString;
}

class _UserAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<UserModel>?>
    with UserAtIndexRef {
  _UserAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as UserAtIndexProvider).index;
  @override
  String? get searchString => (origin as UserAtIndexProvider).searchString;
}

String _$rejectPropertyHash() => r'5ee899c566a710b30a5d22cd6177a0fecbb4418f';

abstract class _$RejectProperty
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int propertyId;

  ProviderStatus<void> build(
    int propertyId,
  );
}

/// See also [RejectProperty].
@ProviderFor(RejectProperty)
const rejectPropertyProvider = RejectPropertyFamily();

/// See also [RejectProperty].
class RejectPropertyFamily extends Family<ProviderStatus<void>> {
  /// See also [RejectProperty].
  const RejectPropertyFamily();

  /// See also [RejectProperty].
  RejectPropertyProvider call(
    int propertyId,
  ) {
    return RejectPropertyProvider(
      propertyId,
    );
  }

  @override
  RejectPropertyProvider getProviderOverride(
    covariant RejectPropertyProvider provider,
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
  String? get name => r'rejectPropertyProvider';
}

/// See also [RejectProperty].
class RejectPropertyProvider extends AutoDisposeNotifierProviderImpl<
    RejectProperty, ProviderStatus<void>> {
  /// See also [RejectProperty].
  RejectPropertyProvider(
    int propertyId,
  ) : this._internal(
          () => RejectProperty()..propertyId = propertyId,
          from: rejectPropertyProvider,
          name: r'rejectPropertyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rejectPropertyHash,
          dependencies: RejectPropertyFamily._dependencies,
          allTransitiveDependencies:
              RejectPropertyFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  RejectPropertyProvider._internal(
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
    covariant RejectProperty notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(RejectProperty Function() create) {
    return ProviderOverride(
      origin: this,
      override: RejectPropertyProvider._internal(
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
  AutoDisposeNotifierProviderElement<RejectProperty, ProviderStatus<void>>
      createElement() {
    return _RejectPropertyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RejectPropertyProvider && other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RejectPropertyRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _RejectPropertyProviderElement extends AutoDisposeNotifierProviderElement<
    RejectProperty, ProviderStatus<void>> with RejectPropertyRef {
  _RejectPropertyProviderElement(super.provider);

  @override
  int get propertyId => (origin as RejectPropertyProvider).propertyId;
}

String _$approvePropertyHash() => r'2d2a23f621cc316dfe48637d528046f410db45ab';

abstract class _$ApproveProperty
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int propertyId;

  ProviderStatus<void> build(
    int propertyId,
  );
}

/// See also [ApproveProperty].
@ProviderFor(ApproveProperty)
const approvePropertyProvider = ApprovePropertyFamily();

/// See also [ApproveProperty].
class ApprovePropertyFamily extends Family<ProviderStatus<void>> {
  /// See also [ApproveProperty].
  const ApprovePropertyFamily();

  /// See also [ApproveProperty].
  ApprovePropertyProvider call(
    int propertyId,
  ) {
    return ApprovePropertyProvider(
      propertyId,
    );
  }

  @override
  ApprovePropertyProvider getProviderOverride(
    covariant ApprovePropertyProvider provider,
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
  String? get name => r'approvePropertyProvider';
}

/// See also [ApproveProperty].
class ApprovePropertyProvider extends AutoDisposeNotifierProviderImpl<
    ApproveProperty, ProviderStatus<void>> {
  /// See also [ApproveProperty].
  ApprovePropertyProvider(
    int propertyId,
  ) : this._internal(
          () => ApproveProperty()..propertyId = propertyId,
          from: approvePropertyProvider,
          name: r'approvePropertyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approvePropertyHash,
          dependencies: ApprovePropertyFamily._dependencies,
          allTransitiveDependencies:
              ApprovePropertyFamily._allTransitiveDependencies,
          propertyId: propertyId,
        );

  ApprovePropertyProvider._internal(
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
    covariant ApproveProperty notifier,
  ) {
    return notifier.build(
      propertyId,
    );
  }

  @override
  Override overrideWith(ApproveProperty Function() create) {
    return ProviderOverride(
      origin: this,
      override: ApprovePropertyProvider._internal(
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
  AutoDisposeNotifierProviderElement<ApproveProperty, ProviderStatus<void>>
      createElement() {
    return _ApprovePropertyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApprovePropertyProvider && other.propertyId == propertyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ApprovePropertyRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `propertyId` of this provider.
  int get propertyId;
}

class _ApprovePropertyProviderElement
    extends AutoDisposeNotifierProviderElement<ApproveProperty,
        ProviderStatus<void>> with ApprovePropertyRef {
  _ApprovePropertyProviderElement(super.provider);

  @override
  int get propertyId => (origin as ApprovePropertyProvider).propertyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
