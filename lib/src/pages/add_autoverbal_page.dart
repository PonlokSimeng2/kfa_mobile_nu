// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types, avoid_print, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps, equal_keys_in_map, unrelated_type_equality_checks, body_might_complete_normally_nullable, unused_element, await_only_futures, unnecessary_string_interpolations, unnecessary_cast, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_is_empty, unnecessary_null_comparison, unused_local_variable, unused_catch_clause, depend_on_referenced_packages, use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers
import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/property_model.schema.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/widgets/bank_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/map_picker.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/province_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/road_dropdown.dart';

class AddAutoVerbalPage extends HookConsumerWidget {
  AddAutoVerbalPage({super.key, this.propertyModel});

  // for binding only
  final PropertyModel? propertyModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InsertAutoVerbalFormWidget(
      fromProperty: propertyModel,
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
                                Navigator.pop(context, true);
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
                            title: 'No V point please contact agence',
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
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    _ImagePicker(),
                    SizedBox(height: 10),
                    _LatLog(),
                    SizedBox(height: 5),
                    _Province(),
                    SizedBox(height: 5),
                    _PropertyType(),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _MinValue()),
                          SizedBox(width: 10),
                          Expanded(child: _MaxValue()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _OwnerName()),
                          SizedBox(width: 10),
                          Expanded(child: _OwnerPhone()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _BankOfficerName()),
                          SizedBox(width: 10),
                          Expanded(child: _BankOfficerPhone()),
                        ],
                      ),
                    ),
                    _Bank(),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: _BankBranch(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _BuildingLength()),
                          SizedBox(width: 10),
                          Expanded(child: _BuildingWidth()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _LandLength()),
                          SizedBox(width: 10),
                          Expanded(child: _LandWidth()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _Bed()),
                          SizedBox(width: 10),
                          Expanded(child: _Bath()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(child: _LivingRoom()),
                          SizedBox(width: 10),
                          Expanded(child: _Floor()),
                        ],
                      ),
                    ),
                    _Road(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: _Area(),
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

class _Area extends StatelessWidget {
  const _Area({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalAreaFieldWidget(
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
            initialValue: area.toString(),
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
    );
  }
}

class _Road extends StatelessWidget {
  const _Road({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalRoadFieldWidget(
      builder: (ref, road, changeRoad, showValidation) {
        return Padding(
          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
          child: Container(
            child: RoadDropDown(
              value: road,
              onChanged: (value) {
                changeRoad(value);
                print('value: $value');
              },
            ),
          ),
        );
      },
    );
  }
}

class _Floor extends StatelessWidget {
  const _Floor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalFloorFieldWidget(
      builder: (ref, floor, changeFloor, showValidation) {
        return TextFormField(
          initialValue: floor.toString(),
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
    );
  }
}

class _LivingRoom extends StatelessWidget {
  const _LivingRoom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalLivingroomFieldWidget(
      builder: (
        ref,
        livingRoom,
        changeLivingRoom,
        showValidation,
      ) {
        return TextFormField(
          initialValue: livingRoom.toString(),
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
    );
  }
}

class _Bath extends StatelessWidget {
  const _Bath({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBathFieldWidget(
      builder: (ref, bath, changeBath, showValidation) {
        return TextFormField(
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
    );
  }
}

class _Bed extends StatelessWidget {
  const _Bed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBedFieldWidget(
      builder: (ref, bed, changeBed, showValidation) {
        return TextFormField(
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
    );
  }
}

class _LandWidth extends StatelessWidget {
  const _LandWidth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalLandwidthFieldWidget(
      builder: (
        ref,
        landwidth,
        changeLandwidth,
        showValidation,
      ) {
        return TextFormField(
          initialValue: landwidth.toString(),
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
    );
  }
}

class _LandLength extends StatelessWidget {
  const _LandLength({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalLandlengthFieldWidget(
      builder: (
        ref,
        landlength,
        changeLandlength,
        showValidation,
      ) {
        return TextFormField(
          initialValue: landlength.toString(),
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
    );
  }
}

class _BuildingWidth extends StatelessWidget {
  const _BuildingWidth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBuildingwidthFieldWidget(
      builder: (
        ref,
        buildingwidth,
        changeBuildingwidth,
        showValidation,
      ) {
        return TextFormField(
          initialValue: buildingwidth.toString(),
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
    );
  }
}

class _BuildingLength extends StatelessWidget {
  const _BuildingLength({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBuildinglengthFieldWidget(
      builder: (
        ref,
        buildinglength,
        changeBuildinglength,
        showValidation,
      ) {
        return TextFormField(
          initialValue: buildinglength.toString(),
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
    );
  }
}

class _BankBranch extends StatelessWidget {
  const _BankBranch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBankBranchFieldWidget(
      builder: (
        ref,
        textController,
        bankBranch,
        changeBankBranch,
        showValidation,
      ) {
        return TextFormField(
          controller: textController,
          keyboardType: TextInputType.text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.015,
            fontWeight: FontWeight.bold,
          ),
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
    );
  }
}

class _Bank extends StatelessWidget {
  const _Bank({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBankFieldWidget(
      builder: (ref, bank, changeBank, showValidation) {
        return Padding(
          padding: EdgeInsets.only(right: 30, left: 30, top: 10),
          child: Container(
            child: BankDropDown(
              value: bank,
              onChanged: (value) {
                changeBank(value);
              },
            ),
          ),
        );
      },
    );
  }
}

class _BankOfficerPhone extends StatelessWidget {
  const _BankOfficerPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBankOfficerPhoneFieldWidget(
      builder: (
        ref,
        textController,
        bankOfficerPhone,
        changeBankOfficerPhone,
        showValidation,
      ) {
        return TextFormField(
          controller: textController,
          keyboardType: TextInputType.phone,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.015,
            fontWeight: FontWeight.bold,
          ),
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
    );
  }
}

class _BankOfficerName extends StatelessWidget {
  const _BankOfficerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalBankOfficerNameFieldWidget(
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
    );
  }
}

class _OwnerPhone extends StatelessWidget {
  const _OwnerPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalOwnerPhoneFieldWidget(
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
    );
  }
}

class _OwnerName extends StatelessWidget {
  const _OwnerName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalOwnerNameFieldWidget(
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
    );
  }
}

class _MaxValue extends StatelessWidget {
  const _MaxValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalMaxValueFieldWidget(
      builder: (
        ref,
        maxValue,
        changeMaxValue,
        showValidation,
      ) {
        return TextFormField(
          initialValue: maxValue.toString(),
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
    );
  }
}

class _MinValue extends StatelessWidget {
  const _MinValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalMinValueFieldWidget(
      builder: (
        ref,
        minValue,
        changeMinValue,
        showValidation,
      ) {
        return TextFormField(
          initialValue: minValue.toString(),
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
    );
  }
}

class _PropertyType extends StatelessWidget {
  const _PropertyType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalPropertyTypeFieldWidget(
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
    );
  }
}

class _Province extends StatelessWidget {
  const _Province({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InsertAutoVerbalProvinceFieldWidget(
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
                "https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=18&size=1080x920&maptype=hybrid&markers=color:red%7C%7C$latitude,$longitude&key=AIzaSyCGCz6uMqNF0uSRyyuMaWJIC1tnNcw4Y4k";
            return InkWell(
              onTap: () async {
                final result = await MapPickerPageTest.show(
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

    return InsertAutoVerbalExistingImageUrlsFieldWidget(
      builder:
          (ref, existingImageUrls, changeExistingImageUrls, showValidation) {
        return InsertAutoVerbalImageFilesFieldWidget(
          builder: (ref, imageFiles, changeImageFiles, showValidation) {
            final hasImage =
                imageFiles.isNotEmpty || existingImageUrls.isNotEmpty;
            final imagePaths = existingImageUrls
                .addAll(imageFiles.map((e) => e.path).toList());

            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30)
                      .copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
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
                              onPageChanged: (value) =>
                                  currentImageIndex.value = value,
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) {
                                final path = imagePaths[index];

                                final isUrl = path.startsWith('http');

                                if (kIsWeb && isUrl) {
                                  return FutureBuilder(
                                    future: XFile(path).readAsBytes(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }

                                      return ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.memory(
                                          snapshot.data!,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  );
                                }

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
                                  '${currentImageIndex.value + 1}/${imagePaths.length}',
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
                                    if (imagePaths.length > 0) {
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
