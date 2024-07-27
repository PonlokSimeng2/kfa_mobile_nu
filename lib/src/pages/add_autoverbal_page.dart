// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types, avoid_print, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps, equal_keys_in_map, unrelated_type_equality_checks, body_might_complete_normally_nullable, unused_element, await_only_futures, unnecessary_string_interpolations, unnecessary_cast, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_is_empty, unnecessary_null_comparison, unused_local_variable, unused_catch_clause, depend_on_referenced_packages, use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers
import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/widgets/bank_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/map_picker.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/province_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/road_dropdown.dart';

class AddAutoVerbalPage extends HookConsumerWidget {
  AddAutoVerbalPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InsertAutoVerbalFormWidget(
      builder: (ref, formKey, status, isProgressing, failure, submit) {
        return AuthWrapperWidget(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Add Auto Verbal'),
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
                    child: isProgressing ? Text('SAVING') : Text('SAVE'),
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
                    SizedBox(
                      height: 10,
                    ),
                    _ImagePicker(),
                    SizedBox(
                      height: 10,
                    ),
                    _LatLog(),
                    SizedBox(
                      height: 5,
                    ),
                    InsertAutoVerbalProvinceFieldWidget(
                      builder: (ref, province, changeProvince, showValidation) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: ProvinceDropDown(
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
                    InsertAutoVerbalPropertyTypeFieldWidget(
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
                          Expanded(
                            child: InsertAutoVerbalMinValueFieldWidget(
                              builder: (
                                ref,
                                minValue,
                                changeMinValue,
                                showValidation,
                              ) {
                                return TextFormField(
                                  onChanged: (value) {
                                    changeMinValue(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.brightness_1,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Min Value',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalMaxValueFieldWidget(
                              builder: (
                                ref,
                                maxValue,
                                changeMaxValue,
                                showValidation,
                              ) {
                                return TextFormField(
                                  onChanged: (value) {
                                    changeMaxValue(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.brightness_1,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Max Value',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 30,
                        left: 30,
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalOwnerNameFieldWidget(
                              builder: (
                                ref,
                                textController,
                                ownerName,
                                changeOwnerName,
                                showValidation,
                              ) {
                                return TextFormField(
                                  validator: (value) {
                                    if (textController == null || textController.text.isEmpty) {
                                      return 'Owner name is required';
                                    }
                                    return null;
                                  },
                                  controller: textController,
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeOwnerName(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.person_outline,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Owner',
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
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalOwnerPhoneFieldWidget(
                              builder: (
                                ref,
                                textController,
                                ownerPhone,
                                changeOwnerPhone,
                                showValidation,
                              ) {
                                return TextFormField(
                                  controller: textController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Owner phone is required';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeOwnerPhone(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.phone_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Contact',
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
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalBankOfficerNameFieldWidget(
                              builder: (
                                ref,
                                textController,
                                bankOfficerName,
                                changeBankOfficerName,
                                showValidation,
                              ) {
                                return TextFormField(
                                  controller: textController,
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBankOfficerName(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.person_outline,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Bank Officer',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalBankOfficerPhoneFieldWidget(
                              builder: (
                                ref,
                                textController,
                                bankOfficerPhone,
                                changeBankOfficerPhone,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBankOfficerPhone(value);
                                    print('value: $value');
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.phone_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Bank Contact',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    InsertAutoVerbalBankFieldWidget(
                      builder: (ref, bank, changeBank, showValidation) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: BankDropDown(
                              onChanged: (value) {
                                changeBank(value);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: InsertAutoVerbalBankBranchFieldWidget(
                        builder: (
                          ref,
                          textController,
                          bankBranch,
                          changeBankBranch,
                          showValidation,
                        ) {
                          return TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * 0.015,
                              fontWeight: FontWeight.bold,
                            ),
                            onChanged: (value) {
                              changeBankBranch(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              prefixIcon: Icon(
                                Icons.food_bank,
                                color: kImageColor,
                              ),
                              hintText: 'Bank Branch',
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
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalBuildinglengthFieldWidget(
                              builder: (
                                ref,
                                buildinglength,
                                changeBuildinglength,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBuildinglength(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Building Length',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalBuildingwidthFieldWidget(
                              builder: (
                                ref,
                                buildingwidth,
                                changeBuildingwidth,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBuildingwidth(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Building Width',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalLandlengthFieldWidget(
                              builder: (
                                ref,
                                landlength,
                                changeLandlength,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeLandlength(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Land Length',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalLandwidthFieldWidget(
                              builder: (
                                ref,
                                landwidth,
                                changeLandwidth,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeLandwidth(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Land Width',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalBedFieldWidget(
                              builder: (ref, bed, changeBed, showValidation) {
                                return TextFormField(
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
                                      Icons.bed,
                                      color: kImageColor,
                                    ),
                                    hintText: 'BedRoom',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalBathFieldWidget(
                              builder: (ref, bath, changeBath, showValidation) {
                                return TextFormField(
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
                                      Icons.bathroom,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Bath',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalLivingroomFieldWidget(
                              builder: (
                                ref,
                                livingRoom,
                                changeLivingRoom,
                                showValidation,
                              ) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeLivingRoom(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Living Room',
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
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InsertAutoVerbalFloorFieldWidget(
                              builder: (ref, floor, changeFloor, showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeFloor(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.food_bank,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Floor',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    InsertAutoVerbalRoadFieldWidget(
                      builder: (ref, road, changeRoad, showValidation) {
                        return Padding(
                          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                          child: Container(
                            child: RoadDropDown(
                              onChanged: (value) {
                                changeRoad(value);
                                print('value: $value');
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: InsertAutoVerbalAreaFieldWidget(
                        builder: (ref, area, changeArea, showValidation) {
                          return Container(
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
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                changeArea(double.parse(value));
                              },
                              maxLines: 3,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Arrea',
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Add Image Picker Section
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

class _LatLog extends StatelessWidget {
  const _LatLog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalLatitudeFieldWidget(
      builder: (ref, latitude, changeLatitude, showValidation) {
        return InsertAutoVerbalLongitudeFieldWidget(
          builder: (ref, longitude, changeLongitude, showValidation) {
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

    return InsertAutoVerbalImageFilesFieldWidget(
      builder: (ref, imageFiles, changeImageFiles, showValidation) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(30).copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: showValidation && imageFiles.isEmpty ? Colors.red : Colors.grey,
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
                                color: showValidation ? Colors.red : null,
                              ),
                              Text(
                                'Add Images',
                                style: TextStyle(
                                  color: showValidation ? Colors.red : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : PageView.builder(
                      controller: pageController,
                      itemCount: imageFiles.length,
                      onPageChanged: (index) {
                        currentImageIndex.value = index;
                      },
                      itemBuilder: (context, index) {
                        final xFile = imageFiles[index];
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(xFile.path),
                                fit: BoxFit.cover,
                              ),
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
                                  changeImageFiles(imageFiles.removeAt(index));
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
                        );
                      },
                    ),
            ),
            if (showValidation && imageFiles.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Please select at least one image',
                  style: TextStyle(color: Colors.red, fontSize: 12),
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
                icon: Icon(Icons.add),
                label: Text('Add more images'),
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
      if (results == null || results.isEmpty) return;

      final newList = images.addAll(results);
      changeImageFiles(newList);
      pageController.jumpToPage(newList.length);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
