// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ReportDataRef = AutoDisposeFutureProviderRef<ReportData>;
String _$userListHash() => r'750507959931bad7f91841d8d38d308374cfea1d';

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
    UserModel? admin,
  }) {
    return UserListProvider(
      page: page,
      searchString: searchString,
      admin: admin,
    );
  }

  @override
  UserListProvider getProviderOverride(
    covariant UserListProvider provider,
  ) {
    return call(
      page: provider.page,
      searchString: provider.searchString,
      admin: provider.admin,
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
    UserModel? admin,
  }) : this._internal(
          (ref) => userList(
            ref as UserListRef,
            page: page,
            searchString: searchString,
            admin: admin,
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
          admin: admin,
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
    required this.admin,
  }) : super.internal();

  final int page;
  final String? searchString;
  final UserModel? admin;

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
        admin: admin,
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
        other.searchString == searchString &&
        other.admin == admin;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);
    hash = _SystemHash.combine(hash, admin.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserListRef on AutoDisposeFutureProviderRef<IList<UserModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `searchString` of this provider.
  String? get searchString;

  /// The parameter `admin` of this provider.
  UserModel? get admin;
}

class _UserListProviderElement
    extends AutoDisposeFutureProviderElement<IList<UserModel>>
    with UserListRef {
  _UserListProviderElement(super.provider);

  @override
  int get page => (origin as UserListProvider).page;
  @override
  String? get searchString => (origin as UserListProvider).searchString;
  @override
  UserModel? get admin => (origin as UserListProvider).admin;
}

String _$adminListHash() => r'49fb320f908dc257ee42cd13958e8b86ac997b62';

/// See also [adminList].
@ProviderFor(adminList)
final adminListProvider = AutoDisposeFutureProvider<IList<UserModel>>.internal(
  adminList,
  name: r'adminListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adminListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AdminListRef = AutoDisposeFutureProviderRef<IList<UserModel>>;
String _$userAtIndexHash() => r'98272a99119ada62c0d6b878c3f01db185199634';

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
    UserModel? admin,
  }) {
    return UserAtIndexProvider(
      index: index,
      searchString: searchString,
      admin: admin,
    );
  }

  @override
  UserAtIndexProvider getProviderOverride(
    covariant UserAtIndexProvider provider,
  ) {
    return call(
      index: provider.index,
      searchString: provider.searchString,
      admin: provider.admin,
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
    UserModel? admin,
  }) : this._internal(
          (ref) => userAtIndex(
            ref as UserAtIndexRef,
            index: index,
            searchString: searchString,
            admin: admin,
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
          admin: admin,
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
    required this.admin,
  }) : super.internal();

  final int index;
  final String? searchString;
  final UserModel? admin;

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
        admin: admin,
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
        other.searchString == searchString &&
        other.admin == admin;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);
    hash = _SystemHash.combine(hash, admin.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserAtIndexRef on AutoDisposeProviderRef<PaginatedItem<UserModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `searchString` of this provider.
  String? get searchString;

  /// The parameter `admin` of this provider.
  UserModel? get admin;
}

class _UserAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<UserModel>?>
    with UserAtIndexRef {
  _UserAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as UserAtIndexProvider).index;
  @override
  String? get searchString => (origin as UserAtIndexProvider).searchString;
  @override
  UserModel? get admin => (origin as UserAtIndexProvider).admin;
}

String _$rejectPropertyHash() => r'462b128ecc854cbdd8fdb46c47976a0d3865bc64';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$approvePropertyHash() => r'dc0c20bc202a735f2082e2cc6a6cc71b20635012';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$toggleUserActiveStatusHash() =>
    r'f75c2fac603981465f56f38e66ec2bebe8fa75ae';

abstract class _$ToggleUserActiveStatus
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final String userId;

  ProviderStatus<void> build(
    String userId,
  );
}

/// See also [ToggleUserActiveStatus].
@ProviderFor(ToggleUserActiveStatus)
const toggleUserActiveStatusProvider = ToggleUserActiveStatusFamily();

/// See also [ToggleUserActiveStatus].
class ToggleUserActiveStatusFamily extends Family<ProviderStatus<void>> {
  /// See also [ToggleUserActiveStatus].
  const ToggleUserActiveStatusFamily();

  /// See also [ToggleUserActiveStatus].
  ToggleUserActiveStatusProvider call(
    String userId,
  ) {
    return ToggleUserActiveStatusProvider(
      userId,
    );
  }

  @override
  ToggleUserActiveStatusProvider getProviderOverride(
    covariant ToggleUserActiveStatusProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'toggleUserActiveStatusProvider';
}

/// See also [ToggleUserActiveStatus].
class ToggleUserActiveStatusProvider extends AutoDisposeNotifierProviderImpl<
    ToggleUserActiveStatus, ProviderStatus<void>> {
  /// See also [ToggleUserActiveStatus].
  ToggleUserActiveStatusProvider(
    String userId,
  ) : this._internal(
          () => ToggleUserActiveStatus()..userId = userId,
          from: toggleUserActiveStatusProvider,
          name: r'toggleUserActiveStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$toggleUserActiveStatusHash,
          dependencies: ToggleUserActiveStatusFamily._dependencies,
          allTransitiveDependencies:
              ToggleUserActiveStatusFamily._allTransitiveDependencies,
          userId: userId,
        );

  ToggleUserActiveStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant ToggleUserActiveStatus notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ToggleUserActiveStatus Function() create) {
    return ProviderOverride(
      origin: this,
      override: ToggleUserActiveStatusProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ToggleUserActiveStatus,
      ProviderStatus<void>> createElement() {
    return _ToggleUserActiveStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ToggleUserActiveStatusProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ToggleUserActiveStatusRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ToggleUserActiveStatusProviderElement
    extends AutoDisposeNotifierProviderElement<ToggleUserActiveStatus,
        ProviderStatus<void>> with ToggleUserActiveStatusRef {
  _ToggleUserActiveStatusProviderElement(super.provider);

  @override
  String get userId => (origin as ToggleUserActiveStatusProvider).userId;
}

String _$assignAdminHash() => r'07677b7392e93ff062fc7435aed4ea8b88cc8896';

abstract class _$AssignAdmin
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final String userId;

  ProviderStatus<void> build(
    String userId,
  );
}

/// See also [AssignAdmin].
@ProviderFor(AssignAdmin)
const assignAdminProvider = AssignAdminFamily();

/// See also [AssignAdmin].
class AssignAdminFamily extends Family<ProviderStatus<void>> {
  /// See also [AssignAdmin].
  const AssignAdminFamily();

  /// See also [AssignAdmin].
  AssignAdminProvider call(
    String userId,
  ) {
    return AssignAdminProvider(
      userId,
    );
  }

  @override
  AssignAdminProvider getProviderOverride(
    covariant AssignAdminProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'assignAdminProvider';
}

/// See also [AssignAdmin].
class AssignAdminProvider
    extends AutoDisposeNotifierProviderImpl<AssignAdmin, ProviderStatus<void>> {
  /// See also [AssignAdmin].
  AssignAdminProvider(
    String userId,
  ) : this._internal(
          () => AssignAdmin()..userId = userId,
          from: assignAdminProvider,
          name: r'assignAdminProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assignAdminHash,
          dependencies: AssignAdminFamily._dependencies,
          allTransitiveDependencies:
              AssignAdminFamily._allTransitiveDependencies,
          userId: userId,
        );

  AssignAdminProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant AssignAdmin notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(AssignAdmin Function() create) {
    return ProviderOverride(
      origin: this,
      override: AssignAdminProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AssignAdmin, ProviderStatus<void>>
      createElement() {
    return _AssignAdminProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssignAdminProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AssignAdminRef on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _AssignAdminProviderElement extends AutoDisposeNotifierProviderElement<
    AssignAdmin, ProviderStatus<void>> with AssignAdminRef {
  _AssignAdminProviderElement(super.provider);

  @override
  String get userId => (origin as AssignAdminProvider).userId;
}

String _$unAssignAdminHash() => r'fde2c7c3d23600c898005f0a830051768495e891';

abstract class _$UnAssignAdmin
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final String userId;

  ProviderStatus<void> build(
    String userId,
  );
}

/// See also [UnAssignAdmin].
@ProviderFor(UnAssignAdmin)
const unAssignAdminProvider = UnAssignAdminFamily();

/// See also [UnAssignAdmin].
class UnAssignAdminFamily extends Family<ProviderStatus<void>> {
  /// See also [UnAssignAdmin].
  const UnAssignAdminFamily();

  /// See also [UnAssignAdmin].
  UnAssignAdminProvider call(
    String userId,
  ) {
    return UnAssignAdminProvider(
      userId,
    );
  }

  @override
  UnAssignAdminProvider getProviderOverride(
    covariant UnAssignAdminProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'unAssignAdminProvider';
}

/// See also [UnAssignAdmin].
class UnAssignAdminProvider extends AutoDisposeNotifierProviderImpl<
    UnAssignAdmin, ProviderStatus<void>> {
  /// See also [UnAssignAdmin].
  UnAssignAdminProvider(
    String userId,
  ) : this._internal(
          () => UnAssignAdmin()..userId = userId,
          from: unAssignAdminProvider,
          name: r'unAssignAdminProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unAssignAdminHash,
          dependencies: UnAssignAdminFamily._dependencies,
          allTransitiveDependencies:
              UnAssignAdminFamily._allTransitiveDependencies,
          userId: userId,
        );

  UnAssignAdminProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant UnAssignAdmin notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(UnAssignAdmin Function() create) {
    return ProviderOverride(
      origin: this,
      override: UnAssignAdminProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UnAssignAdmin, ProviderStatus<void>>
      createElement() {
    return _UnAssignAdminProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnAssignAdminProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UnAssignAdminRef on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UnAssignAdminProviderElement extends AutoDisposeNotifierProviderElement<
    UnAssignAdmin, ProviderStatus<void>> with UnAssignAdminRef {
  _UnAssignAdminProviderElement(super.provider);

  @override
  String get userId => (origin as UnAssignAdminProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
