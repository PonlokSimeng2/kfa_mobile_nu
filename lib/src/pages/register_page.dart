import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
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
        decoration: const BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: SingleChildScrollView(
          child: register(context),
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
              const Text(
                'Register to KFA system',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: kwhite_new,
                ),
              ),
              const SizedBox(
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
                                color: const Color.fromARGB(96, 102, 102, 102),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
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
                                color: const Color.fromARGB(96, 102, 102, 102),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.crop,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              if (user_last_id != null)
                SizedBox(
                  height: 58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
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
                        style: const TextStyle(
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
                icon1: const Icon(
                  Icons.person,
                  color: kImageColor,
                ),
                icon2: const Icon(
                  Icons.person,
                  color: kImageColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // FormValidate(
              //   //  onSaved: (input) => requestModel.username = input!,
              //     label: 'Username',
              //     iconname: Icon(
              //       Icons.person,
              //       color: kImageColor,
              //     )),
              // FormValidate(
              //   // onSaved: (input) => requestModel.username = input!,
              //     label: 'Email',
              //     iconname: Icon(
              //       Icons.email,
              //       color: kImageColor,
              //     )),
              // FormValidate(
              //   // onSaved: (input) => requestModel.username = input!,
              //     label: 'Phone',
              //     iconname: Icon(
              //       Icons.phone,
              //       color: kImageColor,
              //     )),
              FormTwin(
                Label1: 'Email',
                Label2: 'Phone',
                onSaved1: (input) {
                  setState(() {
                    // requestModel.email = input!;
                  });
                },
                onSaved2: (input) {
                  setState(() {
                    // requestModel.phone = input!;
                  });
                },
                icon1: const Icon(
                  Icons.email,
                  color: kImageColor,
                ),
                icon2: const Icon(
                  Icons.phone,
                  color: kImageColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // FormTwin(
              //   Label1: 'From',
              //   Label2: 'Gender',
              //   onSaved1: (input) {
              //     setState(() {
              //       requestModel.from = input!;
              //     });
              //   },
              //   onSaved2: (input) {
              //     setState(() {
              //       requestModel.gender = input!;
              //     });
              //   },
              //   icon1: Icon(
              //     Icons.wallet_travel,
              //     color: kImageColor,
              //   ),
              //   icon2: Icon(
              //     Icons.wc,
              //     color: kImageColor,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'From',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: kwhite_new,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kwhite_new,
                        ),
                        child: DropdownButton(
                          // Initial Value
                          value: fromValue,
                          // Down Arrow Icon
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: kImageColor,
                          ),
                          // Array list of items
                          items: from.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: kImageColor,
                                ),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              fromValue = newValue!;
                              // requestModel.from = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: kwhite_new,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 2.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kwhite_new,
                        ),
                        child: DropdownButton(
                          // Initial Value
                          value: genderValue,
                          // Down Arrow Icon
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: kImageColor,
                          ),
                          // Array list of items
                          items: gender.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: kImageColor,
                                ),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              genderValue = newValue!;
                              // requestModel.gender = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.3,
                child: MaterialButton(
                  color: kwhite,
                  onPressed: () {
                    // if (validateAndSave()) {
                    //   print(requestModel.toJson());
                    //   setState(() {
                    //     isApiCallProcess = true;
                    //   });

                    //   APIService apiService = new APIService();
                    //   apiService.createAccount(requestModel).then((value) {
                    //     setState(() {
                    //       isApiCallProcess = false;
                    //     });

                    //     if (value == "error") {
                    //       final snackBar = SnackBar(
                    //           content: Text("Already have a email or phone"));
                    //       _scaffoldKey.currentState!.showSnackBar(snackBar);
                    //     } else {
                    //       final snackBar =
                    //           SnackBar(content: Text("Successfully Register"));
                    //       _scaffoldKey.currentState!.showSnackBar(snackBar);
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => VerifyScreen(
                    //             verificationId: value,
                    //             requestModel: requestModel,
                    //           ),
                    //         ),
                    //       );
                    //     }
                    //   });
                    // }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: kwhite),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kImageColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        color: kwhite_new,
                      ),
                    ),
                    TextSpan(
                      text: ' Login here',
                      style: const TextStyle(
                        color: kImageColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _uiSteup(context);
  }
}
