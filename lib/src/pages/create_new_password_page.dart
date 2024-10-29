import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';

class CreateNewPasswordPage extends ConsumerStatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  ConsumerState<CreateNewPasswordPage> createState() =>
      _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends ConsumerState<CreateNewPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  // Password validation rules
  bool _hasMinLength = false;
  bool _hasUppercase = false;
  bool _hasLowercase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;
  bool _isObscureNewPassword = true;
  bool _isObscureConfirmPassword = true;
  void _updatePasswordStrength(String password) {
    setState(() {
      _hasMinLength = password.length >= 6;
      _hasUppercase = password.contains(RegExp(r'[A-Z]'));
      _hasLowercase = password.contains(RegExp(r'[a-z]'));
      _hasNumber = password.contains(RegExp(r'[0-9]'));
      _hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    });
  }

  bool _isPasswordStrong(String password) {
    return _hasMinLength &&
        _hasUppercase &&
        _hasLowercase &&
        _hasNumber &&
        _hasSpecialChar;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Password'),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: kIsWeb
                      ? null
                      : const CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('assets/password.jpg'),
                        ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Please enter your new password',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  obscureText: _isObscureNewPassword,
                  onChanged: _updatePasswordStrength,
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kPrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kPrimaryColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        color: context.isDarkMode
                            ? themeData.primaryColorLight
                            : kImageColor,
                        _isObscureNewPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscureNewPassword = !_isObscureNewPassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Strong password';
                    }
                    if (!_isPasswordStrong(value)) {
                      return r'Strong password at least 6 characters (Aa1#85...)';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  obscureText: _isObscureConfirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Confirm Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kPrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kPrimaryColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        color: context.isDarkMode
                            ? themeData.primaryColorLight
                            : kImageColor,
                        _isObscureConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscureConfirmPassword =
                              !_isObscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (_confirmPasswordController.text !=
                        _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 200,
                  child: AnimatedButton(
                    text: 'Create New Password',
                    color: context.isDarkMode
                        ? themeData.primaryColorLight
                        : kPrimaryColor,
                    pressEvent: () async {
                      if (_formKey.currentState!.validate()) {
                        if (_passwordController.text !=
                            _confirmPasswordController.text) {
                          BotToast.showText(text: 'Passwords do not match');
                          return;
                        }
                        final close = BotToast.showLoading();
                        final result = await ref
                            .read(authProvider.notifier)
                            .updatePassword(_passwordController.text);
                        close();
                        if (result == null) {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.leftSlide,
                            headerAnimationLoop: false,
                            dialogType: DialogType.success,
                            dismissOnTouchOutside: true,
                            showCloseIcon: false,
                            title: "Password Updated Successfully!",
                            autoHide: const Duration(seconds: 3),
                            onDismissCallback: (type) {
                              if (context.mounted) {
                                context
                                    .pushReplace((context) => const HomePage());
                              }
                            },
                          ).show();
                        } else {
                          BotToast.showText(text: result);
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
