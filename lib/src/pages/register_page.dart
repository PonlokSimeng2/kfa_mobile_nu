import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kfa_mobile_nu/constaints.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/formTwin.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends ConsumerState<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String fromValue = 'Bank';
  String genderValue = 'Female';
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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

  Random random = Random();

  bool isApiCallProcess = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _passwordController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          icon: const Icon(
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
              InkWell(
                onTap: () async {},
                child: Center(
                    child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
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
                )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              FormTwin(
                Label1: 'First Name',
                Label2: 'Last Name',
                onSaved1: (input) {
                  _firstNameController.text = input!;
                },
                onSaved2: (input) {
                  _lastNameController.text = input!;
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
              FormTwin(
                Label1: 'Email',
                Label2: 'Password',
                onSaved1: (input) {
                  _emailController.text = input!;
                },
                onSaved2: (input) {
                  _passwordController.text = input!;
                },
                icon1: const Icon(
                  Icons.email,
                  color: kImageColor,
                ),
                icon2: const Icon(
                  Icons.password,
                  color: kImageColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  //controller: email,
                  onChanged: (phone) {
                    _phoneController.text = phone;
                  },
                  decoration: InputDecoration(
                    fillColor: kwhite,
                    filled: true,
                    labelText: 'Phone Number',
                    prefixIcon: const Icon(
                      color: kImageColor,
                      Icons.phone,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kPrimaryColor, width: 2.0),
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.3,
                child: MaterialButton(
                  color: kwhite,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final result =
                          await ref.read(authProvider.notifier).signUp(
                                email: _emailController.text,
                                password: _passwordController.text,
                                photo: null, // Handle photo upload
                                firstName: _firstNameController.text,
                                lastName: _lastNameController.text,
                                phone: _phoneController.text,
                              );

                      if (result == null) {
                        AwesomeDialog(
                          context: context,
                          animType: AnimType.leftSlide,
                          headerAnimationLoop: false,
                          dialogType: DialogType.success,
                          dismissOnTouchOutside: true,
                          showCloseIcon: false,
                          title: "Register Successfully!",
                          autoHide: const Duration(seconds: 3),
                          onDismissCallback: (type) {
                            context.push((context) => const HomePage());
                          },
                        ).show(); // Handle successful sign up or perform other actions
                      } else {
                        AwesomeDialog(
                          context: context,
                          animType: AnimType.leftSlide,
                          headerAnimationLoop: false,
                          dialogType: DialogType.error,
                          dismissOnTouchOutside: true,
                          showCloseIcon: false,
                          title: "Register Failed!",
                          autoHide: const Duration(seconds: 3),
                          onDismissCallback: (type) {},
                        ).show();
                      }
                    }
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
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                    ),
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
}
