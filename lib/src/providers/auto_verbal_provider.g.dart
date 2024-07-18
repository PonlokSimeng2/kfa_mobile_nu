// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$InsertAutoVerbalForm on _$InsertAutoVerbal {}

bool _debugCheckHasInsertAutoVerbalFormWidget(BuildContext context) {
  assert(() {
    if (context.widget is! InsertAutoVerbalFormWidget &&
        context.findAncestorWidgetOfExactType<InsertAutoVerbalFormWidget>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No InsertAutoVerbalFormWidget found'),
        ErrorDescription(
            '${context.widget.runtimeType} widgets require a InsertAutoVerbalFormWidget widget ancestor.'),
      ]);
    }
    return true;
  }());
  return true;
}

typedef InsertAutoVerbalFormChildBuilder = Widget Function(
  WidgetRef ref,
  ProviderStatus<void> status,
  bool isProgressing,
  Failure? failure,
  Future<ProviderStatus<void>> Function() submit,
);

/// Base form widget for [InsertAutoVerbal] provider
///
/// It required to add this as parent widget of fields widget if [InsertAutoVerbal] is a family provider
/// , otherwise it's optional
class InsertAutoVerbalFormWidget extends HookConsumerWidget {
  const InsertAutoVerbalFormWidget({
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
  final InsertAutoVerbalFormChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status =
        ref.watch(insertAutoVerbalProvider.select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller = ref.watch(insertAutoVerbalProvider.notifier);

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

String _$insertAutoVerbalHash() => r'8506aa4b764f01b85c1eff32fba0309013ff507c';

/// See also [InsertAutoVerbal].
@ProviderFor(InsertAutoVerbal)
final insertAutoVerbalProvider = AutoDisposeNotifierProvider<InsertAutoVerbal,
    InsertAutoVerbalState>.internal(
  InsertAutoVerbal.new,
  name: r'insertAutoVerbalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$insertAutoVerbalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InsertAutoVerbal = AutoDisposeNotifier<InsertAutoVerbalState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
