// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$nameForm on _$name {}

bool _debugCheckHasnameFormWidget(BuildContext context) {
  assert(() {
    if (context.widget is! nameFormWidget &&
        context.findAncestorWidgetOfExactType<nameFormWidget>() == null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No nameFormWidget found'),
        ErrorDescription(
            '${context.widget.runtimeType} widgets require a nameFormWidget widget ancestor.'),
      ]);
    }
    return true;
  }());
  return true;
}

typedef nameFormChildBuilder = Widget Function(
  WidgetRef ref,
  ProviderStatus<InvalidType> status,
  bool isProgressing,
  Failure? failure,
  Future<ProviderStatus<InvalidType>> Function() submit,
);

/// Base form widget for [InsertAutoVerbal] provider
///
/// It required to add this as parent widget of fields widget if [InsertAutoVerbal] is a family provider
/// , otherwise it's optional
class nameFormWidget extends HookConsumerWidget {
  const nameFormWidget({
    super.key,
    required this.builder,
  });

  /// Child widget builder
  ///
  /// * Don't forget to do form validation before execute this. If it is a form widget type
  /// This callback will also save form state and check validation of form if it a form type
  /// ```
  /// {
  ///   // Do form validation
  ///   formKey.currentState!.save();
  ///   if (!formKey.currentState!.validate()) return;
  ///
  ///   // call submit here
  ///   ... submit(...);
  /// }
  /// ```
  final nameFormChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(nameProvider.select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller = ref.watch(nameProvider.notifier);

    return builder(
      ref,
      status,
      isProgressing,
      failure,
      controller.call,
    );
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nameHash() => r'6678ada0d909a319affc6a647598b8f132f8ac93';

/// See also [InsertAutoVerbal].
@ProviderFor(InsertAutoVerbal)
final nameProvider =
    AutoDisposeNotifierProvider<InsertAutoVerbal, nameState>.internal(
  InsertAutoVerbal.new,
  name: r'nameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$name = AutoDisposeNotifier<nameState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
