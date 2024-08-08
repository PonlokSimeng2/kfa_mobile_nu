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
import 'package:kfa_mobile_nu/src/providers/theme_provider.dart';

typedef OnChangeCallback = void Function(dynamic value);

class AddPropertyPage extends HookConsumerWidget {
  const AddPropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

    return InsertPropertyFormWidget(
      builder: (ref, formKey, status, isProgressing, failure, submit) {
        return AuthWrapperWidget(
          child: Scaffold(
            backgroundColor: isDarkMode ? Colors.grey[900] : Colors.white,
            appBar: AppBar(
              backgroundColor: isDarkMode ? Colors.grey[800] : Colors.blue,
              title: Text(
                'Add Property',
                style:
                    TextStyle(color: isDarkMode ? Colors.white : Colors.black),
              ),
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
                    child: Text(
                      isProgressing ? 'SAVING' : 'SAVE',
                      style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                                padding:
                                    const EdgeInsets.only(right: 30, left: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
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
                          padding: const EdgeInsets.only(
                              right: 30, left: 30, top: 10),
                          child: Container(
                            child: ProvinceDropDown(
                              prefixicon: Icon(
                                Icons.app_registration_sharp,
                                color: isDarkMode ? Colors.white : Colors.green,
                                size: 30.0,
                              ),
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
                          padding: const EdgeInsets.only(
                              right: 30, left: 30, top: 10),
                          child: Container(
                            child: PropertyTypeDropDown(
                              prefixicon: Icon(
                                Icons.app_registration_sharp,
                                color: isDarkMode ? Colors.white : Colors.green,
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
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'Price',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'Sqm*',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          InsertPropertyBedroomsFieldWidget(
                            builder: (ref, bed, changeBed, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  onChanged: (value) {
                                    changeBed(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'bed',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  onChanged: (value) {
                                    changeBath(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'bath',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Text(
                        'Size Land*',
                        style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      fontWeight: FontWeight.bold,
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8),
                                      hintText: 'L',
                                      hintStyle: TextStyle(
                                        color: isDarkMode
                                            ? Colors.grey[400]
                                            : Colors.grey[600],
                                      ),
                                      fillColor: isDarkMode
                                          ? Colors.grey[800]
                                          : kwhite,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: isDarkMode
                                              ? Colors.white
                                              : kPrimaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: isDarkMode
                                              ? Colors.grey
                                              : kPrimaryColor,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Text(
                        'Size Building',
                        style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015,
                                      fontWeight: FontWeight.bold,
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8),
                                      hintText: 'L',
                                      hintStyle: TextStyle(
                                        color: isDarkMode
                                            ? Colors.grey[400]
                                            : Colors.grey[600],
                                      ),
                                      fillColor: isDarkMode
                                          ? Colors.grey[800]
                                          : kwhite,
                                      filled: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: isDarkMode
                                              ? Colors.white
                                              : kPrimaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: isDarkMode
                                              ? Colors.grey
                                              : kPrimaryColor,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          InsertPropertyFloorsFieldWidget(
                            builder:
                                (ref, floors, changeFloors, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  onChanged: (value) {
                                    changeFloors(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'floor',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                            builder:
                                (ref, parking, changeParking, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  onChanged: (value) {
                                    changeParking(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'parking',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                          padding: const EdgeInsets.only(
                              right: 30, left: 30, top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  onChanged: (value) {
                                    changeLivingRooms(int.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'LivingRoom',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
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
                      padding:
                          const EdgeInsets.only(right: 30, left: 30, top: 10),
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
                                return DropdownButtonFormField<
                                    PropertyListingType>(
                                  isExpanded: true,
                                  value: propertyListingType,
                                  items: PropertyListingType.values
                                      .map<
                                          DropdownMenuItem<
                                              PropertyListingType>>(
                                        (value) => DropdownMenuItem<
                                            PropertyListingType>(
                                          value: value,
                                          child: Text(
                                            "For ${value.name.capitalize()}",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              height: 1,
                                              color: isDarkMode
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color:
                                        isDarkMode ? Colors.white : kImageColor,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: isDarkMode
                                          ? Colors.white
                                          : kImageColor,
                                    ),
                                    hintText: 'Type*',
                                    hintStyle: TextStyle(
                                      color: isDarkMode
                                          ? Colors.grey[400]
                                          : Colors.grey[600],
                                    ),
                                    fillColor:
                                        isDarkMode ? Colors.grey[800] : kwhite,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: isDarkMode
                                            ? Colors.white
                                            : kPrimaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: isDarkMode
                                            ? Colors.grey
                                            : kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    changePropertyListingType(value!);
                                  },
                                  dropdownColor: isDarkMode
                                      ? Colors.grey[800]
                                      : Colors.white,
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
                              color:
                                  isDarkMode ? Colors.grey[800] : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isDarkMode ? Colors.grey : Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: TextFormField(
                              controller: textController,
                              maxLines: 3,
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                              decoration: InputDecoration.collapsed(
                                hintText: 'Title',
                                hintStyle: TextStyle(
                                  color: isDarkMode
                                      ? Colors.grey[400]
                                      : Colors.grey[600],
                                ),
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
                              color:
                                  isDarkMode ? Colors.grey[800] : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isDarkMode ? Colors.grey : Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: TextFormField(
                              controller: textController,
                              maxLines: 3,
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                              decoration: InputDecoration.collapsed(
                                hintText: 'Description',
                                hintStyle: TextStyle(
                                  color: isDarkMode
                                      ? Colors.grey[400]
                                      : Colors.grey[600],
                                ),
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

class _ImagePicker extends HookConsumerWidget {
  const _ImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final currentImageIndex = useState(0);
    final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;

    return InsertPropertyImageFilesFieldWidget(
      builder: (ref, imageFiles, changeImageFiles, showValidation) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30)
                  .copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] : kwhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: isDarkMode ? Colors.grey : Colors.black,
                ),
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
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 78,
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                              Text(
                                'Add Image',
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                ),
                              ),
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
                          onPageChanged: (value) =>
                              currentImageIndex.value = value,
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
                              color: isDarkMode ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '${currentImageIndex.value + 1}/${imageFiles.length}',
                              style: TextStyle(
                                color: isDarkMode ? Colors.black : Colors.white,
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
                            icon: Icon(
                              Icons.clear,
                              color: isDarkMode ? Colors.white : Colors.red,
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
                icon: Icon(
                  Icons.add,
                  color: isDarkMode ? Colors.white : Colors.blue,
                ),
                label: Text(
                  'Add more image',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.blue,
                  ),
                ),
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
