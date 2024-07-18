// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pendingPropertyListHash() =>
    r'b69671cbb6ea1395b5e4e9f05fd029e4056325ca';

/// See also [pendingPropertyList].
@ProviderFor(pendingPropertyList)
final pendingPropertyListProvider =
    AutoDisposeFutureProvider<IList<PropertyModel>>.internal(
  pendingPropertyList,
  name: r'pendingPropertyListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pendingPropertyListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PendingPropertyListRef
    = AutoDisposeFutureProviderRef<IList<PropertyModel>>;
String _$rejectedPropertyListHash() =>
    r'24d009a9dd24bc7544cb11fe489b933cdc65c426';

/// See also [rejectedPropertyList].
@ProviderFor(rejectedPropertyList)
final rejectedPropertyListProvider =
    AutoDisposeFutureProvider<IList<PropertyModel>>.internal(
  rejectedPropertyList,
  name: r'rejectedPropertyListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rejectedPropertyListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RejectedPropertyListRef
    = AutoDisposeFutureProviderRef<IList<PropertyModel>>;
String _$rejectPropertyHash() => r'f3bf417737cf6806423d9a655273c5ec56ef0293';

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

String _$approvePropertyHash() => r'4d03c61a41b5cc1dd4134e79e1f1b522cc4afcdc';

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
