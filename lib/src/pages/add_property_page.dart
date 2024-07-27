import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/widgets/map_picker.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/province_dropdown.dart';

typedef OnChangeCallback = void Function(dynamic value);

class AddPropertyPage extends HookConsumerWidget {
  const AddPropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InsertPropertyFormWidget(
      builder: (ref, formKey, status, isProgressing, failure, submit) {
        return AuthWrapperWidget(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Add Property'),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GFButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        final close = BotToast.showLoading();
                        final result = await submit();
                        close();
                        if (result.isSuccess) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            animType: AnimType.rightSlide,
                            headerAnimationLoop: false,
                            title: 'Success',
                            btnOkIcon: Icons.cancel,
                            btnOkColor: Colors.green,
                            onDismissCallback: (type) {
                              if (context.mounted) {
                                Navigator.pop(context);
                              }
                            },
                          ).show();
                        } else {
                          log("Error", error: result);
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            animType: AnimType.rightSlide,
                            headerAnimationLoop: false,
                            title: 'Failed',
                            btnOkIcon: Icons.error,
                            btnOkColor: Colors.red,
                          ).show();
                        }
                      }
                    },
                    child: isProgressing ? const Text('SAVING') : const Text('SAVE'),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _ImagePicker(),
                    const SizedBox(
                      height: 10,
                    ),
                    InsertPropertyLatitudeFieldWidget(
                      builder: (ref, latitude, changeLatitude, showValidation) {
                        return InsertPropertyLongitudeFieldWidget(
                          builder: (
                            ref,
                            longitude,
                            changeLongitude,
                            showValidation,
                          ) {
                            final mapUrl =
                                "https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=18&size=1080x920&maptype=hybrid&markers=color:red%7C%7C$latitude,$longitude&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI";
                            return InkWell(
                              onTap: () async {
                                final result = await MapPickerPage.show(
                                  context,
                                  initialLat: latitude,
                                  initialLng: longitude,
                                );
                                if (result != null) {
                                  changeLatitude(result.latitude);
                                  changeLongitude(result.longitude);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30, left: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: MediaQuery.of(context).size.height * 0.3,
                                  width: MediaQuery.of(context).size.width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: FadeInImage.assetNetwork(
                                      fit: BoxFit.cover,
                                      placeholderFit: BoxFit.contain,
                                      placeholder: 'assets/earth.gif',
                                      image: mapUrl,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InsertPropertyProvinceFieldWidget(
                      builder: (ref, province, changeProvince, showValidation) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: ProvinceDropDown(
                              value: province,
                              onChanged: (value) {
                                changeProvince(value);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InsertPropertyPropertyTypeFieldWidget(
                      builder: (
                        ref,
                        propertyType,
                        changePropertyType,
                        showValidation,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: PropertyTypeDropDown(
                              prefixicon: const Icon(
                                Icons.app_registration_sharp,
                                color: Colors.green,
                                size: 30.0,
                              ),
                              value: propertyType,
                              onChanged: (value) {
                                changePropertyType(value);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          InsertPropertyPriceFieldWidget(
                            builder: (ref, price, changePrice, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  onChanged: (value) {
                                    changePrice(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Price',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InsertPropertySqmFieldWidget(
                            builder: (ref, sqm, changeSqm, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  onChanged: (value) {
                                    changeSqm(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Sqm*',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          InsertPropertyBedroomsFieldWidget(
                            builder: (ref, bed, changeBed, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBed(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'bed',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InsertPropertyBathroomsFieldWidget(
                            builder: (ref, bath, changeBath, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBath(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'bath',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Text('Size Land*'),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27.0),
                            child: InsertPropertyLandLengthFieldWidget(
                              builder: (
                                ref,
                                landLength,
                                changeLandLength,
                                showValidation,
                              ) {
                                return SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                      hintText: 'L',
                                      fillColor: kwhite,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: kPrimaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: kPrimaryColor,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      changeLandLength(double.parse(value));
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InsertPropertyLandWidthFieldWidget(
                            builder: (
                              ref,
                              landWidth,
                              changeLandWidth,
                              showValidation,
                            ) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    changeLandWidth(double.parse(value));
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Text('Size Building'),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27.0),
                            child: InsertPropertyBuildingLengthFieldWidget(
                              builder: (
                                ref,
                                buildingLength,
                                changeBuildingLength,
                                showValidation,
                              ) {
                                return SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                      hintText: 'L',
                                      fillColor: kwhite,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: kPrimaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: kPrimaryColor,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      changeBuildingLength(double.parse(value));
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InsertPropertyBuildingWidthFieldWidget(
                            builder: (
                              ref,
                              buildingWidth,
                              changeBuildingWidth,
                              showValidation,
                            ) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    changeBuildingWidth(double.parse(value));
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          InsertPropertyFloorsFieldWidget(
                            builder: (ref, floors, changeFloors, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeFloors(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'floor',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InsertPropertyParkingFieldWidget(
                            builder: (ref, parking, changeParking, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeParking(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'parking',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    InsertPropertyLivingRoomsFieldWidget(
                      builder: (
                        ref,
                        livingRooms,
                        changeLivingRooms,
                        showValidation,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  onChanged: (value) {
                                    changeLivingRooms(int.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'LivingRoom',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertPropertyPropertyListingTypeFieldWidget(
                              builder: (
                                ref,
                                propertyListingType,
                                changePropertyListingType,
                                showValidation,
                              ) {
                                return DropdownButtonFormField<PropertyListingType>(
                                  isExpanded: true,
                                  value: propertyListingType,
                                  items: PropertyListingType.values
                                      .map<DropdownMenuItem<PropertyListingType>>(
                                        (value) => DropdownMenuItem<PropertyListingType>(
                                          value: value,
                                          child: Text(
                                            "For ${value.name.capitalize()}",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              height: 1,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: kImageColor,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: const Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Type*',
                                    fillColor: kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    changePropertyListingType(value!);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    InsertPropertyTitleFieldWidget(
                      builder: (
                        ref,
                        textController,
                        title,
                        changeTitle,
                        showValidation,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: TextFormField(
                              controller: textController,
                              maxLines: 3,
                              decoration: const InputDecoration.collapsed(
                                hintText: 'Title',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    InsertPropertyDescriptionFieldWidget(
                      builder: (
                        ref,
                        textController,
                        description,
                        changeDescription,
                        showValidation,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: TextFormField(
                              controller: textController,
                              maxLines: 3,
                              decoration: const InputDecoration.collapsed(
                                hintText: 'Description',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ImagePicker extends HookWidget {
  const _ImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentImageIndex = useState(0);

    return InsertPropertyImageFilesFieldWidget(
      builder: (ref, imageFiles, changeImageFiles, showValidation) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30).copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
              ),
              height: 200,
              width: double.infinity,
              child: imageFiles.isEmpty
                  ? InkWell(
                      onTap: () async {
                        await _pickImages(
                          pageController,
                          imageFiles,
                          changeImageFiles,
                        );
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 78,
                              ),
                              Text('Add Image'),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Stack(
                      fit: StackFit.expand,
                      children: [
                        PageView.builder(
                          controller: pageController,
                          onPageChanged: (value) => currentImageIndex.value = value,
                          itemCount: imageFiles.length,
                          itemBuilder: (context, index) {
                            final xFile = imageFiles[index];

                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(xFile.path),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '${currentImageIndex.value + 1}/${imageFiles.length}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              final index = currentImageIndex.value;
                              changeImageFiles(imageFiles.removeAt(index));
                              if (index > 0) {
                                pageController.jumpToPage(index - 1);
                              } else {
                                if (imageFiles.isNotEmpty) {
                                  pageController.jumpToPage(index + 1);
                                }
                              }
                            },
                            icon: const Icon(
                              Icons.clear,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            if (imageFiles.isNotEmpty) ...[
              TextButton.icon(
                onPressed: () async {
                  await _pickImages(
                    pageController,
                    imageFiles,
                    changeImageFiles,
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Add more image'),
              ),
            ],
          ],
        );
      },
    );
  }

  Future<void> _pickImages(
    PageController pageController,
    IList<XFile> images,
    void Function(IList<XFile> newImageFiles) changeImageFiles,
  ) async {
    try {
      final results = await ImagePicker().pickMultiImage();
      if (results.isEmpty) return;

      final newList = images.addAll(results);
      changeImageFiles(newList);
      pageController.jumpToPage(newList.length);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
