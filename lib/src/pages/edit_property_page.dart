// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types, avoid_print, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps, equal_keys_in_map, unrelated_type_equality_checks, body_might_complete_normally_nullable, unused_element, await_only_futures, unnecessary_string_interpolations, unnecessary_cast, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_is_empty, unnecessary_null_comparison, unused_local_variable, unused_catch_clause, depend_on_referenced_packages, use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers
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

class EditPropertyPage extends HookConsumerWidget {
  EditPropertyPage({super.key, required this.initial});

  final PropertyModel initial;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UpdatePropertyFormWidget(
      initial: initial,
      builder: (ref, formKey, status, isProgressing, failure, submit) {
        return AuthWrapperWidget(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Edit Property'),
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
                    child: isProgressing ? Text('SAVING') : Text('RESUMIT'),
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
                    _ImagePicker(),
                    SizedBox(
                      height: 10,
                    ),
                    UpdatePropertyLatitudeFieldWidget(
                      builder: (ref, latitude, changeLatitude, showValidation) {
                        return UpdatePropertyLongitudeFieldWidget(
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
                    SizedBox(
                      height: 5,
                    ),
                    UpdatePropertyProvinceFieldWidget(
                      builder: (ref, province, changeProvince, showValidation) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
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
                    SizedBox(
                      height: 5,
                    ),
                    UpdatePropertyPropertyTypeFieldWidget(
                      builder: (
                        ref,
                        propertyType,
                        changePropertyType,
                        showValidation,
                      ) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: PropertyTypeDropDown(
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
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          UpdatePropertyPriceFieldWidget(
                            builder: (ref, price, changePrice, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: price.toString(),
                                  onChanged: (value) {
                                    changePrice(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Price',
                                    labelText: 'Price',
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
                                      borderSide: BorderSide(
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
                          SizedBox(
                            width: 10,
                          ),
                          UpdatePropertySqmFieldWidget(
                            builder: (ref, sqm, changeSqm, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: sqm.toString(),
                                  onChanged: (value) {
                                    changeSqm(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Sqm*',
                                    labelText: 'Sqm',
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
                                      borderSide: BorderSide(
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
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          UpdatePropertyBedroomsFieldWidget(
                            builder: (ref, bed, changeBed, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: bed.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBed(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'bed',
                                    labelText: 'Bed',
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
                                      borderSide: BorderSide(
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
                          SizedBox(
                            width: 10,
                          ),
                          UpdatePropertyBathroomsFieldWidget(
                            builder: (ref, bath, changeBath, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: bath.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBath(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'bath',
                                    labelText: 'Bath',
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
                                      borderSide: BorderSide(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Text('Size Land*'),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27.0),
                            child: UpdatePropertyLandLengthFieldWidget(
                              builder: (
                                ref,
                                landLength,
                                changeLandLength,
                                showValidation,
                              ) {
                                return Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    initialValue: landLength.toString(),
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                                      hintText: 'L',
                                      labelText: 'L',
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
                                        borderSide: BorderSide(
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
                          SizedBox(
                            width: 10,
                          ),
                          UpdatePropertyLandWidthFieldWidget(
                            builder: (
                              ref,
                              landWidth,
                              changeLandWidth,
                              showValidation,
                            ) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextFormField(
                                  initialValue: landWidth.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    labelText: 'W',
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
                                      borderSide: BorderSide(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Text('Size Building'),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 27.0),
                            child: UpdatePropertyBuildingLengthFieldWidget(
                              builder: (
                                ref,
                                buildingLength,
                                changeBuildingLength,
                                showValidation,
                              ) {
                                return Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: TextFormField(
                                    initialValue: buildingLength.toString(),
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                                      hintText: 'L',
                                      labelText: 'L',
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
                                        borderSide: BorderSide(
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
                          SizedBox(
                            width: 10,
                          ),
                          UpdatePropertyBuildingWidthFieldWidget(
                            builder: (
                              ref,
                              buildingWidth,
                              changeBuildingWidth,
                              showValidation,
                            ) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: TextFormField(
                                  initialValue: buildingWidth.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    hintText: 'W',
                                    labelText: 'W',
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
                                      borderSide: BorderSide(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          UpdatePropertyFloorsFieldWidget(
                            builder: (ref, floors, changeFloors, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: floors.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeFloors(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    labelText: 'Floor',
                                    prefixIcon: Icon(
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
                                      borderSide: BorderSide(
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
                          SizedBox(
                            width: 10,
                          ),
                          UpdatePropertyParkingFieldWidget(
                            builder: (ref, parking, changeParking, showValidation) {
                              return Expanded(
                                child: TextFormField(
                                  initialValue: parking.toString(),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeParking(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    labelText: 'Parking',
                                    prefixIcon: Icon(
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
                                      borderSide: BorderSide(
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
                    UpdatePropertyLivingRoomsFieldWidget(
                      builder: (
                        ref,
                        livingRooms,
                        changeLivingRooms,
                        showValidation,
                      ) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  initialValue: livingRooms.toString(),
                                  onChanged: (value) {
                                    changeLivingRooms(int.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'LivingRoom',
                                    labelText: 'LivingRoom',
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
                                      borderSide: BorderSide(
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
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: UpdatePropertyPropertyListingTypeFieldWidget(
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
                                            "For " + value.name.capitalize(),
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              height: 1,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: kImageColor,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
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
                                      borderSide: BorderSide(
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
                    UpdatePropertyTitleFieldWidget(
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
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
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
                              decoration: InputDecoration.collapsed(
                                hintText: 'Title',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    UpdatePropertyDescriptionFieldWidget(
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
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
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
                              decoration: InputDecoration.collapsed(
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

    return UpdatePropertyExistingImageUrlsFieldWidget(
      builder: (ref, existingImageUrls, changeExistingImageUrls, showValidation) {
        return UpdatePropertyNewImageFilesFieldWidget(
          builder: (ref, imageFiles, changeImageFiles, showValidation) {
            final hasImage = imageFiles.isNotEmpty || existingImageUrls.isNotEmpty;
            final imagePaths = existingImageUrls.addAll(imageFiles.map((e) => e.path).toList());

            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30).copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  height: 200,
                  width: double.infinity,
                  child: !hasImage
                      ? InkWell(
                          onTap: () async {
                            await _pickImages(
                              pageController,
                              imageFiles,
                              changeImageFiles,
                            );
                          },
                          child: Container(
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
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) {
                                final path = imagePaths[index];

                                final isUrl = path.startsWith('http');

                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: isUrl
                                      ? Image.network(
                                          path,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.file(
                                          File(path),
                                          fit: BoxFit.cover,
                                        ),
                                );
                              },
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  '${currentImageIndex.value + 1}/${imageFiles.length}',
                                  style: TextStyle(
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
                                  final path = imagePaths[index];
                                  final isUrl = path.startsWith('http');

                                  if (isUrl) {
                                    changeExistingImageUrls(
                                      existingImageUrls.removeAt(index),
                                    );
                                  } else {
                                    changeImageFiles(
                                      imageFiles.removeAt(index),
                                    );
                                  }

                                  if (index > 0) {
                                    pageController.jumpToPage(index - 1);
                                  } else {
                                    if (imageFiles.length > 0) {
                                      pageController.jumpToPage(index + 1);
                                    }
                                  }
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                if (hasImage) ...[
                  TextButton.icon(
                    onPressed: () async {
                      await _pickImages(
                        pageController,
                        imageFiles,
                        changeImageFiles,
                      );
                    },
                    icon: Icon(Icons.add),
                    label: Text('Add more image'),
                  ),
                ],
              ],
            );
          },
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
      if (results == null || results.isEmpty) return;

      final newList = images.addAll(results);
      changeImageFiles(newList);
      pageController.jumpToPage(newList.length);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
