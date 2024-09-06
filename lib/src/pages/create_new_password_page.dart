import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/home_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';

class CreateNewPasswordPage extends ConsumerStatefulWidget {
  const CreateNewPasswordPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CreateNewPasswordPage> createState() =>
      _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends ConsumerState<CreateNewPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Password'),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const CircleAvatar(
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
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                ),
                obscureText: true,
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
                            context.pushReplace((context) => const HomePage());
                          }
                        },
                      ).show();
                    } else {
                      BotToast.showText(text: result);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
