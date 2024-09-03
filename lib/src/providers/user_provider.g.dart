// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserHash() => r'ea17fa140c8ee58c9ca1d024011404e4a2fa38ab';

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

typedef IsAdminRef = AutoDisposeProviderRef<bool>;
String _$deleteUserHash() => r'ebc3649da6088b59f79f76fa74314133457621b9';

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

abstract class _$DeleteUser
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final String userId;

  ProviderStatus<void> build(
    String userId,
  );
}

/// See also [DeleteUser].
@ProviderFor(DeleteUser)
const deleteUserProvider = DeleteUserFamily();

/// See also [DeleteUser].
class DeleteUserFamily extends Family<ProviderStatus<void>> {
  /// See also [DeleteUser].
  const DeleteUserFamily();

  /// See also [DeleteUser].
  DeleteUserProvider call(
    String userId,
  ) {
    return DeleteUserProvider(
      userId,
    );
  }

  @override
  DeleteUserProvider getProviderOverride(
    covariant DeleteUserProvider provider,
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
  String? get name => r'deleteUserProvider';
}

/// See also [DeleteUser].
class DeleteUserProvider
    extends AutoDisposeNotifierProviderImpl<DeleteUser, ProviderStatus<void>> {
  /// See also [DeleteUser].
  DeleteUserProvider(
    String userId,
  ) : this._internal(
          () => DeleteUser()..userId = userId,
          from: deleteUserProvider,
          name: r'deleteUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteUserHash,
          dependencies: DeleteUserFamily._dependencies,
          allTransitiveDependencies:
              DeleteUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  DeleteUserProvider._internal(
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
    covariant DeleteUser notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(DeleteUser Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeleteUserProvider._internal(
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
  AutoDisposeNotifierProviderElement<DeleteUser, ProviderStatus<void>>
      createElement() {
    return _DeleteUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteUserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteUserRef on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _DeleteUserProviderElement
    extends AutoDisposeNotifierProviderElement<DeleteUser, ProviderStatus<void>>
    with DeleteUserRef {
  _DeleteUserProviderElement(super.provider);

  @override
  String get userId => (origin as DeleteUserProvider).userId;
}

String _$updateUserProfileImageHash() =>
    r'c94218ce898c1bdb1ae979463c0a27dc78c5c31a';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
