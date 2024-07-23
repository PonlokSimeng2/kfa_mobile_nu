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

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$UpdateAutoVerbalForm on _$UpdateAutoVerbal {
  void onNewImageFileChanged(XFile? newNewImageFile) =>
      state = state.copyWith(newImageFile: newNewImageFile);
  void onExistingImageUrlChanged(String? newExistingImageUrl) =>
      state = state.copyWith(existingImageUrl: newExistingImageUrl);
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

class _UpdateAutoVerbalFamilyParam {
  final AutoVerbalModel initial;

  const _UpdateAutoVerbalFamilyParam({required this.initial});

  @override
  bool operator ==(covariant _UpdateAutoVerbalFamilyParam other) {
    if (identical(this, other)) return true;

    return other.initial == initial;
  }

  @override
  int get hashCode => initial.hashCode;
}

bool _debugCheckHasUpdateAutoVerbalFormWidget(BuildContext context) {
  assert(() {
    if (context.widget is! UpdateAutoVerbalFormWidget &&
        context.findAncestorWidgetOfExactType<UpdateAutoVerbalFormWidget>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No UpdateAutoVerbalFormWidget found'),
        ErrorDescription(
            '${context.widget.runtimeType} widgets require a UpdateAutoVerbalFormWidget widget ancestor.'),
      ]);
    }
    return true;
  }());
  return true;
}

typedef UpdateAutoVerbalFormChildBuilder = Widget Function(
  WidgetRef ref,
  GlobalKey<FormState> formKey,
  ProviderStatus<void> status,
  bool isProgressing,
  Failure? failure,
  Future<ProviderStatus<void>> Function() submit,
);

/// Base form widget for [UpdateAutoVerbal] provider
///
/// It required to add this as parent widget of fields widget if [UpdateAutoVerbal] is a family provider
/// , otherwise it's optional
class UpdateAutoVerbalFormWidget extends HookConsumerWidget {
  const UpdateAutoVerbalFormWidget({
    super.key,
    this.formKey,
    required this.initial,
    required this.builder,
  });

  /// Form key. If null it will be created by widget
  final GlobalKey<FormState>? formKey;

  final AutoVerbalModel initial;

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
  final UpdateAutoVerbalFormChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cachedFormKey = useMemoized(() => formKey ?? GlobalKey<FormState>());
    final family = _UpdateAutoVerbalFamilyParam(initial: initial);

    final status = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);

    return ProviderScope(
      overrides: [
        _updateAutoVerbalFamilyParamProvider.overrideWithValue(family)
      ],
      child: Form(
        key: cachedFormKey,
        child: builder(
          ref,
          cachedFormKey,
          status,
          isProgressing,
          failure,
          controller.call,
        ),
      ),
    );
  }
}

// Family provider override --------------------------------------------------
final _updateAutoVerbalFamilyParamProvider =
    Provider<_UpdateAutoVerbalFamilyParam>((ref) {
  throw 'You need to add [UpdateAutoVerbalFormWidget] as your parent. This allow to internal override family provider param';
});

typedef UpdateAutoVerbalNewImageFileChildBuilder = Widget Function(
  WidgetRef ref,
  XFile? newImageFile,
  void Function(XFile? newNewImageFile) changeNewImageFile,
  bool showValidation,
);

/// Widget form field for property [newImageFile]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalNewImageFileFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalNewImageFileFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalNewImageFileChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.newImageFile));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onNewImageFileChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalExistingImageUrlChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? existingImageUrl,
  void Function(String? newExistingImageUrl) changeExistingImageUrl,
  bool showValidation,
);

/// Widget form field for property [existingImageUrl]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalExistingImageUrlFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalExistingImageUrlFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalExistingImageUrlChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.existingImageUrl));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onExistingImageUrlChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.existingImageUrl), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onExistingImageUrlChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalPropertyTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyTypeModel? propertyType,
  void Function(PropertyTypeModel? newPropertyType) changePropertyType,
  bool showValidation,
);

/// Widget form field for property [propertyType]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalPropertyTypeFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalPropertyTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalPropertyTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.propertyType));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyTypeChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalProvinceChildBuilder = Widget Function(
  WidgetRef ref,
  ProvinceModel? province,
  void Function(ProvinceModel? newProvince) changeProvince,
  bool showValidation,
);

/// Widget form field for property [province]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalProvinceFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalProvinceFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalProvinceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.province));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onProvinceChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBankChildBuilder = Widget Function(
  WidgetRef ref,
  BankModel? bank,
  void Function(BankModel? newBank) changeBank,
  bool showValidation,
);

/// Widget form field for property [bank]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBankFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBankFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalBankChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.bank));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBankChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalOwnerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String ownerName,
  void Function(String newOwnerName) changeOwnerName,
  bool showValidation,
);

/// Widget form field for property [ownerName]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalOwnerNameFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalOwnerNameFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalOwnerNameChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.ownerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onOwnerNameChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.ownerName), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onOwnerNameChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalOwnerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String ownerPhone,
  void Function(String newOwnerPhone) changeOwnerPhone,
  bool showValidation,
);

/// Widget form field for property [ownerPhone]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalOwnerPhoneFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalOwnerPhoneFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalOwnerPhoneChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.ownerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onOwnerPhoneChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.ownerPhone), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onOwnerPhoneChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBankOfficerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String bankOfficerName,
  void Function(String newBankOfficerName) changeBankOfficerName,
  bool showValidation,
);

/// Widget form field for property [bankOfficerName]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBankOfficerNameFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBankOfficerNameFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalBankOfficerNameChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.bankOfficerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onBankOfficerNameChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.bankOfficerName), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onBankOfficerNameChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBankOfficerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String bankOfficerPhone,
  void Function(String newBankOfficerPhone) changeBankOfficerPhone,
  bool showValidation,
);

/// Widget form field for property [bankOfficerPhone]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBankOfficerPhoneFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBankOfficerPhoneFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalBankOfficerPhoneChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.bankOfficerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onBankOfficerPhoneChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.bankOfficerPhone), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onBankOfficerPhoneChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalMinValueChildBuilder = Widget Function(
  WidgetRef ref,
  double minValue,
  void Function(double newMinValue) changeMinValue,
  bool showValidation,
);

/// Widget form field for property [minValue]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalMinValueFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalMinValueFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalMinValueChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.minValue));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMinValueChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalMaxValueChildBuilder = Widget Function(
  WidgetRef ref,
  double maxValue,
  void Function(double newMaxValue) changeMaxValue,
  bool showValidation,
);

/// Widget form field for property [maxValue]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalMaxValueFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalMaxValueFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalMaxValueChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.maxValue));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMaxValueChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalMinValueSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double minValueSqm,
  void Function(double newMinValueSqm) changeMinValueSqm,
  bool showValidation,
);

/// Widget form field for property [minValueSqm]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalMinValueSqmFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalMinValueSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalMinValueSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.minValueSqm));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMinValueSqmChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalMaxValueSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double maxValueSqm,
  void Function(double newMaxValueSqm) changeMaxValueSqm,
  bool showValidation,
);

/// Widget form field for property [maxValueSqm]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalMaxValueSqmFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalMaxValueSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalMaxValueSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.maxValueSqm));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onMaxValueSqmChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLatitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double latitude,
  void Function(double newLatitude) changeLatitude,
  bool showValidation,
);

/// Widget form field for property [latitude]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLatitudeFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLatitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLatitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.latitude));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLatitudeChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLongitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double longitude,
  void Function(double newLongitude) changeLongitude,
  bool showValidation,
);

/// Widget form field for property [longitude]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLongitudeFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLongitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLongitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.longitude));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLongitudeChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalAreaChildBuilder = Widget Function(
  WidgetRef ref,
  double area,
  void Function(double newArea) changeArea,
  bool showValidation,
);

/// Widget form field for property [area]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalAreaFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalAreaFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalAreaChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.area));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onAreaChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalHeadChildBuilder = Widget Function(
  WidgetRef ref,
  double head,
  void Function(double newHead) changeHead,
  bool showValidation,
);

/// Widget form field for property [head]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalHeadFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalHeadFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalHeadChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.head));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onHeadChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double length,
  void Function(double newLength) changeLength,
  bool showValidation,
);

/// Widget form field for property [length]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLengthFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.length));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
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

String _$autoVerbalListHash() => r'72a91baffe8bcca5345d854faffb352cd29823b9';

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
    AutoVerbalListFilter? filter,
  }) {
    return AutoVerbalListProvider(
      page: page,
      filter: filter,
    );
  }

  @override
  AutoVerbalListProvider getProviderOverride(
    covariant AutoVerbalListProvider provider,
  ) {
    return call(
      page: provider.page,
      filter: provider.filter,
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
    AutoVerbalListFilter? filter,
  }) : this._internal(
          (ref) => autoVerbalList(
            ref as AutoVerbalListRef,
            page: page,
            filter: filter,
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
          filter: filter,
        );

  AutoVerbalListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.filter,
  }) : super.internal();

  final int page;
  final AutoVerbalListFilter? filter;

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
        filter: filter,
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
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AutoVerbalListRef
    on AutoDisposeFutureProviderRef<IList<AutoVerbalModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `filter` of this provider.
  AutoVerbalListFilter? get filter;
}

class _AutoVerbalListProviderElement
    extends AutoDisposeFutureProviderElement<IList<AutoVerbalModel>>
    with AutoVerbalListRef {
  _AutoVerbalListProviderElement(super.provider);

  @override
  int get page => (origin as AutoVerbalListProvider).page;
  @override
  AutoVerbalListFilter? get filter => (origin as AutoVerbalListProvider).filter;
}

String _$autoVerbalAtIndexHash() => r'ec10eead2dc67c133e2860d7a5c5ef422bafcfaf';

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
    AutoVerbalListFilter? filter,
  }) {
    return AutoVerbalAtIndexProvider(
      index: index,
      filter: filter,
    );
  }

  @override
  AutoVerbalAtIndexProvider getProviderOverride(
    covariant AutoVerbalAtIndexProvider provider,
  ) {
    return call(
      index: provider.index,
      filter: provider.filter,
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
    AutoVerbalListFilter? filter,
  }) : this._internal(
          (ref) => autoVerbalAtIndex(
            ref as AutoVerbalAtIndexRef,
            index: index,
            filter: filter,
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
          filter: filter,
        );

  AutoVerbalAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.filter,
  }) : super.internal();

  final int index;
  final AutoVerbalListFilter? filter;

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
        filter: filter,
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
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AutoVerbalAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<AutoVerbalModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `filter` of this provider.
  AutoVerbalListFilter? get filter;
}

class _AutoVerbalAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<AutoVerbalModel>?>
    with AutoVerbalAtIndexRef {
  _AutoVerbalAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as AutoVerbalAtIndexProvider).index;
  @override
  AutoVerbalListFilter? get filter =>
      (origin as AutoVerbalAtIndexProvider).filter;
}

String _$insertAutoVerbalHash() => r'ee1250b837cc269963eab1f09033f851b1a16ded';

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
String _$updateAutoVerbalHash() => r'a81d0b36b67c764097f4a14b8a791bb967371754';

abstract class _$UpdateAutoVerbal
    extends BuildlessAutoDisposeNotifier<UpdateAutoVerbalState> {
  late final AutoVerbalModel initial;

  UpdateAutoVerbalState build(
    AutoVerbalModel initial,
  );
}

/// See also [UpdateAutoVerbal].
@ProviderFor(UpdateAutoVerbal)
const updateAutoVerbalProvider = UpdateAutoVerbalFamily();

/// See also [UpdateAutoVerbal].
class UpdateAutoVerbalFamily extends Family<UpdateAutoVerbalState> {
  /// See also [UpdateAutoVerbal].
  const UpdateAutoVerbalFamily();

  /// See also [UpdateAutoVerbal].
  UpdateAutoVerbalProvider call(
    AutoVerbalModel initial,
  ) {
    return UpdateAutoVerbalProvider(
      initial,
    );
  }

  @override
  UpdateAutoVerbalProvider getProviderOverride(
    covariant UpdateAutoVerbalProvider provider,
  ) {
    return call(
      provider.initial,
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
  String? get name => r'updateAutoVerbalProvider';
}

/// See also [UpdateAutoVerbal].
class UpdateAutoVerbalProvider extends AutoDisposeNotifierProviderImpl<
    UpdateAutoVerbal, UpdateAutoVerbalState> {
  /// See also [UpdateAutoVerbal].
  UpdateAutoVerbalProvider(
    AutoVerbalModel initial,
  ) : this._internal(
          () => UpdateAutoVerbal()..initial = initial,
          from: updateAutoVerbalProvider,
          name: r'updateAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAutoVerbalHash,
          dependencies: UpdateAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              UpdateAutoVerbalFamily._allTransitiveDependencies,
          initial: initial,
        );

  UpdateAutoVerbalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initial,
  }) : super.internal();

  final AutoVerbalModel initial;

  @override
  UpdateAutoVerbalState runNotifierBuild(
    covariant UpdateAutoVerbal notifier,
  ) {
    return notifier.build(
      initial,
    );
  }

  @override
  Override overrideWith(UpdateAutoVerbal Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateAutoVerbalProvider._internal(
        () => create()..initial = initial,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initial: initial,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UpdateAutoVerbal, UpdateAutoVerbalState>
      createElement() {
    return _UpdateAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAutoVerbalProvider && other.initial == initial;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initial.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateAutoVerbalRef
    on AutoDisposeNotifierProviderRef<UpdateAutoVerbalState> {
  /// The parameter `initial` of this provider.
  AutoVerbalModel get initial;
}

class _UpdateAutoVerbalProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateAutoVerbal,
        UpdateAutoVerbalState> with UpdateAutoVerbalRef {
  _UpdateAutoVerbalProviderElement(super.provider);

  @override
  AutoVerbalModel get initial => (origin as UpdateAutoVerbalProvider).initial;
}

String _$deleteAutoVerbalHash() => r'88fe31ed70a68ce2905ffc5dacd912d50ef1b8da';

abstract class _$DeleteAutoVerbal
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int autoVerbalId;

  ProviderStatus<void> build(
    int autoVerbalId,
  );
}

/// See also [DeleteAutoVerbal].
@ProviderFor(DeleteAutoVerbal)
const deleteAutoVerbalProvider = DeleteAutoVerbalFamily();

/// See also [DeleteAutoVerbal].
class DeleteAutoVerbalFamily extends Family<ProviderStatus<void>> {
  /// See also [DeleteAutoVerbal].
  const DeleteAutoVerbalFamily();

  /// See also [DeleteAutoVerbal].
  DeleteAutoVerbalProvider call(
    int autoVerbalId,
  ) {
    return DeleteAutoVerbalProvider(
      autoVerbalId,
    );
  }

  @override
  DeleteAutoVerbalProvider getProviderOverride(
    covariant DeleteAutoVerbalProvider provider,
  ) {
    return call(
      provider.autoVerbalId,
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
  String? get name => r'deleteAutoVerbalProvider';
}

/// See also [DeleteAutoVerbal].
class DeleteAutoVerbalProvider extends AutoDisposeNotifierProviderImpl<
    DeleteAutoVerbal, ProviderStatus<void>> {
  /// See also [DeleteAutoVerbal].
  DeleteAutoVerbalProvider(
    int autoVerbalId,
  ) : this._internal(
          () => DeleteAutoVerbal()..autoVerbalId = autoVerbalId,
          from: deleteAutoVerbalProvider,
          name: r'deleteAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteAutoVerbalHash,
          dependencies: DeleteAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              DeleteAutoVerbalFamily._allTransitiveDependencies,
          autoVerbalId: autoVerbalId,
        );

  DeleteAutoVerbalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.autoVerbalId,
  }) : super.internal();

  final int autoVerbalId;

  @override
  ProviderStatus<void> runNotifierBuild(
    covariant DeleteAutoVerbal notifier,
  ) {
    return notifier.build(
      autoVerbalId,
    );
  }

  @override
  Override overrideWith(DeleteAutoVerbal Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeleteAutoVerbalProvider._internal(
        () => create()..autoVerbalId = autoVerbalId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        autoVerbalId: autoVerbalId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DeleteAutoVerbal, ProviderStatus<void>>
      createElement() {
    return _DeleteAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteAutoVerbalProvider &&
        other.autoVerbalId == autoVerbalId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, autoVerbalId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteAutoVerbalRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `autoVerbalId` of this provider.
  int get autoVerbalId;
}

class _DeleteAutoVerbalProviderElement
    extends AutoDisposeNotifierProviderElement<DeleteAutoVerbal,
        ProviderStatus<void>> with DeleteAutoVerbalRef {
  _DeleteAutoVerbalProviderElement(super.provider);

  @override
  int get autoVerbalId => (origin as DeleteAutoVerbalProvider).autoVerbalId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
