// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_provider.dart';

// **************************************************************************
// KimappFormGenerator
// **************************************************************************

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$InsertPropertyForm on _$InsertProperty {
  void onPropertyListingTypeChanged(
          PropertyListingType newPropertyListingType) =>
      state = state.copyWith(propertyListingType: newPropertyListingType);
  void onImageFilesChanged(IList<XFile> newImageFiles) =>
      state = state.copyWith(imageFiles: newImageFiles);
  void onProvinceChanged(ProvinceModel? newProvince) =>
      state = state.copyWith(province: newProvince);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onTitleChanged(String newTitle) =>
      state = state.copyWith(title: newTitle);
  void onDescriptionChanged(String newDescription) =>
      state = state.copyWith(description: newDescription);
  void onLongitudeChanged(double newLongitude) =>
      state = state.copyWith(longitude: newLongitude);
  void onLatitudeChanged(double newLatitude) =>
      state = state.copyWith(latitude: newLatitude);
  void onPriceChanged(double newPrice) =>
      state = state.copyWith(price: newPrice);
  void onSqmChanged(double newSqm) => state = state.copyWith(sqm: newSqm);
  void onBedroomsChanged(int newBedrooms) =>
      state = state.copyWith(bedrooms: newBedrooms);
  void onBathroomsChanged(int newBathrooms) =>
      state = state.copyWith(bathrooms: newBathrooms);
  void onFloorsChanged(int newFloors) =>
      state = state.copyWith(floors: newFloors);
  void onParkingChanged(int newParking) =>
      state = state.copyWith(parking: newParking);
  void onPricePerSqmChanged(double newPricePerSqm) =>
      state = state.copyWith(pricePerSqm: newPricePerSqm);
  void onLivingRoomsChanged(int newLivingRooms) =>
      state = state.copyWith(livingRooms: newLivingRooms);
  void onLandLengthChanged(double newLandLength) =>
      state = state.copyWith(landLength: newLandLength);
  void onLandWidthChanged(double newLandWidth) =>
      state = state.copyWith(landWidth: newLandWidth);
  void onBuildingLengthChanged(double newBuildingLength) =>
      state = state.copyWith(buildingLength: newBuildingLength);
  void onBuildingWidthChanged(double newBuildingWidth) =>
      state = state.copyWith(buildingWidth: newBuildingWidth);
}

bool _debugCheckHasInsertPropertyFormWidget(BuildContext context) {
  assert(() {
    if (context.widget is! InsertPropertyFormWidget &&
        context.findAncestorWidgetOfExactType<InsertPropertyFormWidget>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No InsertPropertyFormWidget found'),
        ErrorDescription(
            '${context.widget.runtimeType} widgets require a InsertPropertyFormWidget widget ancestor.'),
      ]);
    }
    return true;
  }());
  return true;
}

typedef InsertPropertyFormChildBuilder = Widget Function(
  WidgetRef ref,
  GlobalKey<FormState> formKey,
  ProviderStatus<void> status,
  bool isProgressing,
  Failure? failure,
  Future<ProviderStatus<void>> Function() submit,
);

/// Base form widget for [InsertProperty] provider
///
/// It required to add this as parent widget of fields widget if [InsertProperty] is a family provider
/// , otherwise it's optional
class InsertPropertyFormWidget extends HookConsumerWidget {
  const InsertPropertyFormWidget({
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
  final InsertPropertyFormChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cachedFormKey = useMemoized(() => formKey ?? GlobalKey<FormState>());

    final status =
        ref.watch(insertPropertyProvider.select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller = ref.watch(insertPropertyProvider.notifier);

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

typedef InsertPropertyPropertyListingTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyListingType propertyListingType,
  void Function(PropertyListingType newPropertyListingType)
      changePropertyListingType,
  bool showValidation,
);

/// Widget form field for property [propertyListingType]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyPropertyListingTypeFieldWidget extends HookConsumerWidget {
  const InsertPropertyPropertyListingTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyPropertyListingTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state = ref.watch(
        insertPropertyProvider.select((value) => value.propertyListingType));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyListingTypeChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyImageFilesChildBuilder = Widget Function(
  WidgetRef ref,
  IList<XFile> imageFiles,
  void Function(IList<XFile> newImageFiles) changeImageFiles,
  bool showValidation,
);

/// Widget form field for property [imageFiles]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyImageFilesFieldWidget extends HookConsumerWidget {
  const InsertPropertyImageFilesFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyImageFilesChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.imageFiles));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onImageFilesChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyProvinceChildBuilder = Widget Function(
  WidgetRef ref,
  ProvinceModel? province,
  void Function(ProvinceModel? newProvince) changeProvince,
  bool showValidation,
);

/// Widget form field for property [province]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyProvinceFieldWidget extends HookConsumerWidget {
  const InsertPropertyProvinceFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyProvinceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.province));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onProvinceChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyPropertyTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyTypeModel? propertyType,
  void Function(PropertyTypeModel? newPropertyType) changePropertyType,
  bool showValidation,
);

/// Widget form field for property [propertyType]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyPropertyTypeFieldWidget extends HookConsumerWidget {
  const InsertPropertyPropertyTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyPropertyTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.propertyType));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyTypeChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyTitleChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String title,
  void Function(String newTitle) changeTitle,
  bool showValidation,
);

/// Widget form field for property [title]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyTitleFieldWidget extends HookConsumerWidget {
  const InsertPropertyTitleFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertPropertyTitleChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.title));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onTitleChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertPropertyProvider.select((value) => value.title),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onTitleChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyDescriptionChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String description,
  void Function(String newDescription) changeDescription,
  bool showValidation,
);

/// Widget form field for property [description]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyDescriptionFieldWidget extends HookConsumerWidget {
  const InsertPropertyDescriptionFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final InsertPropertyDescriptionChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.description));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onDescriptionChanged(textController.text));
      });
      return null;
    });

    ref.listen(insertPropertyProvider.select((value) => value.description),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onDescriptionChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyLongitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double longitude,
  void Function(double newLongitude) changeLongitude,
  bool showValidation,
);

/// Widget form field for property [longitude]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyLongitudeFieldWidget extends HookConsumerWidget {
  const InsertPropertyLongitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyLongitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.longitude));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLongitudeChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyLatitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double latitude,
  void Function(double newLatitude) changeLatitude,
  bool showValidation,
);

/// Widget form field for property [latitude]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyLatitudeFieldWidget extends HookConsumerWidget {
  const InsertPropertyLatitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyLatitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.latitude));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLatitudeChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyPriceChildBuilder = Widget Function(
  WidgetRef ref,
  double price,
  void Function(double newPrice) changePrice,
  bool showValidation,
);

/// Widget form field for property [price]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyPriceFieldWidget extends HookConsumerWidget {
  const InsertPropertyPriceFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyPriceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.price));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPriceChanged,
      showValidation,
    );
  }
}

typedef InsertPropertySqmChildBuilder = Widget Function(
  WidgetRef ref,
  double sqm,
  void Function(double newSqm) changeSqm,
  bool showValidation,
);

/// Widget form field for property [sqm]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertySqmFieldWidget extends HookConsumerWidget {
  const InsertPropertySqmFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertySqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.sqm));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onSqmChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyBedroomsChildBuilder = Widget Function(
  WidgetRef ref,
  int bedrooms,
  void Function(int newBedrooms) changeBedrooms,
  bool showValidation,
);

/// Widget form field for property [bedrooms]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyBedroomsFieldWidget extends HookConsumerWidget {
  const InsertPropertyBedroomsFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyBedroomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.bedrooms));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBedroomsChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyBathroomsChildBuilder = Widget Function(
  WidgetRef ref,
  int bathrooms,
  void Function(int newBathrooms) changeBathrooms,
  bool showValidation,
);

/// Widget form field for property [bathrooms]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyBathroomsFieldWidget extends HookConsumerWidget {
  const InsertPropertyBathroomsFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyBathroomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.bathrooms));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBathroomsChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyFloorsChildBuilder = Widget Function(
  WidgetRef ref,
  int floors,
  void Function(int newFloors) changeFloors,
  bool showValidation,
);

/// Widget form field for property [floors]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyFloorsFieldWidget extends HookConsumerWidget {
  const InsertPropertyFloorsFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyFloorsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.floors));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onFloorsChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyParkingChildBuilder = Widget Function(
  WidgetRef ref,
  int parking,
  void Function(int newParking) changeParking,
  bool showValidation,
);

/// Widget form field for property [parking]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyParkingFieldWidget extends HookConsumerWidget {
  const InsertPropertyParkingFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyParkingChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.parking));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onParkingChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyPricePerSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double pricePerSqm,
  void Function(double newPricePerSqm) changePricePerSqm,
  bool showValidation,
);

/// Widget form field for property [pricePerSqm]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyPricePerSqmFieldWidget extends HookConsumerWidget {
  const InsertPropertyPricePerSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyPricePerSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.pricePerSqm));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPricePerSqmChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyLivingRoomsChildBuilder = Widget Function(
  WidgetRef ref,
  int livingRooms,
  void Function(int newLivingRooms) changeLivingRooms,
  bool showValidation,
);

/// Widget form field for property [livingRooms]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyLivingRoomsFieldWidget extends HookConsumerWidget {
  const InsertPropertyLivingRoomsFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyLivingRoomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.livingRooms));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLivingRoomsChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyLandLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double landLength,
  void Function(double newLandLength) changeLandLength,
  bool showValidation,
);

/// Widget form field for property [landLength]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyLandLengthFieldWidget extends HookConsumerWidget {
  const InsertPropertyLandLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyLandLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.landLength));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandLengthChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyLandWidthChildBuilder = Widget Function(
  WidgetRef ref,
  double landWidth,
  void Function(double newLandWidth) changeLandWidth,
  bool showValidation,
);

/// Widget form field for property [landWidth]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyLandWidthFieldWidget extends HookConsumerWidget {
  const InsertPropertyLandWidthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyLandWidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state =
        ref.watch(insertPropertyProvider.select((value) => value.landWidth));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandWidthChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyBuildingLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildingLength,
  void Function(double newBuildingLength) changeBuildingLength,
  bool showValidation,
);

/// Widget form field for property [buildingLength]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyBuildingLengthFieldWidget extends HookConsumerWidget {
  const InsertPropertyBuildingLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyBuildingLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state = ref
        .watch(insertPropertyProvider.select((value) => value.buildingLength));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingLengthChanged,
      showValidation,
    );
  }
}

typedef InsertPropertyBuildingWidthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildingWidth,
  void Function(double newBuildingWidth) changeBuildingWidth,
  bool showValidation,
);

/// Widget form field for property [buildingWidth]. To use this widget. You will need to add [InsertPropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class InsertPropertyBuildingWidthFieldWidget extends HookConsumerWidget {
  const InsertPropertyBuildingWidthFieldWidget({
    super.key,
    required this.builder,
  });
  final InsertPropertyBuildingWidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasInsertPropertyFormWidget(context));

    final notifier = ref.watch(insertPropertyProvider.notifier);
    final state = ref
        .watch(insertPropertyProvider.select((value) => value.buildingWidth));

    final showValidation = ref.watch(
        insertPropertyProvider.select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingWidthChanged,
      showValidation,
    );
  }
}

/// Mixin use for update properties. You will need to add this mixin to provider in order to make it work
mixin _$UpdatePropertyForm on _$UpdateProperty {
  void onPropertyListingTypeChanged(
          PropertyListingType newPropertyListingType) =>
      state = state.copyWith(propertyListingType: newPropertyListingType);
  void onNewImageFilesChanged(IList<XFile> newNewImageFiles) =>
      state = state.copyWith(newImageFiles: newNewImageFiles);
  void onExistingImageUrlsChanged(IList<String> newExistingImageUrls) =>
      state = state.copyWith(existingImageUrls: newExistingImageUrls);
  void onProvinceChanged(ProvinceModel? newProvince) =>
      state = state.copyWith(province: newProvince);
  void onPropertyTypeChanged(PropertyTypeModel? newPropertyType) =>
      state = state.copyWith(propertyType: newPropertyType);
  void onTitleChanged(String newTitle) =>
      state = state.copyWith(title: newTitle);
  void onDescriptionChanged(String newDescription) =>
      state = state.copyWith(description: newDescription);
  void onLongitudeChanged(double newLongitude) =>
      state = state.copyWith(longitude: newLongitude);
  void onLatitudeChanged(double newLatitude) =>
      state = state.copyWith(latitude: newLatitude);
  void onPriceChanged(double newPrice) =>
      state = state.copyWith(price: newPrice);
  void onSqmChanged(double newSqm) => state = state.copyWith(sqm: newSqm);
  void onBedroomsChanged(int newBedrooms) =>
      state = state.copyWith(bedrooms: newBedrooms);
  void onBathroomsChanged(int newBathrooms) =>
      state = state.copyWith(bathrooms: newBathrooms);
  void onFloorsChanged(int newFloors) =>
      state = state.copyWith(floors: newFloors);
  void onParkingChanged(int newParking) =>
      state = state.copyWith(parking: newParking);
  void onPricePerSqmChanged(double newPricePerSqm) =>
      state = state.copyWith(pricePerSqm: newPricePerSqm);
  void onLivingRoomsChanged(int newLivingRooms) =>
      state = state.copyWith(livingRooms: newLivingRooms);
  void onLandLengthChanged(double newLandLength) =>
      state = state.copyWith(landLength: newLandLength);
  void onLandWidthChanged(double newLandWidth) =>
      state = state.copyWith(landWidth: newLandWidth);
  void onBuildingLengthChanged(double newBuildingLength) =>
      state = state.copyWith(buildingLength: newBuildingLength);
  void onBuildingWidthChanged(double newBuildingWidth) =>
      state = state.copyWith(buildingWidth: newBuildingWidth);
}

class _UpdatePropertyFamilyParam {
  final PropertyModel initial;

  const _UpdatePropertyFamilyParam({required this.initial});

  @override
  bool operator ==(covariant _UpdatePropertyFamilyParam other) {
    if (identical(this, other)) return true;

    return other.initial == initial;
  }

  @override
  int get hashCode => initial.hashCode;
}

bool _debugCheckHasUpdatePropertyFormWidget(BuildContext context) {
  assert(() {
    if (context.widget is! UpdatePropertyFormWidget &&
        context.findAncestorWidgetOfExactType<UpdatePropertyFormWidget>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No UpdatePropertyFormWidget found'),
        ErrorDescription(
            '${context.widget.runtimeType} widgets require a UpdatePropertyFormWidget widget ancestor.'),
      ]);
    }
    return true;
  }());
  return true;
}

typedef UpdatePropertyFormChildBuilder = Widget Function(
  WidgetRef ref,
  GlobalKey<FormState> formKey,
  ProviderStatus<void> status,
  bool isProgressing,
  Failure? failure,
  Future<ProviderStatus<void>> Function() submit,
);

/// Base form widget for [UpdateProperty] provider
///
/// It required to add this as parent widget of fields widget if [UpdateProperty] is a family provider
/// , otherwise it's optional
class UpdatePropertyFormWidget extends HookConsumerWidget {
  const UpdatePropertyFormWidget({
    super.key,
    this.formKey,
    required this.initial,
    required this.builder,
  });

  /// Form key. If null it will be created by widget
  final GlobalKey<FormState>? formKey;

  final PropertyModel initial;

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
  final UpdatePropertyFormChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cachedFormKey = useMemoized(() => formKey ?? GlobalKey<FormState>());
    final family = _UpdatePropertyFamilyParam(initial: initial);

    final status = ref.watch(
        updatePropertyProvider(family.initial).select((value) => value.status));
    final isProgressing = status.isInProgress;
    final failure = status.failure;
    final controller =
        ref.watch(updatePropertyProvider(family.initial).notifier);

    return ProviderScope(
      overrides: [_updatePropertyFamilyParamProvider.overrideWithValue(family)],
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
final _updatePropertyFamilyParamProvider =
    Provider<_UpdatePropertyFamilyParam>((ref) {
  throw 'You need to add [UpdatePropertyFormWidget] as your parent. This allow to internal override family provider param';
});

typedef UpdatePropertyPropertyListingTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyListingType propertyListingType,
  void Function(PropertyListingType newPropertyListingType)
      changePropertyListingType,
  bool showValidation,
);

/// Widget form field for property [propertyListingType]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyPropertyListingTypeFieldWidget extends HookConsumerWidget {
  const UpdatePropertyPropertyListingTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyPropertyListingTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.propertyListingType));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyListingTypeChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyNewImageFilesChildBuilder = Widget Function(
  WidgetRef ref,
  IList<XFile> newImageFiles,
  void Function(IList<XFile> newNewImageFiles) changeNewImageFiles,
  bool showValidation,
);

/// Widget form field for property [newImageFiles]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyNewImageFilesFieldWidget extends HookConsumerWidget {
  const UpdatePropertyNewImageFilesFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyNewImageFilesChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.newImageFiles));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onNewImageFilesChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyExistingImageUrlsChildBuilder = Widget Function(
  WidgetRef ref,
  IList<String> existingImageUrls,
  void Function(IList<String> newExistingImageUrls) changeExistingImageUrls,
  bool showValidation,
);

/// Widget form field for property [existingImageUrls]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyExistingImageUrlsFieldWidget extends HookConsumerWidget {
  const UpdatePropertyExistingImageUrlsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyExistingImageUrlsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.existingImageUrls));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onExistingImageUrlsChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyProvinceChildBuilder = Widget Function(
  WidgetRef ref,
  ProvinceModel? province,
  void Function(ProvinceModel? newProvince) changeProvince,
  bool showValidation,
);

/// Widget form field for property [province]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyProvinceFieldWidget extends HookConsumerWidget {
  const UpdatePropertyProvinceFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyProvinceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.province));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onProvinceChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyPropertyTypeChildBuilder = Widget Function(
  WidgetRef ref,
  PropertyTypeModel? propertyType,
  void Function(PropertyTypeModel? newPropertyType) changePropertyType,
  bool showValidation,
);

/// Widget form field for property [propertyType]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyPropertyTypeFieldWidget extends HookConsumerWidget {
  const UpdatePropertyPropertyTypeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyPropertyTypeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.propertyType));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPropertyTypeChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyTitleChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String title,
  void Function(String newTitle) changeTitle,
  bool showValidation,
);

/// Widget form field for property [title]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyTitleFieldWidget extends HookConsumerWidget {
  const UpdatePropertyTitleFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdatePropertyTitleChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(
        updatePropertyProvider(family.initial).select((value) => value.title));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(() => notifier.onTitleChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updatePropertyProvider(family.initial).select((value) => value.title),
        (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onTitleChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyDescriptionChildBuilder = Widget Function(
  WidgetRef ref,
  TextEditingController textController,
  String description,
  void Function(String newDescription) changeDescription,
  bool showValidation,
);

/// Widget form field for property [description]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyDescriptionFieldWidget extends HookConsumerWidget {
  const UpdatePropertyDescriptionFieldWidget({
    super.key,
    this.controller,
    required this.builder,
  });
  final UpdatePropertyDescriptionChildBuilder builder;

  /// TextEditingController of text field widget. If null it will create by widget
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.description));
    final textController = controller ?? useTextEditingController(text: state);
    useMemoized(() {
      textController.addListener(() {
        Future.microtask(
            () => notifier.onDescriptionChanged(textController.text));
      });
      return null;
    });

    ref.listen(
        updatePropertyProvider(family.initial)
            .select((value) => value.description), (previous, current) {
      if (previous != current) {
        if (current != textController.text) {
          Future.microtask(() => textController.text = current);
        }
      }
    });

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      textController,
      state,
      notifier.onDescriptionChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyLongitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double longitude,
  void Function(double newLongitude) changeLongitude,
  bool showValidation,
);

/// Widget form field for property [longitude]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyLongitudeFieldWidget extends HookConsumerWidget {
  const UpdatePropertyLongitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyLongitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.longitude));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLongitudeChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyLatitudeChildBuilder = Widget Function(
  WidgetRef ref,
  double latitude,
  void Function(double newLatitude) changeLatitude,
  bool showValidation,
);

/// Widget form field for property [latitude]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyLatitudeFieldWidget extends HookConsumerWidget {
  const UpdatePropertyLatitudeFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyLatitudeChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.latitude));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLatitudeChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyPriceChildBuilder = Widget Function(
  WidgetRef ref,
  double price,
  void Function(double newPrice) changePrice,
  bool showValidation,
);

/// Widget form field for property [price]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyPriceFieldWidget extends HookConsumerWidget {
  const UpdatePropertyPriceFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyPriceChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(
        updatePropertyProvider(family.initial).select((value) => value.price));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPriceChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertySqmChildBuilder = Widget Function(
  WidgetRef ref,
  double sqm,
  void Function(double newSqm) changeSqm,
  bool showValidation,
);

/// Widget form field for property [sqm]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertySqmFieldWidget extends HookConsumerWidget {
  const UpdatePropertySqmFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertySqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(
        updatePropertyProvider(family.initial).select((value) => value.sqm));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onSqmChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyBedroomsChildBuilder = Widget Function(
  WidgetRef ref,
  int bedrooms,
  void Function(int newBedrooms) changeBedrooms,
  bool showValidation,
);

/// Widget form field for property [bedrooms]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyBedroomsFieldWidget extends HookConsumerWidget {
  const UpdatePropertyBedroomsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyBedroomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.bedrooms));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBedroomsChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyBathroomsChildBuilder = Widget Function(
  WidgetRef ref,
  int bathrooms,
  void Function(int newBathrooms) changeBathrooms,
  bool showValidation,
);

/// Widget form field for property [bathrooms]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyBathroomsFieldWidget extends HookConsumerWidget {
  const UpdatePropertyBathroomsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyBathroomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.bathrooms));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBathroomsChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyFloorsChildBuilder = Widget Function(
  WidgetRef ref,
  int floors,
  void Function(int newFloors) changeFloors,
  bool showValidation,
);

/// Widget form field for property [floors]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyFloorsFieldWidget extends HookConsumerWidget {
  const UpdatePropertyFloorsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyFloorsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(
        updatePropertyProvider(family.initial).select((value) => value.floors));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onFloorsChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyParkingChildBuilder = Widget Function(
  WidgetRef ref,
  int parking,
  void Function(int newParking) changeParking,
  bool showValidation,
);

/// Widget form field for property [parking]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyParkingFieldWidget extends HookConsumerWidget {
  const UpdatePropertyParkingFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyParkingChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.parking));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onParkingChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyPricePerSqmChildBuilder = Widget Function(
  WidgetRef ref,
  double pricePerSqm,
  void Function(double newPricePerSqm) changePricePerSqm,
  bool showValidation,
);

/// Widget form field for property [pricePerSqm]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyPricePerSqmFieldWidget extends HookConsumerWidget {
  const UpdatePropertyPricePerSqmFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyPricePerSqmChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.pricePerSqm));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onPricePerSqmChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyLivingRoomsChildBuilder = Widget Function(
  WidgetRef ref,
  int livingRooms,
  void Function(int newLivingRooms) changeLivingRooms,
  bool showValidation,
);

/// Widget form field for property [livingRooms]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyLivingRoomsFieldWidget extends HookConsumerWidget {
  const UpdatePropertyLivingRoomsFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyLivingRoomsChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.livingRooms));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLivingRoomsChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyLandLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double landLength,
  void Function(double newLandLength) changeLandLength,
  bool showValidation,
);

/// Widget form field for property [landLength]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyLandLengthFieldWidget extends HookConsumerWidget {
  const UpdatePropertyLandLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyLandLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.landLength));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandLengthChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyLandWidthChildBuilder = Widget Function(
  WidgetRef ref,
  double landWidth,
  void Function(double newLandWidth) changeLandWidth,
  bool showValidation,
);

/// Widget form field for property [landWidth]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyLandWidthFieldWidget extends HookConsumerWidget {
  const UpdatePropertyLandWidthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyLandWidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.landWidth));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onLandWidthChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyBuildingLengthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildingLength,
  void Function(double newBuildingLength) changeBuildingLength,
  bool showValidation,
);

/// Widget form field for property [buildingLength]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyBuildingLengthFieldWidget extends HookConsumerWidget {
  const UpdatePropertyBuildingLengthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyBuildingLengthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.buildingLength));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingLengthChanged,
      showValidation,
    );
  }
}

typedef UpdatePropertyBuildingWidthChildBuilder = Widget Function(
  WidgetRef ref,
  double buildingWidth,
  void Function(double newBuildingWidth) changeBuildingWidth,
  bool showValidation,
);

/// Widget form field for property [buildingWidth]. To use this widget. You will need to add [UpdatePropertyFormWidget] widget as ancestor
/// otherwise assert error will be thrown
class UpdatePropertyBuildingWidthFieldWidget extends HookConsumerWidget {
  const UpdatePropertyBuildingWidthFieldWidget({
    super.key,
    required this.builder,
  });
  final UpdatePropertyBuildingWidthChildBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(_debugCheckHasUpdatePropertyFormWidget(context));
    final family = ref.watch(_updatePropertyFamilyParamProvider);
    final notifier = ref.watch(updatePropertyProvider(family.initial).notifier);
    final state = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.buildingWidth));

    final showValidation = ref.watch(updatePropertyProvider(family.initial)
        .select((value) => value.status.isFailure));
    return builder(
      ref,
      state,
      notifier.onBuildingWidthChanged,
      showValidation,
    );
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertyListHash() => r'50daece1690f02603d0db67c46dfb5c36f882895';

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

/// See also [propertyList].
@ProviderFor(propertyList)
const propertyListProvider = PropertyListFamily();

/// See also [propertyList].
class PropertyListFamily extends Family<AsyncValue<IList<PropertyModel>>> {
  /// See also [propertyList].
  const PropertyListFamily();

  /// See also [propertyList].
  PropertyListProvider call({
    required int page,
    PropertyListFilter? filter,
  }) {
    return PropertyListProvider(
      page: page,
      filter: filter,
    );
  }

  @override
  PropertyListProvider getProviderOverride(
    covariant PropertyListProvider provider,
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
  String? get name => r'propertyListProvider';
}

/// See also [propertyList].
class PropertyListProvider
    extends AutoDisposeFutureProvider<IList<PropertyModel>> {
  /// See also [propertyList].
  PropertyListProvider({
    required int page,
    PropertyListFilter? filter,
  }) : this._internal(
          (ref) => propertyList(
            ref as PropertyListRef,
            page: page,
            filter: filter,
          ),
          from: propertyListProvider,
          name: r'propertyListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyListHash,
          dependencies: PropertyListFamily._dependencies,
          allTransitiveDependencies:
              PropertyListFamily._allTransitiveDependencies,
          page: page,
          filter: filter,
        );

  PropertyListProvider._internal(
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
  final PropertyListFilter? filter;

  @override
  Override overrideWith(
    FutureOr<IList<PropertyModel>> Function(PropertyListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyListProvider._internal(
        (ref) => create(ref as PropertyListRef),
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
  AutoDisposeFutureProviderElement<IList<PropertyModel>> createElement() {
    return _PropertyListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyListProvider &&
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

mixin PropertyListRef on AutoDisposeFutureProviderRef<IList<PropertyModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `filter` of this provider.
  PropertyListFilter? get filter;
}

class _PropertyListProviderElement
    extends AutoDisposeFutureProviderElement<IList<PropertyModel>>
    with PropertyListRef {
  _PropertyListProviderElement(super.provider);

  @override
  int get page => (origin as PropertyListProvider).page;
  @override
  PropertyListFilter? get filter => (origin as PropertyListProvider).filter;
}

String _$propertyAtIndexHash() => r'00b00c63b489539ebdbed463319c85dd5b77a15d';

/// See also [propertyAtIndex].
@ProviderFor(propertyAtIndex)
const propertyAtIndexProvider = PropertyAtIndexFamily();

/// See also [propertyAtIndex].
class PropertyAtIndexFamily extends Family<PaginatedItem<PropertyModel>?> {
  /// See also [propertyAtIndex].
  const PropertyAtIndexFamily();

  /// See also [propertyAtIndex].
  PropertyAtIndexProvider call({
    required int index,
    PropertyListFilter? filter,
  }) {
    return PropertyAtIndexProvider(
      index: index,
      filter: filter,
    );
  }

  @override
  PropertyAtIndexProvider getProviderOverride(
    covariant PropertyAtIndexProvider provider,
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
  String? get name => r'propertyAtIndexProvider';
}

/// See also [propertyAtIndex].
class PropertyAtIndexProvider
    extends AutoDisposeProvider<PaginatedItem<PropertyModel>?> {
  /// See also [propertyAtIndex].
  PropertyAtIndexProvider({
    required int index,
    PropertyListFilter? filter,
  }) : this._internal(
          (ref) => propertyAtIndex(
            ref as PropertyAtIndexRef,
            index: index,
            filter: filter,
          ),
          from: propertyAtIndexProvider,
          name: r'propertyAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyAtIndexHash,
          dependencies: PropertyAtIndexFamily._dependencies,
          allTransitiveDependencies:
              PropertyAtIndexFamily._allTransitiveDependencies,
          index: index,
          filter: filter,
        );

  PropertyAtIndexProvider._internal(
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
  final PropertyListFilter? filter;

  @override
  Override overrideWith(
    PaginatedItem<PropertyModel>? Function(PropertyAtIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PropertyAtIndexProvider._internal(
        (ref) => create(ref as PropertyAtIndexRef),
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
  AutoDisposeProviderElement<PaginatedItem<PropertyModel>?> createElement() {
    return _PropertyAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyAtIndexProvider &&
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

mixin PropertyAtIndexRef
    on AutoDisposeProviderRef<PaginatedItem<PropertyModel>?> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `filter` of this provider.
  PropertyListFilter? get filter;
}

class _PropertyAtIndexProviderElement
    extends AutoDisposeProviderElement<PaginatedItem<PropertyModel>?>
    with PropertyAtIndexRef {
  _PropertyAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as PropertyAtIndexProvider).index;
  @override
  PropertyListFilter? get filter => (origin as PropertyAtIndexProvider).filter;
}

String _$insertPropertyHash() => r'9063ebc5ccde9b895fc6d75059eaad103e57c067';

/// See also [InsertProperty].
@ProviderFor(InsertProperty)
final insertPropertyProvider =
    AutoDisposeNotifierProvider<InsertProperty, InsertPropertyState>.internal(
  InsertProperty.new,
  name: r'insertPropertyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$insertPropertyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InsertProperty = AutoDisposeNotifier<InsertPropertyState>;
String _$updatePropertyHash() => r'6b78b66ab49f16d311ab5d8700813e6dc9a4ec5a';

abstract class _$UpdateProperty
    extends BuildlessAutoDisposeNotifier<UpdatePropertyState> {
  late final PropertyModel initial;

  UpdatePropertyState build(
    PropertyModel initial,
  );
}

/// See also [UpdateProperty].
@ProviderFor(UpdateProperty)
const updatePropertyProvider = UpdatePropertyFamily();

/// See also [UpdateProperty].
class UpdatePropertyFamily extends Family<UpdatePropertyState> {
  /// See also [UpdateProperty].
  const UpdatePropertyFamily();

  /// See also [UpdateProperty].
  UpdatePropertyProvider call(
    PropertyModel initial,
  ) {
    return UpdatePropertyProvider(
      initial,
    );
  }

  @override
  UpdatePropertyProvider getProviderOverride(
    covariant UpdatePropertyProvider provider,
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
  String? get name => r'updatePropertyProvider';
}

/// See also [UpdateProperty].
class UpdatePropertyProvider extends AutoDisposeNotifierProviderImpl<
    UpdateProperty, UpdatePropertyState> {
  /// See also [UpdateProperty].
  UpdatePropertyProvider(
    PropertyModel initial,
  ) : this._internal(
          () => UpdateProperty()..initial = initial,
          from: updatePropertyProvider,
          name: r'updatePropertyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatePropertyHash,
          dependencies: UpdatePropertyFamily._dependencies,
          allTransitiveDependencies:
              UpdatePropertyFamily._allTransitiveDependencies,
          initial: initial,
        );

  UpdatePropertyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initial,
  }) : super.internal();

  final PropertyModel initial;

  @override
  UpdatePropertyState runNotifierBuild(
    covariant UpdateProperty notifier,
  ) {
    return notifier.build(
      initial,
    );
  }

  @override
  Override overrideWith(UpdateProperty Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdatePropertyProvider._internal(
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
  AutoDisposeNotifierProviderElement<UpdateProperty, UpdatePropertyState>
      createElement() {
    return _UpdatePropertyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePropertyProvider && other.initial == initial;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initial.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdatePropertyRef on AutoDisposeNotifierProviderRef<UpdatePropertyState> {
  /// The parameter `initial` of this provider.
  PropertyModel get initial;
}

class _UpdatePropertyProviderElement extends AutoDisposeNotifierProviderElement<
    UpdateProperty, UpdatePropertyState> with UpdatePropertyRef {
  _UpdatePropertyProviderElement(super.provider);

  @override
  PropertyModel get initial => (origin as UpdatePropertyProvider).initial;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
