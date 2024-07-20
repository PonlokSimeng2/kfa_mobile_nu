// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types, avoid_print, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, unnecessary_brace_in_string_interps, equal_keys_in_map, unrelated_type_equality_checks, body_might_complete_normally_nullable, unused_element, await_only_futures, unnecessary_string_interpolations, unnecessary_cast, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_is_empty, unnecessary_null_comparison, unused_local_variable, unused_catch_clause, depend_on_referenced_packages, use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/property_model.dart';
import 'package:kfa_mobile_nu/src/providers/auto_verbal_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/widgets/map_picker.dart';
import 'package:kfa_mobile_nu/src/widgets/property_type_dropdown.dart';
import 'package:kfa_mobile_nu/src/widgets/province_dropdown.dart';

typedef OnChangeCallback = void Function(dynamic value);

// ignore: must_be_immutable
class AddAutoVerbalPage extends HookConsumerWidget {
  AddAutoVerbalPage({super.key});

  int? index_Sale;
  int? index_Rent;
  late String branchvalue;
  bool _isLoading = true;
  var _items = [];
  var last_verbal_id;

  int? hometype_api_index;

  bool? index12 = true;

  var khan;
  var songkat;
  var provice_map;

  String? commune;
  String? district;
  Future<void> _getCurrentPosition() async {
    final response = await http.get(
      Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=11.544881, 104.937044&key=AIzaSyAJt0Zghbk3qm_ZClIQOYeUT0AaV5TeOsI',
      ),
    );

    if (response.statusCode == 200) {
      // Successful response
      final jsonResponse = json.decode(response.body);

      final List ls = jsonResponse['results'];
      List ac;
      bool check_sk = false, check_kn = false;
    }
  }

  String? Name_cummune;
  bool switchValue = false;
  String _switchValue = 'Switch';
  bool way = false;
  TextEditingController address1 = TextEditingController();

  var id_ptys;
  String urgent = 'N/A';
  String? get_re = '202301';
  String? await_functino;
  var _size_10 = SizedBox(height: 10);
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
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                          padding:
                              EdgeInsets.only(right: 30, left: 30, top: 10),
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
                      builder: (ref, propertyType, changePropertyType,
                          showValidation) {
                        return Padding(
                          padding:
                              EdgeInsets.only(right: 30, left: 30, top: 10),
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
                              builder: (ref, minValue, changeMinValue,
                                  showValidation) {
                                return TextFormField(
                                  onChanged: (value) {
                                    changeMinValue(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
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
                              builder: (ref, maxValue, changeMaxValue,
                                  showValidation) {
                                return TextFormField(
                                  onChanged: (value) {
                                    changeMaxValue(double.parse(value));
                                  },
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
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
                            child: InsertAutoVerbalMinValueSqmFieldWidget(
                              builder: (ref, minValueSqm, changeMinValueSqm,
                                  showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeMinValueSqm(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Min Value/sqm',
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
                            child: InsertAutoVerbalMaxValueSqmFieldWidget(
                              builder: (ref, maxValueSqm, changeMaxValueSqm,
                                  showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeMaxValueSqm(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Max Value/sqm',
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalOwnerNameFieldWidget(
                              builder: (ref, textController, ownerName,
                                  changeOwnerName, showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeOwnerName(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
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
                              builder: (ref, textController, ownerPhone,
                                  changeOwnerPhone, showValidation) {
                                return TextFormField(
                                  controller: textController,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    //  changeOwnerPhone(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
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
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalBankOfficerNameFieldWidget(
                              builder: (ref, textController, bankOfficerName,
                                  changeBankOfficerName, showValidation) {
                                return TextFormField(
                                  controller: textController,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    //  changeFloors(int.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
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
                              builder: (ref, textController, bankOfficerPhone,
                                  changeBankOfficerPhone, showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeBankOfficerPhone(value);
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, left: 30, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: InsertAutoVerbalHeadFieldWidget(
                              builder: (ref, head, changeHead, showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeHead(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.bed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Head',
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
                            child: InsertAutoVerbalLengthFieldWidget(
                              builder:
                                  (ref, length, changeLength, showValidation) {
                                return TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    changeLength(double.parse(value));
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 8),
                                    prefixIcon: Icon(
                                      Icons.feed_outlined,
                                      color: kImageColor,
                                    ),
                                    hintText: 'Length',
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
                          )
                        ],
                      ),
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

    return InsertAutoVerbalImageFileFieldWidget(
      builder: (ref, imageFile, changeImageFile, showValidation) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(30)
                  .copyWith(bottom: imageFile == null ? 20 : 0),
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
              ),
              height: 200,
              width: double.infinity,
              child: imageFile == null
                  ? InkWell(
                      onTap: () async {
                        await _pickImage(
                          pageController,
                          imageFile,
                          changeImageFile,
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
                              Text('Add Image')
                            ],
                          ),
                        ),
                      ),
                    )
                  : Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            File(imageFile.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              changeImageFile(null);
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickImage(PageController pageController, XFile? image,
      void changeImageFile(XFile? newImageFile)) async {
    try {
      final result = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (result == null) return;

      changeImageFile(result);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
