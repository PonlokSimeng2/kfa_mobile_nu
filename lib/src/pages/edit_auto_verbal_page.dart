import 'dart:developer';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/src/models/auto_verbal_model.dart';
import 'package:kfa_mobile_nu/src/models/property_type_model.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/widgets/map_picker.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/province_dropdown.dart';
import '../../exports.dart';

class EditAutoVerbalPage extends HookConsumerWidget {
  const EditAutoVerbalPage({super.key, required this.initial});

  final AutoVerbalModel initial;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UpdateAutoVerbalFormWidget(
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
                        child: isProgressing
                            ? const Text('SAVING')
                            : const Text('RESUMMIT'),
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
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 30, left: 30),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //     children: [
                            //       Container(
                            //         alignment: Alignment.center,
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(10),
                            //           color: Color.fromARGB(255, 21, 105, 6),
                            //         ),
                            //         height: MediaQuery.of(context).size.width * 0.11,
                            //         width: MediaQuery.of(context).size.width * 0.35,
                            //         child: Text(
                            //           'Code: ${initial.propertyId}',
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //             fontWeight: FontWeight.bold,
                            //             fontSize: 13,
                            //           ),
                            //         ),
                            //       ),

                            //     ],
                            //   ),
                            // ),
                            // _ImagePicker(),
                            SizedBox(
                              height: 10,
                            ),
                            UpdateAutoVerbalLatitudeFieldWidget(
                              builder: (ref, latitude, changeLatitude,
                                  showValidation) {
                                return UpdateAutoVerbalLongitudeFieldWidget(
                                  builder: (ref, longitude, changeLongitude,
                                      showValidation) {
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
                                        padding: const EdgeInsets.only(
                                            right: 30, left: 30),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                            UpdateAutoVerbalProvinceFieldWidget(
                              builder: (ref, province, changeProvince,
                                  showValidation) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, left: 30, top: 10),
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
                            UpdateAutoVerbalPropertyTypeFieldWidget(
                              builder: (
                                ref,
                                propertyType,
                                changePropertyType,
                                showValidation,
                              ) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, left: 30, top: 10),
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
                              padding:
                                  EdgeInsets.only(right: 30, left: 30, top: 10),
                              child: Row(
                                children: [
                                  UpdateAutoVerbalMinValueFieldWidget(
                                    builder: (ref, minValue, changeMinValue,
                                        showValidation) {
                                      return Expanded(
                                        child: TextFormField(
                                          initialValue: minValue.toString(),
                                          onChanged: (value) {
                                            changeMinValue(double.parse(value));
                                          },
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            prefixIcon: Icon(
                                              Icons.feed_outlined,
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
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  UpdateAutoVerbalMaxValueFieldWidget(
                                    builder: (ref, maxValue, changeMaxValue,
                                        showValidation) {
                                      return Expanded(
                                        child: TextFormField(
                                          initialValue: maxValue.toString(),
                                          onChanged: (value) {
                                            changeMaxValue(double.parse(value));
                                          },
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            prefixIcon: Icon(
                                              Icons.feed_outlined,
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
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
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
                                    child: UpdateAutoVerbalOwnerNameFieldWidget(
                                      builder: (ref, textController, ownerName,
                                          changeOwnerName, showValidation) {
                                        return TextFormField(
                                          controller: textController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            hintText: 'Owner Name',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          onChanged: (value) {
                                            changeOwnerName(value);
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  UpdateAutoVerbalOwnerPhoneFieldWidget(
                                    builder: (ref, textController, ownerPhone,
                                        changeOwnerPhone, showValidation) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextFormField(
                                          controller: textController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            hintText: 'Owner Phone',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          onChanged: (value) {
                                            changeOwnerPhone(value);
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
                                    child: UpdateAutoVerbalAreaFieldWidget(
                                      builder: (
                                        ref,
                                        area,
                                        changeArea,
                                        showValidation,
                                      ) {
                                        return Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: TextFormField(
                                            initialValue: area.toString(),
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 8),
                                              hintText: 'L',
                                              fillColor: kwhite,
                                              filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: kPrimaryColor,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  width: 1,
                                                  color: kPrimaryColor,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              changeArea(double.parse(value));
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  UpdateAutoVerbalHeadFieldWidget(
                                    builder: (
                                      ref,
                                      head,
                                      changeHead,
                                      showValidation,
                                    ) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextFormField(
                                          initialValue: head.toString(),
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            hintText: 'W',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          onChanged: (value) {
                                            changeHead(double.parse(value));
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
                              padding:
                                  EdgeInsets.only(right: 30, left: 30, top: 10),
                              child: Row(
                                children: [
                                  UpdateAutoVerbalBankOfficerNameFieldWidget(
                                    builder: (ref,
                                        textController,
                                        bankOfficerName,
                                        changeBankOfficerName,
                                        showValidation) {
                                      return Expanded(
                                        child: TextFormField(
                                          controller: textController,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          onChanged: (value) {
                                            changeBankOfficerName(value);
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            prefixIcon: Icon(
                                              Icons.bed_outlined,
                                              color: kImageColor,
                                            ),
                                            hintText: 'Bank Officer Name',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  UpdateAutoVerbalBankOfficerPhoneFieldWidget(
                                    builder: (ref,
                                        textController,
                                        bankOfficerPhone,
                                        changeBankOfficerPhone,
                                        showValidation) {
                                      return Expanded(
                                        child: TextFormField(
                                          controller: textController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          onChanged: (value) {
                                            changeBankOfficerPhone(value);
                                          },
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            prefixIcon: Icon(
                                              Icons.feed_outlined,
                                              color: kImageColor,
                                            ),
                                            hintText: 'Bank Officer Phone',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            UpdateAutoVerbalBankOfficerPhoneFieldWidget(
                              builder: (ref, textController, bankOfficerPhone,
                                  changeBankOfficerPhone, showValidation) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, left: 30, top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: textController,
                                          onChanged: (value) {
                                            changeBankOfficerPhone(value);
                                          },
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 8),
                                            prefixIcon: Icon(
                                              Icons.feed_outlined,
                                              color: kImageColor,
                                            ),
                                            hintText: 'Bank',
                                            fillColor: kwhite,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: kPrimaryColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: kPrimaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
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
                                  EdgeInsets.only(right: 30, left: 30, top: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: UpdateAutoVerbalAreaFieldWidget(
                                      builder: (ref, area, changeArea,
                                          showValidation) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              right: 30, left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: TextFormField(
                                                  onChanged: (value) {
                                                    changeArea(
                                                        double.parse(value));
                                                  },
                                                  keyboardType:
                                                      TextInputType.number,
                                                  style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.015,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 8),
                                                    prefixIcon: Icon(
                                                      Icons.feed_outlined,
                                                      color: kImageColor,
                                                    ),
                                                    hintText: 'Bank',
                                                    fillColor: kwhite,
                                                    filled: true,
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: kPrimaryColor,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        width: 1,
                                                        color: kPrimaryColor,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                )));
      },
    );
  }
}

// class _ImagePicker extends HookWidget {
//   const _ImagePicker({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final pageController = usePageController();
//     final currentImageIndex = useState(0);

    // return UpdateAutoVerbalImageFileFieldWidget(
//     //   builder:
//     //       (ref, imageFile, changeImageFile, showValidation) {
//     //     return UpdateAutoVerbalNewImageFilesFieldWidget(
//     //       builder: (ref, imageFiles, changeImageFiles, showValidation) {
//     //         final hasImage =
//     //             imageFiles.isNotEmpty || existingImageUrls.isNotEmpty;
//     //         final imagePaths = existingImageUrls
//     //             .addAll(imageFiles.map((e) => e.path).toList());

//     //         return Column(
//     //           children: [
//     //             Container(
//     //               margin: const EdgeInsets.all(30)
//     //                   .copyWith(bottom: imageFiles.isEmpty ? 20 : 0),
//     //               decoration: BoxDecoration(
//     //                 color: kwhite,
//     //                 borderRadius: BorderRadius.circular(10),
//     //                 border: Border.all(width: 1),
//     //               ),
//     //               height: 200,
//     //               width: double.infinity,
//     //               child: !hasImage
//     //                   ? InkWell(
//     //                       onTap: () async {
//     //                         await _pickImages(
//     //                           pageController,
//     //                           imageFiles,
//     //                           changeImageFiles,
//     //                         );
//     //                       },
//     //                       child: const SizedBox(
//     //                         width: double.infinity,
//     //                         height: double.infinity,
//     //                         child: Center(
//     //                           child: Column(
//     //                             mainAxisAlignment: MainAxisAlignment.center,
//     //                             children: [
//     //                               Icon(
//     //                                 Icons.image_outlined,
//     //                                 size: 78,
//     //                               ),
//     //                               Text('Add Image'),
//     //                             ],
//     //                           ),
//     //                         ),
//     //                       ),
//     //                     )
//     //                   : Stack(
//     //                       fit: StackFit.expand,
//     //                       children: [
//     //                         PageView.builder(
//     //                           controller: pageController,
//     //                           onPageChanged: (value) =>
//     //                               currentImageIndex.value = value,
//     //                           itemCount: imagePaths.length,
//     //                           itemBuilder: (context, index) {
//     //                             final path = imagePaths[index];

//     //                             final isUrl = path.startsWith('http');

//     //                             return ClipRRect(
//     //                               borderRadius: BorderRadius.circular(10),
//     //                               child: isUrl
//     //                                   ? Image.network(
//     //                                       path,
//     //                                       fit: BoxFit.cover,
//     //                                     )
//     //                                   : Image.file(
//     //                                       File(path),
//     //                                       fit: BoxFit.cover,
//     //                                     ),
//     //                             );
//     //                           },
//     //                         ),
//     //                         Align(
//     //                           alignment: Alignment.bottomCenter,
//     //                           child: Container(
//     //                             margin: EdgeInsets.all(4),
//     //                             padding: EdgeInsets.symmetric(
//     //                               vertical: 2,
//     //                               horizontal: 4,
//     //                             ),
//     //                             decoration: BoxDecoration(
//     //                               color: Colors.black,
//     //                               borderRadius: BorderRadius.circular(5),
//     //                             ),
//     //                             child: Text(
//     //                               '${currentImageIndex.value + 1}/${imageFiles.length}',
//     //                               style: TextStyle(
//     //                                 color: Colors.white,
//     //                                 fontSize: 12,
//     //                               ),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                         Align(
//     //                           alignment: Alignment.topRight,
//     //                           child: IconButton(
//     //                             onPressed: () {
//     //                               final index = currentImageIndex.value;
//     //                               final path = imagePaths[index];
//     //                               final isUrl = path.startsWith('http');

//     //                               if (isUrl) {
//     //                                 changeExistingImageUrls(
//     //                                     existingImageUrls.removeAt(index));
//     //                               } else {
//     //                                 changeImageFiles(
//     //                                     imageFiles.removeAt(index));
//     //                               }

//     //                               if (index > 0) {
//     //                                 pageController.jumpToPage(index - 1);
//     //                               } else {
//     //                                 if (imageFiles.length > 0) {
//     //                                   pageController.jumpToPage(index + 1);
//     //                                 }
//     //                               }
//     //                             },
//     //                             icon: Icon(
//     //                               Icons.clear,
//     //                               color: Colors.red,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ],
//     //                     ),
//     //             ),
//     //             if (hasImage) ...[
//     //               TextButton.icon(
//     //                 onPressed: () async {
//     //                   await _pickImages(
//     //                     pageController,
//     //                     imageFiles,
//     //                     changeImageFiles,
//     //                   );
//     //                 },
//     //                 icon: Icon(Icons.add),
//     //                 label: Text('Add more image'),
//     //               ),
//     //             ],
//     //           ],
//     //         );
//     //       },
//     //     );
//     //   },
//     // );
//   }

//   Future<void> _pickImages(
//     PageController pageController,
//     IList<XFile> images,
//     void Function(IList<XFile> newImageFiles) changeImageFiles,
//   ) async {
//     try {
//       final results = await ImagePicker().pickMultiImage();
//       if (results == null || results.isEmpty) return;

//       final newList = images.addAll(results);
//       changeImageFiles(newList);
//       pageController.jumpToPage(newList.length);
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }
// }
