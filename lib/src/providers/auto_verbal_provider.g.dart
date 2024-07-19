// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$InsertAutoVerbalForm on _$InsertAutoVerbal {
  void onImageChanged(String newImage) =>
      state = state.copyWith(image: newImage);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onLatitudeChanged(double newLatitude) =>
      state = state.copyWith(latitude: newLatitude);
  void onLongitudeChanged(double newLongitude) =>
      state = state.copyWith(longitude: newLongitude);
  void onOwnerNameChanged(String newOwnerName) =>
      state = state.copyWith(ownerName: newOwnerName);
  void onOwnerPhoneChanged(String newOwnerPhone) =>
      state = state.copyWith(ownerPhone: newOwnerPhone);
  void onBankOfficerNameChanged(String newBankOfficerName) =>
      state = state.copyWith(bankOfficerName: newBankOfficerName);
  void onBankOfficerPhoneChanged(String newBankOfficerPhone) =>
      state = state.copyWith(bankOfficerPhone: newBankOfficerPhone);
  void onAddressChanged(String newAddress) =>
      state = state.copyWith(address: newAddress);
}

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
  GlobalKey<FormState> formKey,
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
    this.formKey,
    required this.builder,
  });

  /// Form key. If null it will be created by widget
  final GlobalKey<FormState>? formKey;

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
    final cachedFormKey = useMemoized(() => formKey ?? GlobalKey<FormState>());

    final status =
        ref.watch(insertAutoVerbalProvider.select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller = ref.watch(insertAutoVerbalProvider.notifier);

    return Form(
      key: cachedFormKey,
      child: builder(
        ref,
        cachedFormKey,
        status,
        isProgressing,
        failure,
        controller.call,
      ),
    );
  }
}

typedef InsertAutoVerbalImageChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String image,
  void Function(String newImage) changeImage,
  bool showValidation,
);

/// Widget form field for property [image]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalImageFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalImageFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalImageChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.image));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onImageChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertAutoVerbalProvider.select((value) => value.image),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onImageChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalPropertyTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyTypeModel? propertyType,
  void Function(PropertyTypeModel? newPropertyType) changePropertyType,
  bool showValidation,
);

/// Widget form field for property [propertyType]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalPropertyTypeFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalPropertyTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalPropertyTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state = ref
        .watch(insertAutoVerbalProvider.select((value) => value.propertyType));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyTypeChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLatitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double latitude,
  void Function(double newLatitude) changeLatitude,
  bool showValidation,
);

/// Widget form field for property [latitude]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLatitudeFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLatitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLatitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.latitude));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLatitudeChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLongitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double longitude,
  void Function(double newLongitude) changeLongitude,
  bool showValidation,
);

/// Widget form field for property [longitude]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLongitudeFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLongitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLongitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.longitude));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLongitudeChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalOwnerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String ownerName,
  void Function(String newOwnerName) changeOwnerName,
  bool showValidation,
);

/// Widget form field for property [ownerName]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalOwnerNameFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalOwnerNameFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalOwnerNameChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.ownerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onOwnerNameChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertAutoVerbalProvider.select((value) => value.ownerName),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onOwnerNameChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalOwnerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String ownerPhone,
  void Function(String newOwnerPhone) changeOwnerPhone,
  bool showValidation,
);

/// Widget form field for property [ownerPhone]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalOwnerPhoneFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalOwnerPhoneFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalOwnerPhoneChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.ownerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onOwnerPhoneChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertAutoVerbalProvider.select((value) => value.ownerPhone),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onOwnerPhoneChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBankOfficerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String bankOfficerName,
  void Function(String newBankOfficerName) changeBankOfficerName,
  bool showValidation,
);

/// Widget form field for property [bankOfficerName]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBankOfficerNameFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBankOfficerNameFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalBankOfficerNameChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state = ref.watch(
        insertAutoVerbalProvider.select((value) => value.bankOfficerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onBankOfficerNameChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider.select((value) => value.bankOfficerName),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onBankOfficerNameChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBankOfficerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String bankOfficerPhone,
  void Function(String newBankOfficerPhone) changeBankOfficerPhone,
  bool showValidation,
);

/// Widget form field for property [bankOfficerPhone]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBankOfficerPhoneFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBankOfficerPhoneFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalBankOfficerPhoneChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state = ref.watch(
        insertAutoVerbalProvider.select((value) => value.bankOfficerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onBankOfficerPhoneChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider.select((value) => value.bankOfficerPhone),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onBankOfficerPhoneChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalAddressChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String address,
  void Function(String newAddress) changeAddress,
  bool showValidation,
);

/// Widget form field for property [address]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalAddressFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalAddressFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalAddressChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.address));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onAddressChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertAutoVerbalProvider.select((value) => value.address),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onAddressChanged,
      showValidation,
    );
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$insertAutoVerbalHash() => r'fe193b4439b4e5e33aa2d0c528bcbebcf92e70e8';

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
