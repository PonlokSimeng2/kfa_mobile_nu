// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserHash() => r'899852cca214efc85dbc86c86c27fec760014210';

/// See also [currentUser].
@ProviderFor(currentUser)
final currentUserProvider = AutoDisposeFutureProvider<UserModel?>.internal(
  currentUser,
  name: r'currentUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserRef = AutoDisposeFutureProviderRef<UserModel?>;
String _$isAdminHash() => r'73f7ce1ac990a02d22da095e48b669bfc790c96f';

/// See also [isAdmin].
@ProviderFor(isAdmin)
final isAdminProvider = AutoDisposeProvider<bool>.internal(
  isAdmin,
  name: r'isAdminProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isAdminHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsAdminRef = AutoDisposeProviderRef<bool>;
String _$toggleUserAdminStatusHash() =>
    r'72cea07ef8c21cd237bf6183ebea28244f8dea6b';

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

abstract class _$ToggleUserAdminStatus
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final String userId;

  ProviderStatus<void> build(
    String userId,
  );
}

/// See also [ToggleUserAdminStatus].
@ProviderFor(ToggleUserAdminStatus)
const toggleUserAdminStatusProvider = ToggleUserAdminStatusFamily();

/// See also [ToggleUserAdminStatus].
class ToggleUserAdminStatusFamily extends Family<ProviderStatus<void>> {
  /// See also [ToggleUserAdminStatus].
  const ToggleUserAdminStatusFamily();

  /// See also [ToggleUserAdminStatus].
  ToggleUserAdminStatusProvider call(
    String userId,
  ) {
    return ToggleUserAdminStatusProvider(
      userId,
    );
  }

  @override
  ToggleUserAdminStatusProvider getProviderOverride(
    covariant ToggleUserAdminStatusProvider provider,
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
  String? get name => r'toggleUserAdminStatusProvider';
}

/// See also [ToggleUserAdminStatus].
class ToggleUserAdminStatusProvider extends AutoDisposeNotifierProviderImpl<
    ToggleUserAdminStatus, ProviderStatus<void>> {
  /// See also [ToggleUserAdminStatus].
  ToggleUserAdminStatusProvider(
    String userId,
  ) : this._internal(
          () => ToggleUserAdminStatus()..userId = userId,
          from: toggleUserAdminStatusProvider,
          name: r'toggleUserAdminStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$toggleUserAdminStatusHash,
          dependencies: ToggleUserAdminStatusFamily._dependencies,
          allTransitiveDependencies:
              ToggleUserAdminStatusFamily._allTransitiveDependencies,
          userId: userId,
        );

  ToggleUserAdminStatusProvider._internal(
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
    covariant ToggleUserAdminStatus notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ToggleUserAdminStatus Function() create) {
    return ProviderOverride(
      origin: this,
      override: ToggleUserAdminStatusProvider._internal(
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
  AutoDisposeNotifierProviderElement<ToggleUserAdminStatus,
      ProviderStatus<void>> createElement() {
    return _ToggleUserAdminStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ToggleUserAdminStatusProvider && other.userId == userId;
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
mixin ToggleUserAdminStatusRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ToggleUserAdminStatusProviderElement
    extends AutoDisposeNotifierProviderElement<ToggleUserAdminStatus,
        ProviderStatus<void>> with ToggleUserAdminStatusRef {
  _ToggleUserAdminStatusProviderElement(super.provider);

  @override
  String get userId => (origin as ToggleUserAdminStatusProvider).userId;
}

String _$updateUserProfileImageHash() =>
    r'2848a4981dd3828f400399956544120a3372f88d';

/// See also [UpdateUserProfileImage].
@ProviderFor(UpdateUserProfileImage)
final updateUserProfileImageProvider = AutoDisposeNotifierProvider<
    UpdateUserProfileImage, ProviderStatus<void>>.internal(
  UpdateUserProfileImage.new,
  name: r'updateUserProfileImageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateUserProfileImageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpdateUserProfileImage = AutoDisposeNotifier<ProviderStatus<void>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
