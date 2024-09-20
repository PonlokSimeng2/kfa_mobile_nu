import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../constaints.dart';
import '../helpers/build_context_helper.dart';
import '../providers/auth_provider.dart';
import '../providers/cache_provider.dart';
import '../widgets/responsive.dart';
import 'home_page.dart';
import 'register_page.dart';
import 'forgot_password_page.dart'; // Added import for forgot password page

const _cacheEmailKey = "cached-email-key";
const _cachePasswordKey = "cached-password-key";

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key, this.openAsPage = false});

  final bool openAsPage;

  @override
  ConsumerState<LoginPage> createState() => _LoginState();
}

class _LoginState extends ConsumerState<LoginPage> {
  late TextEditingController emailCtr;
  late TextEditingController passwordCtr;
  bool status = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    final cache = ref.read(sharePrefProvider);
    final cachedEmail = cache.getString(_cacheEmailKey);
    final cachedPassword = cache.getString(_cachePasswordKey);
    emailCtr = TextEditingController(text: cachedEmail);
    passwordCtr = TextEditingController(text: cachedPassword);
  }

  Padding login(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Welcome to KFA Mobile',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ((status == false) ? input(context) : output(context)),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 150,
              child: AnimatedButton(
                text: 'Login',
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kPrimaryColor,
                pressEvent: () async {
                  _formKey.currentState?.save();
                  if (!_formKey.currentState!.validate()) return;

                  final close = BotToast.showLoading();
                  final provider = ref.read(authProvider.notifier);
                  final errorOrNull = await provider.login(
                    emailCtr.text.trim(),
                    passwordCtr.text.trim(),
                  );
                  close();

                  if (errorOrNull == null && context.mounted) {
                    // cache success login
                    final cache = ref.read(sharePrefProvider);
                    cache.setString(
                      _cacheEmailKey,
                      emailCtr.text.trim(),
                    );
                    cache.setString(
                      _cachePasswordKey,
                      passwordCtr.text.trim(),
                    );

                    if (widget.openAsPage) {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.leftSlide,
                        headerAnimationLoop: false,
                        dialogType: DialogType.success,
                        dismissOnTouchOutside: true,
                        showCloseIcon: false,
                        title: "Login Successfully!",
                        autoHide: const Duration(seconds: 3),
                        onDismissCallback: (type) {
                          if (context.mounted) {
                            context.pushReplace((context) => const HomePage());
                          }
                        },
                      ).show();
                    } else {
                      BotToast.showText(text: "Login Successfully!");
                    }
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      headerAnimationLoop: false,
                      title: 'Login Failed!',
                      btnOkIcon: Icons.cancel,
                      btnOkColor: Colors.red,
                    ).show();
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            if (!kIsWeb)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't have any account? ",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: context.isDarkMode
                            ? themeData.hintColor
                            : kTextLightColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Register',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push((_) => const RegisterPage());
                        },
                      style: TextStyle(
                        fontSize: 16.0,
                        color: context.isDarkMode
                            ? themeData.primaryColorLight
                            : kImageColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            if (!kIsWeb)
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Forgot your password? ",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: context.isDarkMode
                            ? themeData.hintColor
                            : kTextLightColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Reset',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push((_) => const ForgotPasswordPage());
                        },
                      style: TextStyle(
                        fontSize: 16.0,
                        color: context.isDarkMode
                            ? themeData.primaryColorLight
                            : kImageColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget input(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextFormField(
            controller: emailCtr,
            decoration: InputDecoration(
              fillColor: context.isDarkMode
                  ? themeData.cardColor
                  : const Color.fromARGB(255, 255, 255, 255),
              filled: true,
              labelText: 'Email',
              labelStyle: TextStyle(
                  color: context.isDarkMode ? themeData.hintColor : null),
              prefixIcon: Icon(
                Icons.email,
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kImageColor,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : const Color.fromRGBO(0, 126, 250, 1),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : const Color.fromRGBO(0, 126, 250, 1),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 249, 0, 0),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 249, 0, 0),
                ),
              ),
            ),
            style: TextStyle(
                color: context.isDarkMode
                    ? themeData.textTheme.bodyLarge?.color
                    : null),
            validator: (input) {
              if (input == null || input.isEmpty) {
                return 'require *';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextFormField(
            controller: passwordCtr,
            obscureText: _isObscure,
            decoration: InputDecoration(
              fillColor: context.isDarkMode ? themeData.cardColor : kwhite,
              filled: true,
              labelText: 'Enter password',
              labelStyle: TextStyle(
                  color: context.isDarkMode ? themeData.hintColor : null),
              prefixIcon: Icon(
                Icons.key,
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kImageColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : kImageColor,
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : kPrimaryColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: kerror,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: kerror,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : kPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            style: TextStyle(
                color: context.isDarkMode
                    ? themeData.textTheme.bodyLarge?.color
                    : null),
            validator: (input) {
              if (input == null || input.isEmpty) {
                return 'require *';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget output(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextFormField(
            controller: emailCtr,
            decoration: InputDecoration(
              fillColor: context.isDarkMode
                  ? themeData.cardColor
                  : const Color.fromARGB(255, 255, 255, 255),
              filled: true,
              labelText: 'Email',
              labelStyle: TextStyle(
                  color: context.isDarkMode ? themeData.hintColor : null),
              prefixIcon: Icon(
                Icons.email,
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kImageColor,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : const Color.fromRGBO(0, 126, 250, 1),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : const Color.fromRGBO(0, 126, 250, 1),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 249, 0, 0),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 249, 0, 0),
                ),
              ),
            ),
            style: TextStyle(
                color: context.isDarkMode
                    ? themeData.textTheme.bodyLarge?.color
                    : null),
            validator: (input) {
              if (input == null || input.isEmpty) {
                return 'require *';
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextFormField(
            controller: passwordCtr,
            obscureText: _isObscure,
            decoration: InputDecoration(
              fillColor: context.isDarkMode ? themeData.cardColor : kwhite,
              filled: true,
              labelText: 'Enter password',
              labelStyle: TextStyle(
                  color: context.isDarkMode ? themeData.hintColor : null),
              prefixIcon: Icon(
                Icons.key,
                color: context.isDarkMode
                    ? themeData.primaryColorLight
                    : kImageColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : kImageColor,
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kPrimaryColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: kerror,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: kerror,
                ),
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
            validator: (input) {
              if (input == null || input.isEmpty) {
                return 'require *';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/KFA-Logo.png',
          height: 120,
          width: 150,
        ),
        toolbarHeight: 100,
      ),
      backgroundColor: kPrimaryColor,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: context.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Responsive(
            mobile: login(context),
            tablet: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                        child: login(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            desktop: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                        child: login(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            phone: login(context),
          ),
        ),
      ),
    );
  }
}
