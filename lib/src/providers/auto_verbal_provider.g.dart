// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_verbal_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$InsertAutoVerbalForm on _$InsertAutoVerbal {
  void onImageFileChanged(XFile? newImageFile) =>
      state = state.copyWith(imageFile: newImageFile);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onProvinceChanged(ProvinceModel? newProvince) =>
      state = state.copyWith(province: newProvince);
  void onBankChanged(BankModel? newBank) =>
      state = state.copyWith(bank: newBank);
  void onOwnerNameChanged(String newOwnerName) =>
      state = state.copyWith(ownerName: newOwnerName);
  void onOwnerPhoneChanged(String newOwnerPhone) =>
      state = state.copyWith(ownerPhone: newOwnerPhone);
  void onBankOfficerNameChanged(String newBankOfficerName) =>
      state = state.copyWith(bankOfficerName: newBankOfficerName);
  void onBankOfficerPhoneChanged(String newBankOfficerPhone) =>
      state = state.copyWith(bankOfficerPhone: newBankOfficerPhone);
  void onMinValueChanged(double newMinValue) =>
      state = state.copyWith(minValue: newMinValue);
  void onMaxValueChanged(double newMaxValue) =>
      state = state.copyWith(maxValue: newMaxValue);
  void onMinValueSqmChanged(double newMinValueSqm) =>
      state = state.copyWith(minValueSqm: newMinValueSqm);
  void onMaxValueSqmChanged(double newMaxValueSqm) =>
      state = state.copyWith(maxValueSqm: newMaxValueSqm);
  void onLatitudeChanged(double newLatitude) =>
      state = state.copyWith(latitude: newLatitude);
  void onLongitudeChanged(double newLongitude) =>
      state = state.copyWith(longitude: newLongitude);
  void onAreaChanged(double newArea) => state = state.copyWith(area: newArea);
  void onHeadChanged(double newHead) => state = state.copyWith(head: newHead);
  void onLengthChanged(double newLength) =>
      state = state.copyWith(length: newLength);
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

typedef InsertAutoVerbalImageFileChildBuilder = Widget Function(
  WidgetRef ref,
  XFile? imageFile,
  void Function(XFile? newImageFile) changeImageFile,
  bool showValidation,
);

/// Widget form field for property [imageFile]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalImageFileFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalImageFileFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalImageFileChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.imageFile));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onImageFileChanged,
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

typedef InsertAutoVerbalProvinceChildBuilder = Widget Function(
  WidgetRef ref,
  ProvinceModel? province,
  void Function(ProvinceModel? newProvince) changeProvince,
  bool showValidation,
);

/// Widget form field for property [province]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalProvinceFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalProvinceFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalProvinceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.province));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onProvinceChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBankChildBuilder = Widget Function(
  WidgetRef ref,
  BankModel? bank,
  void Function(BankModel? newBank) changeBank,
  bool showValidation,
);

/// Widget form field for property [bank]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBankFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBankFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalBankChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.bank));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBankChanged,
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

typedef InsertAutoVerbalMinValueChildBuilder = Widget Function(
  WidgetRef ref,
  double minValue,
  void Function(double newMinValue) changeMinValue,
  bool showValidation,
);

/// Widget form field for property [minValue]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalMinValueFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalMinValueFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalMinValueChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.minValue));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMinValueChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalMaxValueChildBuilder = Widget Function(
  WidgetRef ref,
  double maxValue,
  void Function(double newMaxValue) changeMaxValue,
  bool showValidation,
);

/// Widget form field for property [maxValue]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalMaxValueFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalMaxValueFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalMaxValueChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.maxValue));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMaxValueChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalMinValueSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double minValueSqm,
  void Function(double newMinValueSqm) changeMinValueSqm,
  bool showValidation,
);

/// Widget form field for property [minValueSqm]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalMinValueSqmFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalMinValueSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalMinValueSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state = ref
        .watch(insertAutoVerbalProvider.select((value) => value.minValueSqm));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMinValueSqmChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalMaxValueSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double maxValueSqm,
  void Function(double newMaxValueSqm) changeMaxValueSqm,
  bool showValidation,
);

/// Widget form field for property [maxValueSqm]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalMaxValueSqmFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalMaxValueSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalMaxValueSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state = ref
        .watch(insertAutoVerbalProvider.select((value) => value.maxValueSqm));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMaxValueSqmChanged,
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

typedef InsertAutoVerbalAreaChildBuilder = Widget Function(
  WidgetRef ref,
  double area,
  void Function(double newArea) changeArea,
  bool showValidation,
);

/// Widget form field for property [area]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalAreaFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalAreaFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalAreaChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.area));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onAreaChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalHeadChildBuilder = Widget Function(
  WidgetRef ref,
  double head,
  void Function(double newHead) changeHead,
  bool showValidation,
);

/// Widget form field for property [head]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalHeadFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalHeadFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalHeadChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.head));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onHeadChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double length,
  void Function(double newLength) changeLength,
  bool showValidation,
);

/// Widget form field for property [length]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLengthFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));

    final notifier = ref.watch(insertAutoVerbalProvider.notifier);
    final state =
        ref.watch(insertAutoVerbalProvider.select((value) => value.length));

    final showValidation = ref.watch(
        insertAutoVerbalProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLengthChanged,
      showValidation,
    );
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$autoVerbalListHash() => r'2688e9e701da7d57cfc479c437dabfd3b2c2f291';

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

/// See also [autoVerbalList].
@ProviderFor(autoVerbalList)
const autoVerbalListProvider = AutoVerbalListFamily();

/// See also [autoVerbalList].
class AutoVerbalListFamily extends Family<AsyncValue<IList<AutoVerbalModel>>> {
  /// See also [autoVerbalList].
  const AutoVerbalListFamily();

  /// See also [autoVerbalList].
  AutoVerbalListProvider call({
    required int page,
    String? status,
  }) {
    return AutoVerbalListProvider(
      page: page,
      status: status,
    );
  }

  @override
  AutoVerbalListProvider getProviderOverride(
    covariant AutoVerbalListProvider provider,
  ) {
    return call(
      page: provider.page,
      status: provider.status,
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
  String? get name => r'autoVerbalListProvider';
}

/// See also [autoVerbalList].
class AutoVerbalListProvider
    extends AutoDisposeFutureProvider<IList<AutoVerbalModel>> {
  /// See also [autoVerbalList].
  AutoVerbalListProvider({
    required int page,
    String? status,
  }) : this._internal(
          (ref) => autoVerbalList(
            ref as AutoVerbalListRef,
            page: page,
            status: status,
          ),
          from: autoVerbalListProvider,
          name: r'autoVerbalListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autoVerbalListHash,
          dependencies: AutoVerbalListFamily._dependencies,
          allTransitiveDependencies:
              AutoVerbalListFamily._allTransitiveDependencies,
          page: page,
          status: status,
        );

  AutoVerbalListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.status,
  }) : super.internal();

  final int page;
  final String? status;

  @override
  Override overrideWith(
    FutureOr<IList<AutoVerbalModel>> Function(AutoVerbalListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AutoVerbalListProvider._internal(
        (ref) => create(ref as AutoVerbalListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<IList<AutoVerbalModel>> createElement() {
    return _AutoVerbalListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AutoVerbalListProvider &&
        other.page == page &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AutoVerbalListRef
    on AutoDisposeFutureProviderRef<IList<AutoVerbalModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `status` of this provider.
  String? get status;
}

class _AutoVerbalListProviderElement
    extends AutoDisposeFutureProviderElement<IList<AutoVerbalModel>>
    with AutoVerbalListRef {
  _AutoVerbalListProviderElement(super.provider);

  @override
  int get page => (origin as AutoVerbalListProvider).page;
  @override
  String? get status => (origin as AutoVerbalListProvider).status;
}

String _$autoVerbalAtIndexHash() => r'4282a3949ee9cda11716b1556d71db9562bc8420';

/// See also [autoVerbalAtIndex].
@ProviderFor(autoVerbalAtIndex)
const autoVerbalAtIndexProvider = AutoVerbalAtIndexFamily();

/// See also [autoVerbalAtIndex].
class AutoVerbalAtIndexFamily extends Family<PaginatedItem<AutoVerbalModel>?> {
  /// See also [autoVerbalAtIndex].
  const AutoVerbalAtIndexFamily();

  /// See also [autoVerbalAtIndex].
  AutoVerbalAtIndexProvider call({
    required int index,
    String? status,
  }) {
    return AutoVerbalAtIndexProvider(
      index: index,
      status: status,
    );
  }

  @override
  AutoVerbalAtIndexProvider getProviderOverride(
    covariant AutoVerbalAtIndexProvider provider,
  ) {
    return call(
      index: provider.index,
      status: provider.status,
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
  String? get name => r'autoVerbalAtIndexProvider';
}

/// See also [autoVerbalAtIndex].
class AutoVerbalAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<AutoVerbalModel>?> {
  /// See also [autoVerbalAtIndex].
  AutoVerbalAtIndexProvider({
    required int index,
    String? status,
  }) : this._internal(
          (ref) => autoVerbalAtIndex(
            ref as AutoVerbalAtIndexRef,
            index: index,
            status: status,
          ),
          from: autoVerbalAtIndexProvider,
          name: r'autoVerbalAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autoVerbalAtIndexHash,
          dependencies: AutoVerbalAtIndexFamily._dependencies,
          allTransitiveDependencies:
              AutoVerbalAtIndexFamily._allTransitiveDependencies,
          index: index,
          status: status,
        );

  AutoVerbalAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.status,
  }) : super.internal();

  final int index;
  final String? status;

  @override
  Override overrideWith(
    PaginatedItem<AutoVerbalModel>? Function(AutoVerbalAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AutoVerbalAtIndexProvider._internal(
        (ref) => create(ref as AutoVerbalAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<PaginatedItem<AutoVerbalModel>?> createElement() {
    return _AutoVerbalAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AutoVerbalAtIndexProvider &&
        other.index == index &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AutoVerbalAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<AutoVerbalModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `status` of this provider.
  String? get status;
}

class _AutoVerbalAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<AutoVerbalModel>?>
    with AutoVerbalAtIndexRef {
  _AutoVerbalAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as AutoVerbalAtIndexProvider).index;
  @override
  String? get status => (origin as AutoVerbalAtIndexProvider).status;
}

String _$insertAutoVerbalHash() => r'7233e18c700af7351867e6d621877ce2ce8bdace';

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
