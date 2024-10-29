// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas, type=lint

part of 'auto_verbal_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$InsertAutoVerbalForm on _$InsertAutoVerbal {
  void onExistingImageUrlsChanged(IList<String> newExistingImageUrls) =>
      state = state.copyWith(existingImageUrls: newExistingImageUrls);
  void onPropertyIdChanged(int? newPropertyId) =>
      state = state.copyWith(propertyId: newPropertyId);
  void onImageFilesChanged(IList<XFile> newImageFiles) =>
      state = state.copyWith(imageFiles: newImageFiles);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onProvinceChanged(ProvinceModel? newProvince) =>
      state = state.copyWith(province: newProvince);
  void onBankChanged(BankModel? newBank) =>
      state = state.copyWith(bank: newBank);
  void onBankBranchChanged(String? newBankBranch) =>
      state = state.copyWith(bankBranch: newBankBranch);
  void onOwnerNameChanged(String? newOwnerName) =>
      state = state.copyWith(ownerName: newOwnerName);
  void onOwnerPhoneChanged(String? newOwnerPhone) =>
      state = state.copyWith(ownerPhone: newOwnerPhone);
  void onBankOfficerNameChanged(String? newBankOfficerName) =>
      state = state.copyWith(bankOfficerName: newBankOfficerName);
  void onBankOfficerPhoneChanged(String? newBankOfficerPhone) =>
      state = state.copyWith(bankOfficerPhone: newBankOfficerPhone);
  void onMinValueChanged(double? newMinValue) =>
      state = state.copyWith(minValue: newMinValue);
  void onMaxValueChanged(double? newMaxValue) =>
      state = state.copyWith(maxValue: newMaxValue);
  void onMinValueSqmChanged(double? newMinValueSqm) =>
      state = state.copyWith(minValueSqm: newMinValueSqm);
  void onMaxValueSqmChanged(double? newMaxValueSqm) =>
      state = state.copyWith(maxValueSqm: newMaxValueSqm);
  void onLatitudeChanged(double? newLatitude) =>
      state = state.copyWith(latitude: newLatitude);
  void onLongitudeChanged(double? newLongitude) =>
      state = state.copyWith(longitude: newLongitude);
  void onAreaChanged(double? newArea) => state = state.copyWith(area: newArea);
  void onBuildinglengthChanged(double? newBuildinglength) =>
      state = state.copyWith(buildinglength: newBuildinglength);
  void onBuildingwidthChanged(double? newBuildingwidth) =>
      state = state.copyWith(buildingwidth: newBuildingwidth);
  void onLandlengthChanged(double? newLandlength) =>
      state = state.copyWith(landlength: newLandlength);
  void onLandwidthChanged(double? newLandwidth) =>
      state = state.copyWith(landwidth: newLandwidth);
  void onRoadChanged(RoadModel? newRoad) =>
      state = state.copyWith(road: newRoad);
  void onBedChanged(int? newBed) => state = state.copyWith(bed: newBed);
  void onBathChanged(int? newBath) => state = state.copyWith(bath: newBath);
  void onLivingroomChanged(int? newLivingroom) =>
      state = state.copyWith(livingroom: newLivingroom);
  void onFloorChanged(int? newFloor) => state = state.copyWith(floor: newFloor);
}

class _InsertAutoVerbalFamilyParam {
  final PropertyModel? fromProperty;

  const _InsertAutoVerbalFamilyParam({required this.fromProperty});

  @override
  bool operator ==(covariant _InsertAutoVerbalFamilyParam other) {
    if (identical(this, other)) return true;

    return other.fromProperty == fromProperty;
  }

  @override
  int get hashCode => fromProperty.hashCode;
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
    required this.fromProperty,
    required this.builder,
  });

  /// Form key. If null it will be created by widget
  final GlobalKey<FormState>? formKey;

  final PropertyModel? fromProperty;

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
    final family = _InsertAutoVerbalFamilyParam(fromProperty: fromProperty);

    final status = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);

    return ProviderScope(
      overrides: [
        _insertAutoVerbalFamilyParamProvider.overrideWithValue(family)
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
final _insertAutoVerbalFamilyParamProvider =
    Provider<_InsertAutoVerbalFamilyParam>((ref) {
  throw 'You need to add [InsertAutoVerbalFormWidget] as your parent. This allow to internal override family provider param';
});

typedef InsertAutoVerbalExistingImageUrlsChildBuilder = Widget Function(
  WidgetRef ref,
  IList<String> existingImageUrls,
  void Function(IList<String> newExistingImageUrls) changeExistingImageUrls,
  bool showValidation,
);

/// Widget form field for property [existingImageUrls]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalExistingImageUrlsFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalExistingImageUrlsFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalExistingImageUrlsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.existingImageUrls));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onExistingImageUrlsChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalPropertyIdChildBuilder = Widget Function(
  WidgetRef ref,
  int? propertyId,
  void Function(int? newPropertyId) changePropertyId,
  bool showValidation,
);

/// Widget form field for property [propertyId]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalPropertyIdFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalPropertyIdFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalPropertyIdChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.propertyId));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyIdChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalImageFilesChildBuilder = Widget Function(
  WidgetRef ref,
  IList<XFile> imageFiles,
  void Function(IList<XFile> newImageFiles) changeImageFiles,
  bool showValidation,
);

/// Widget form field for property [imageFiles]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalImageFilesFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalImageFilesFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalImageFilesChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.imageFiles));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onImageFilesChanged,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.propertyType));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.province));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bank));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBankChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBankBranchChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? bankBranch,
  void Function(String? newBankBranch) changeBankBranch,
  bool showValidation,
);

/// Widget form field for property [bankBranch]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBankBranchFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBankBranchFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertAutoVerbalBankBranchChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankBranch));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onBankBranchChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankBranch), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onBankBranchChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalOwnerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? ownerName,
  void Function(String? newOwnerName) changeOwnerName,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.ownerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onOwnerNameChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.ownerName), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
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

typedef InsertAutoVerbalOwnerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? ownerPhone,
  void Function(String? newOwnerPhone) changeOwnerPhone,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.ownerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onOwnerPhoneChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.ownerPhone), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
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

typedef InsertAutoVerbalBankOfficerNameChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? bankOfficerName,
  void Function(String? newBankOfficerName) changeBankOfficerName,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankOfficerName));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onBankOfficerNameChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankOfficerName), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
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

typedef InsertAutoVerbalBankOfficerPhoneChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String? bankOfficerPhone,
  void Function(String? newBankOfficerPhone) changeBankOfficerPhone,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankOfficerPhone));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onBankOfficerPhoneChanged(
            textController.text.isEmpty ? null : textController.text));
      });
      return null;
    });

    ref.listen(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bankOfficerPhone), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current ?? '');
        }
      }
    });

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
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

typedef InsertAutoVerbalMinValueChildBuilder = Widget Function(
  WidgetRef ref,
  double? minValue,
  void Function(double? newMinValue) changeMinValue,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.minValue));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? maxValue,
  void Function(double? newMaxValue) changeMaxValue,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.maxValue));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? minValueSqm,
  void Function(double? newMinValueSqm) changeMinValueSqm,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.minValueSqm));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? maxValueSqm,
  void Function(double? newMaxValueSqm) changeMaxValueSqm,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.maxValueSqm));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? latitude,
  void Function(double? newLatitude) changeLatitude,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.latitude));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? longitude,
  void Function(double? newLongitude) changeLongitude,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.longitude));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
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
  double? area,
  void Function(double? newArea) changeArea,
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
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.area));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onAreaChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBuildinglengthChildBuilder = Widget Function(
  WidgetRef ref,
  double? buildinglength,
  void Function(double? newBuildinglength) changeBuildinglength,
  bool showValidation,
);

/// Widget form field for property [buildinglength]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBuildinglengthFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBuildinglengthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalBuildinglengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.buildinglength));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildinglengthChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBuildingwidthChildBuilder = Widget Function(
  WidgetRef ref,
  double? buildingwidth,
  void Function(double? newBuildingwidth) changeBuildingwidth,
  bool showValidation,
);

/// Widget form field for property [buildingwidth]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBuildingwidthFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBuildingwidthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalBuildingwidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.buildingwidth));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingwidthChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLandlengthChildBuilder = Widget Function(
  WidgetRef ref,
  double? landlength,
  void Function(double? newLandlength) changeLandlength,
  bool showValidation,
);

/// Widget form field for property [landlength]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLandlengthFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLandlengthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLandlengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.landlength));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandlengthChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLandwidthChildBuilder = Widget Function(
  WidgetRef ref,
  double? landwidth,
  void Function(double? newLandwidth) changeLandwidth,
  bool showValidation,
);

/// Widget form field for property [landwidth]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLandwidthFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLandwidthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLandwidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.landwidth));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandwidthChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalRoadChildBuilder = Widget Function(
  WidgetRef ref,
  RoadModel? road,
  void Function(RoadModel? newRoad) changeRoad,
  bool showValidation,
);

/// Widget form field for property [road]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalRoadFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalRoadFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalRoadChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.road));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onRoadChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBedChildBuilder = Widget Function(
  WidgetRef ref,
  int? bed,
  void Function(int? newBed) changeBed,
  bool showValidation,
);

/// Widget form field for property [bed]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBedFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBedFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalBedChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bed));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBedChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalBathChildBuilder = Widget Function(
  WidgetRef ref,
  int? bath,
  void Function(int? newBath) changeBath,
  bool showValidation,
);

/// Widget form field for property [bath]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalBathFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalBathFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalBathChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.bath));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBathChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalLivingroomChildBuilder = Widget Function(
  WidgetRef ref,
  int? livingroom,
  void Function(int? newLivingroom) changeLivingroom,
  bool showValidation,
);

/// Widget form field for property [livingroom]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalLivingroomFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalLivingroomFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalLivingroomChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.livingroom));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLivingroomChanged,
      showValidation,
    );
  }
}

typedef InsertAutoVerbalFloorChildBuilder = Widget Function(
  WidgetRef ref,
  int? floor,
  void Function(int? newFloor) changeFloor,
  bool showValidation,
);

/// Widget form field for property [floor]. To use this widget. You will need to add [InsertAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertAutoVerbalFloorFieldWidget extends HookConsumerWidget {
  const InsertAutoVerbalFloorFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertAutoVerbalFloorChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertAutoVerbalFormWidget(context));
    final family = ref.watch(_insertAutoVerbalFamilyParamProvider);
    final notifier = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty).notifier);
    final state = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.floor));

    final showValidation = ref.watch(
        insertAutoVerbalProvider(fromProperty: family.fromProperty)
            .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onFloorChanged,
      showValidation,
    );
  }
}

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$UpdateAutoVerbalForm on _$UpdateAutoVerbal {
  void onNewImageFilesChanged(IList<XFile> newNewImageFiles) =>
      state = state.copyWith(newImageFiles: newNewImageFiles);
  void onExistingImageUrlsChanged(IList<String> newExistingImageUrls) =>
      state = state.copyWith(existingImageUrls: newExistingImageUrls);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onProvinceChanged(ProvinceModel? newProvince) =>
      state = state.copyWith(province: newProvince);
  void onBankChanged(BankModel? newBank) =>
      state = state.copyWith(bank: newBank);
  void onBankBranchChanged(String newBankBranch) =>
      state = state.copyWith(bankBranch: newBankBranch);
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
  void onBuildinglengthChanged(double newBuildinglength) =>
      state = state.copyWith(buildinglength: newBuildinglength);
  void onBuildingwidthChanged(double newBuildingwidth) =>
      state = state.copyWith(buildingwidth: newBuildingwidth);
  void onLandlengthChanged(double newLandlength) =>
      state = state.copyWith(landlength: newLandlength);
  void onLandwidthChanged(double newLandwidth) =>
      state = state.copyWith(landwidth: newLandwidth);
  void onRoadChanged(RoadModel? newRoad) =>
      state = state.copyWith(road: newRoad);
  void onBedChanged(int? newBed) => state = state.copyWith(bed: newBed);
  void onBathChanged(int? newBath) => state = state.copyWith(bath: newBath);
  void onLivingroomChanged(int? newLivingroom) =>
      state = state.copyWith(livingroom: newLivingroom);
  void onFloorChanged(int? newFloor) => state = state.copyWith(floor: newFloor);
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

typedef UpdateAutoVerbalNewImageFilesChildBuilder = Widget Function(
  WidgetRef ref,
  IList<XFile> newImageFiles,
  void Function(IList<XFile> newNewImageFiles) changeNewImageFiles,
  bool showValidation,
);

/// Widget form field for property [newImageFiles]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalNewImageFilesFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalNewImageFilesFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalNewImageFilesChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.newImageFiles));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onNewImageFilesChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalExistingImageUrlsChildBuilder = Widget Function(
  WidgetRef ref,
  IList<String> existingImageUrls,
  void Function(IList<String> newExistingImageUrls) changeExistingImageUrls,
  bool showValidation,
);

/// Widget form field for property [existingImageUrls]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalExistingImageUrlsFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalExistingImageUrlsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalExistingImageUrlsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.existingImageUrls));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onExistingImageUrlsChanged,
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

typedef UpdateAutoVerbalBankBranchChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String bankBranch,
  void Function(String newBankBranch) changeBankBranch,
  bool showValidation,
);

/// Widget form field for property [bankBranch]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBankBranchFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBankBranchFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdateAutoVerbalBankBranchChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.bankBranch));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onBankBranchChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updateAutoVerbalProvider(family.initial)
            .select((value) => value.bankBranch), (previous, current) {
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
      notifier.onBankBranchChanged,
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

typedef UpdateAutoVerbalBuildinglengthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildinglength,
  void Function(double newBuildinglength) changeBuildinglength,
  bool showValidation,
);

/// Widget form field for property [buildinglength]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBuildinglengthFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBuildinglengthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalBuildinglengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.buildinglength));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildinglengthChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBuildingwidthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildingwidth,
  void Function(double newBuildingwidth) changeBuildingwidth,
  bool showValidation,
);

/// Widget form field for property [buildingwidth]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBuildingwidthFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBuildingwidthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalBuildingwidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.buildingwidth));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingwidthChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLandlengthChildBuilder = Widget Function(
  WidgetRef ref,
  double landlength,
  void Function(double newLandlength) changeLandlength,
  bool showValidation,
);

/// Widget form field for property [landlength]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLandlengthFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLandlengthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLandlengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.landlength));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandlengthChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLandwidthChildBuilder = Widget Function(
  WidgetRef ref,
  double landwidth,
  void Function(double newLandwidth) changeLandwidth,
  bool showValidation,
);

/// Widget form field for property [landwidth]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLandwidthFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLandwidthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLandwidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.landwidth));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandwidthChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalRoadChildBuilder = Widget Function(
  WidgetRef ref,
  RoadModel? road,
  void Function(RoadModel? newRoad) changeRoad,
  bool showValidation,
);

/// Widget form field for property [road]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalRoadFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalRoadFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalRoadChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.road));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onRoadChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBedChildBuilder = Widget Function(
  WidgetRef ref,
  int? bed,
  void Function(int? newBed) changeBed,
  bool showValidation,
);

/// Widget form field for property [bed]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBedFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBedFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalBedChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.bed));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBedChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalBathChildBuilder = Widget Function(
  WidgetRef ref,
  int? bath,
  void Function(int? newBath) changeBath,
  bool showValidation,
);

/// Widget form field for property [bath]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalBathFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalBathFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalBathChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(
        updateAutoVerbalProvider(family.initial).select((value) => value.bath));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBathChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalLivingroomChildBuilder = Widget Function(
  WidgetRef ref,
  int? livingroom,
  void Function(int? newLivingroom) changeLivingroom,
  bool showValidation,
);

/// Widget form field for property [livingroom]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalLivingroomFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalLivingroomFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalLivingroomChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.livingroom));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLivingroomChanged,
      showValidation,
    );
  }
}

typedef UpdateAutoVerbalFloorChildBuilder = Widget Function(
  WidgetRef ref,
  int? floor,
  void Function(int? newFloor) changeFloor,
  bool showValidation,
);

/// Widget form field for property [floor]. To use this widget. You will need to add [UpdateAutoVerbalFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdateAutoVerbalFloorFieldWidget extends HookConsumerWidget {
  const UpdateAutoVerbalFloorFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdateAutoVerbalFloorChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdateAutoVerbalFormWidget(context));
    final family = ref.watch(_updateAutoVerbalFamilyParamProvider);
    final notifier =
        ref.watch(updateAutoVerbalProvider(family.initial).notifier);
    final state = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.floor));

    final showValidation = ref.watch(updateAutoVerbalProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onFloorChanged,
      showValidation,
    );
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$autoVerbalListHash() => r'f89f158e5edd9b71de774016c404d153a634bd3f';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$autoVerbalDetailHash() => r'52e0d33913de8b6d8183ecc3bc639f10b96f7429';

/// See also [autoVerbalDetail].
@ProviderFor(autoVerbalDetail)
const autoVerbalDetailProvider = AutoVerbalDetailFamily();

/// See also [autoVerbalDetail].
class AutoVerbalDetailFamily extends Family<AsyncValue<AutoVerbalModel>> {
  /// See also [autoVerbalDetail].
  const AutoVerbalDetailFamily();

  /// See also [autoVerbalDetail].
  AutoVerbalDetailProvider call(
    int id,
  ) {
    return AutoVerbalDetailProvider(
      id,
    );
  }

  @override
  AutoVerbalDetailProvider getProviderOverride(
    covariant AutoVerbalDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'autoVerbalDetailProvider';
}

/// See also [autoVerbalDetail].
class AutoVerbalDetailProvider
    extends AutoDisposeFutureProvider<AutoVerbalModel> {
  /// See also [autoVerbalDetail].
  AutoVerbalDetailProvider(
    int id,
  ) : this._internal(
          (ref) => autoVerbalDetail(
            ref as AutoVerbalDetailRef,
            id,
          ),
          from: autoVerbalDetailProvider,
          name: r'autoVerbalDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$autoVerbalDetailHash,
          dependencies: AutoVerbalDetailFamily._dependencies,
          allTransitiveDependencies:
              AutoVerbalDetailFamily._allTransitiveDependencies,
          id: id,
        );

  AutoVerbalDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<AutoVerbalModel> Function(AutoVerbalDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AutoVerbalDetailProvider._internal(
        (ref) => create(ref as AutoVerbalDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AutoVerbalModel> createElement() {
    return _AutoVerbalDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AutoVerbalDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AutoVerbalDetailRef on AutoDisposeFutureProviderRef<AutoVerbalModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _AutoVerbalDetailProviderElement
    extends AutoDisposeFutureProviderElement<AutoVerbalModel>
    with AutoVerbalDetailRef {
  _AutoVerbalDetailProviderElement(super.provider);

  @override
  int get id => (origin as AutoVerbalDetailProvider).id;
}

String _$insertAutoVerbalHash() => r'9534ad79f74cf280b00e1093b85497ae36d007b9';

abstract class _$InsertAutoVerbal
    extends BuildlessAutoDisposeNotifier<InsertAutoVerbalState> {
  late final PropertyModel? fromProperty;

  InsertAutoVerbalState build({
    PropertyModel? fromProperty,
  });
}

/// See also [InsertAutoVerbal].
@ProviderFor(InsertAutoVerbal)
const insertAutoVerbalProvider = InsertAutoVerbalFamily();

/// See also [InsertAutoVerbal].
class InsertAutoVerbalFamily extends Family<InsertAutoVerbalState> {
  /// See also [InsertAutoVerbal].
  const InsertAutoVerbalFamily();

  /// See also [InsertAutoVerbal].
  InsertAutoVerbalProvider call({
    PropertyModel? fromProperty,
  }) {
    return InsertAutoVerbalProvider(
      fromProperty: fromProperty,
    );
  }

  @override
  InsertAutoVerbalProvider getProviderOverride(
    covariant InsertAutoVerbalProvider provider,
  ) {
    return call(
      fromProperty: provider.fromProperty,
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
  String? get name => r'insertAutoVerbalProvider';
}

/// See also [InsertAutoVerbal].
class InsertAutoVerbalProvider extends AutoDisposeNotifierProviderImpl<
    InsertAutoVerbal, InsertAutoVerbalState> {
  /// See also [InsertAutoVerbal].
  InsertAutoVerbalProvider({
    PropertyModel? fromProperty,
  }) : this._internal(
          () => InsertAutoVerbal()..fromProperty = fromProperty,
          from: insertAutoVerbalProvider,
          name: r'insertAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertAutoVerbalHash,
          dependencies: InsertAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              InsertAutoVerbalFamily._allTransitiveDependencies,
          fromProperty: fromProperty,
        );

  InsertAutoVerbalProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.fromProperty,
  }) : super.internal();

  final PropertyModel? fromProperty;

  @override
  InsertAutoVerbalState runNotifierBuild(
    covariant InsertAutoVerbal notifier,
  ) {
    return notifier.build(
      fromProperty: fromProperty,
    );
  }

  @override
  Override overrideWith(InsertAutoVerbal Function() create) {
    return ProviderOverride(
      origin: this,
      override: InsertAutoVerbalProvider._internal(
        () => create()..fromProperty = fromProperty,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        fromProperty: fromProperty,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<InsertAutoVerbal, InsertAutoVerbalState>
      createElement() {
    return _InsertAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertAutoVerbalProvider &&
        other.fromProperty == fromProperty;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fromProperty.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertAutoVerbalRef
    on AutoDisposeNotifierProviderRef<InsertAutoVerbalState> {
  /// The parameter `fromProperty` of this provider.
  PropertyModel? get fromProperty;
}

class _InsertAutoVerbalProviderElement
    extends AutoDisposeNotifierProviderElement<InsertAutoVerbal,
        InsertAutoVerbalState> with InsertAutoVerbalRef {
  _InsertAutoVerbalProviderElement(super.provider);

  @override
  PropertyModel? get fromProperty =>
      (origin as InsertAutoVerbalProvider).fromProperty;
}

String _$updateAutoVerbalHash() => r'1c46aedf50af55c78b8b3657160ae482b19ea364';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

String _$approveAutoVerbalHash() => r'bffdcdd5e7c44ca967376e290729b7d229971f5a';

abstract class _$ApproveAutoVerbal
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int autoVerbalId;

  ProviderStatus<void> build(
    int autoVerbalId,
  );
}

/// See also [ApproveAutoVerbal].
@ProviderFor(ApproveAutoVerbal)
const approveAutoVerbalProvider = ApproveAutoVerbalFamily();

/// See also [ApproveAutoVerbal].
class ApproveAutoVerbalFamily extends Family<ProviderStatus<void>> {
  /// See also [ApproveAutoVerbal].
  const ApproveAutoVerbalFamily();

  /// See also [ApproveAutoVerbal].
  ApproveAutoVerbalProvider call(
    int autoVerbalId,
  ) {
    return ApproveAutoVerbalProvider(
      autoVerbalId,
    );
  }

  @override
  ApproveAutoVerbalProvider getProviderOverride(
    covariant ApproveAutoVerbalProvider provider,
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
  String? get name => r'approveAutoVerbalProvider';
}

/// See also [ApproveAutoVerbal].
class ApproveAutoVerbalProvider extends AutoDisposeNotifierProviderImpl<
    ApproveAutoVerbal, ProviderStatus<void>> {
  /// See also [ApproveAutoVerbal].
  ApproveAutoVerbalProvider(
    int autoVerbalId,
  ) : this._internal(
          () => ApproveAutoVerbal()..autoVerbalId = autoVerbalId,
          from: approveAutoVerbalProvider,
          name: r'approveAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$approveAutoVerbalHash,
          dependencies: ApproveAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              ApproveAutoVerbalFamily._allTransitiveDependencies,
          autoVerbalId: autoVerbalId,
        );

  ApproveAutoVerbalProvider._internal(
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
    covariant ApproveAutoVerbal notifier,
  ) {
    return notifier.build(
      autoVerbalId,
    );
  }

  @override
  Override overrideWith(ApproveAutoVerbal Function() create) {
    return ProviderOverride(
      origin: this,
      override: ApproveAutoVerbalProvider._internal(
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
  AutoDisposeNotifierProviderElement<ApproveAutoVerbal, ProviderStatus<void>>
      createElement() {
    return _ApproveAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApproveAutoVerbalProvider &&
        other.autoVerbalId == autoVerbalId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, autoVerbalId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ApproveAutoVerbalRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `autoVerbalId` of this provider.
  int get autoVerbalId;
}

class _ApproveAutoVerbalProviderElement
    extends AutoDisposeNotifierProviderElement<ApproveAutoVerbal,
        ProviderStatus<void>> with ApproveAutoVerbalRef {
  _ApproveAutoVerbalProviderElement(super.provider);

  @override
  int get autoVerbalId => (origin as ApproveAutoVerbalProvider).autoVerbalId;
}

String _$rejectAutoVerbalHash() => r'cb97b68061f4ce2c3dda6c5928569e867ef82f0b';

abstract class _$RejectAutoVerbal
    extends BuildlessAutoDisposeNotifier<ProviderStatus<void>> {
  late final int autoVerbalId;

  ProviderStatus<void> build(
    int autoVerbalId,
  );
}

/// See also [RejectAutoVerbal].
@ProviderFor(RejectAutoVerbal)
const rejectAutoVerbalProvider = RejectAutoVerbalFamily();

/// See also [RejectAutoVerbal].
class RejectAutoVerbalFamily extends Family<ProviderStatus<void>> {
  /// See also [RejectAutoVerbal].
  const RejectAutoVerbalFamily();

  /// See also [RejectAutoVerbal].
  RejectAutoVerbalProvider call(
    int autoVerbalId,
  ) {
    return RejectAutoVerbalProvider(
      autoVerbalId,
    );
  }

  @override
  RejectAutoVerbalProvider getProviderOverride(
    covariant RejectAutoVerbalProvider provider,
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
  String? get name => r'rejectAutoVerbalProvider';
}

/// See also [RejectAutoVerbal].
class RejectAutoVerbalProvider extends AutoDisposeNotifierProviderImpl<
    RejectAutoVerbal, ProviderStatus<void>> {
  /// See also [RejectAutoVerbal].
  RejectAutoVerbalProvider(
    int autoVerbalId,
  ) : this._internal(
          () => RejectAutoVerbal()..autoVerbalId = autoVerbalId,
          from: rejectAutoVerbalProvider,
          name: r'rejectAutoVerbalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rejectAutoVerbalHash,
          dependencies: RejectAutoVerbalFamily._dependencies,
          allTransitiveDependencies:
              RejectAutoVerbalFamily._allTransitiveDependencies,
          autoVerbalId: autoVerbalId,
        );

  RejectAutoVerbalProvider._internal(
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
    covariant RejectAutoVerbal notifier,
  ) {
    return notifier.build(
      autoVerbalId,
    );
  }

  @override
  Override overrideWith(RejectAutoVerbal Function() create) {
    return ProviderOverride(
      origin: this,
      override: RejectAutoVerbalProvider._internal(
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
  AutoDisposeNotifierProviderElement<RejectAutoVerbal, ProviderStatus<void>>
      createElement() {
    return _RejectAutoVerbalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RejectAutoVerbalProvider &&
        other.autoVerbalId == autoVerbalId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, autoVerbalId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RejectAutoVerbalRef
    on AutoDisposeNotifierProviderRef<ProviderStatus<void>> {
  /// The parameter `autoVerbalId` of this provider.
  int get autoVerbalId;
}

class _RejectAutoVerbalProviderElement
    extends AutoDisposeNotifierProviderElement<RejectAutoVerbal,
        ProviderStatus<void>> with RejectAutoVerbalRef {
  _RejectAutoVerbalProviderElement(super.provider);

  @override
  int get autoVerbalId => (origin as RejectAutoVerbalProvider).autoVerbalId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
