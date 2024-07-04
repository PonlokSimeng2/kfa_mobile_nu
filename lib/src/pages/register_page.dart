import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/constaints.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/widgets/formTwin.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Register();
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String fromValue = 'Bank';
  String genderValue = 'Female';
  // List of items in our dropdown menu
  var from = [
    'Bank',
    'Private',
    'Other',
  ];
  var gender = [
    'Female',
    'Male',
    'Other',
  ];
  Uint8List? imagebytes;
  String imagepath = "";
  File? imagefile;

  Future cut_again() async {
    imagepath = imagefile!.path;

    get_bytes = await imagefile!.readAsBytes(); //convert to bytes
    setState(() {
      get_bytes;
      imagepath = imagefile!.path;
      imagefile = File(imagepath); //convert Path to File
    });
  }

  // FirebaseAuth auth = FirebaseAuth.instance;
  // PhoneAuthCredential? credential;
  String? smsCode;
  String? set_id_user;
  int? user_last_id;
  Random random = Random();

  Uint8List? get_bytes;
  void get_user_last_id() async {
    setState(() {});
    // await Firebase.initializeApp();
    var rs = await http.get(
      Uri.parse(
        'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/get_last_user',
      ),
    );
    if (rs.statusCode == 200) {
      var jsonData = jsonDecode(rs.body);

      setState(() {
        user_last_id = jsonData;
        set_id_user =
            '${user_last_id.toString()}K${random.nextInt(999).toString()}F${user_last_id.toString()}A';
      });
    }
  }

  Future<void> uploadImage() async {
    if (get_bytes != null) {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
          'https://www.oneclickonedollar.com/laravel_kfa_2023/public/api/set_profile_user',
        ),
      );
      request.fields['id_user'] = set_id_user ?? '';
      request.files.add(
        http.MultipartFile.fromBytes(
          'image',
          get_bytes!,
          filename: 'User ID :$set_id_user photo ${random.nextInt(999)}.jpg',
        ),
      );
    }
  }

  bool isApiCallProcess = false;
  @override
  void initState() {
    get_user_last_id();
    // mydb.open();

    super.initState();
  }

  Widget _uiSteup(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite_new,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/KFA-Logo.png',
          height: 160,
          width: 160,
        ),
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      backgroundColor: kwhite_new,
      body: Container(
        decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: SingleChildScrollView(
            //child:
            ),
      ),
    );
  }

  Padding register(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Register to KFA system',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: kwhite_new,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // Text.rich(
              //   TextSpan(
              //     // ignore: prefer_const_literals_to_create_immutables
              //     children: [
              //       TextSpan(
              //         text: "ONE CLICK ",
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //           color: kImageColor,
              //         ),
              //       ),
              //       TextSpan(
              //         text: "1\$",
              //         style: TextStyle(
              //           fontSize: 30.0,
              //           fontWeight: FontWeight.bold,
              //           color: kerror,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              InkWell(
                onTap: () async {
                  if (get_bytes == null) {
                  } else {
                    await cut_again();
                    setState(() {
                      imagefile;
                      get_bytes;
                    });
                  }
                  setState(() {
                    get_bytes;
                    imagefile;
                  });
                },
                child: Center(
                  child: (get_bytes == null)
                      ? Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // GFAvatar(
                            //   size: 100,
                            //   backgroundImage:
                            //       AssetImage('assets/images/user-avatar.png'),
                            // ),
                            Container(
                              height: 20,
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(96, 102, 102, 102),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            // GFAvatar(
                            //   size: 100,
                            //   backgroundImage: MemoryImage(get_bytes!),
                            // ),
                            Container(
                              height: 20,
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(96, 102, 102, 102),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.crop,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              if (user_last_id != null)
                SizedBox(
                  height: 58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'This\'s your personal id:',
                        //initialValue: '${set_id_user}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: kwhite_new,
                        ),
                      ),
                      Text(
                        '$set_id_user',
                        //initialValue: '${set_id_user}',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: kwhite_new,
                        ),
                      ),
                    ],
                  ),
                ),
              // SizedBox(
              //   height: 10.0,
              // ),
              FormTwin(
                Label1: 'First Name',
                Label2: 'Last Name',
                onSaved1: (input) {
                  setState(() {
                    // requestModel.first_name = input!;
                  });
                },
                onSaved2: (input) {
                  setState(() {
                    // requestModel.last_name = input!;
                  });
                },
                icon1: Icon(
                  Icons.person,
                  color: kImageColor,
                ),
                icon2: Icon(
                  Icons.person,
                  color: kImageColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // FormValidate(
              //   //  onSaved: (input) => requestModel.username = input!,
              //     label: 'Username',
              //     iconname: Icon(
              //       Icons.person,
              //       color: kImageColor,
              //     )),
              SizedBox(
                height: 10,
              ),
              //ignore: sized_box_for_whitespace
              Container(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: DropdownButtonFormField<String>(
                    onChanged: (String? newValue) {
                      setState(() {
                        genderValue = newValue!;
                        // requestModel.gender = genderValue.toString();
                        // print(newValue);
                      });
                    },
                    items: gender
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    // add extra sugar..
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kImageColor,
                    ),
                    decoration: InputDecoration(
                      fillColor: kwhite,
                      filled: true,
                      labelText: 'Gender',
                      hintText: 'Select one',
                      prefixIcon: Icon(
                        Icons.accessibility_new_sharp,
                        color: kImageColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kPrimaryColor, width: 2.0),
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
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: FormBuilderTextField(
                  name: 'email',
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: FormBuilderTextField(
                    name: 'Phone Number',
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                  )
                  //  FormValidate(
                  //   onSaved: (input) {
                  //     setState(() {
                  //       requestModel.tel_num = input!;
                  //     });
                  //   },
                  //   label: 'Phone Number',
                  //   type: TextInputType.phone,
                  //   iconname: Icon(
                  //     Icons.phone,
                  //     color: kImageColor,
                  //   ),
                  // ),
                  ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: FormBuilderTextField(
                    name: 'Enter password',
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                child: FormBuilderTextField(
                  name: 'Enter confirm password',
                  decoration: InputDecoration(
                    labelText: 'Enter confirm password',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              // ignore: sized_box_for_whitespace
              // Container(
              //   height: 70,
              //   child: Padding(
              //     padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
              //     child: DropdownButtonFormField<String>(
              //       //value: fromValue,
              //       onSaved: (input) => requestModel.known_from = input!,
              //       onChanged: (String? newValue) {
              //         setState(() {
              //           fromValue = newValue!;
              //           requestModel.known_from = newValue;
              //         });
              //       },
              //       items: from
              //           .map<DropdownMenuItem<String>>(
              //             (String value) => DropdownMenuItem<String>(
              //               value: value,
              //               child: Text(value),
              //             ),
              //           )
              //           .toList(),
              //       // add extra sugar..
              //       icon: Icon(
              //         Icons.arrow_drop_down,
              //         color: kImageColor,
              //       ),

              //       decoration: InputDecoration(
              //         fillColor: kwhite,
              //         filled: true,
              //         labelText: 'From',
              //         hintText: 'Select one',
              //         prefixIcon: Icon(
              //           Icons.business_outlined,
              //           color: kImageColor,
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide:
              //               const BorderSide(color: kPrimaryColor, width: 2.0),
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             width: 1,
              //             color: kPrimaryColor,
              //           ),
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //         errorBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             width: 1,
              //             color: kerror,
              //           ),
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //         focusedErrorBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             width: 2,
              //             color: kerror,
              //           ),
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //         //   decoration: InputDecoration(
              //         //       labelText: 'From',
              //         //       prefixIcon: Icon(Icons.business_outlined)),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20.0,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "Already have account? ",
                      style: TextStyle(fontSize: 16.0, color: kTextLightColor),
                    ),
                    TextSpan(
                      text: 'Log In',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: kImageColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
