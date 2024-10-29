import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/pages/create_new_password_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/img1.png',
                  width: 200.0, // Increased size
                  height: 200.0, // Increased size
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Please enter your email to reset your password',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email, color: Colors.grey[400]),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 200,
                child: AnimatedButton(
                  text: 'Send',
                  color: context.isDarkMode
                      ? themeData.primaryColorLight
                      : kPrimaryColor,
                  pressEvent: () async {
                    final email = _emailController.text;
                    if (email.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter your email'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }
                    try {
                      final close = BotToast.showLoading();
                      final result = await ref
                          .read(authProvider.notifier)
                          .forgotPassword(email);
                      close();
                      if (result != null) {
                        _showErrorDialog(result);

                        return;
                      }
                      _showOtpDialog(email);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Failed to send password reset email: ${e.toString()}',
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
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

  void _showOtpDialog(String email) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          title: const Text('Enter OTP'),
          content: SizedBox(
            width: 300, // Increased width
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 45, // Slightly increased field width
                activeFillColor: Colors.white,
              ),
              animationDuration: const Duration(milliseconds: 300),
              onCompleted: (v) async {
                final close = BotToast.showLoading();
                final result = await ref
                    .read(authProvider.notifier)
                    .verifyOtpForgotPassword(
                      _emailController.text,
                      v,
                    );
                close();
                if (result == null) {
                  _showSuccessDialog();
                } else {
                  _showErrorDialog(result);
                }
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog() {
    AwesomeDialog(
      context: context,
      animType: AnimType.leftSlide,
      headerAnimationLoop: false,
      dialogType: DialogType.success,
      showCloseIcon: true,
      title: 'Success',
      desc: 'Password reset email sent successfully!',
      btnOkOnPress: () {
        context.push((context) => const CreateNewPasswordPage());
      },
      btnOkIcon: Icons.check_circle,
      onDismissCallback: (type) {
        Navigator.pop(context);
      },
    ).show();
  }

  void _showErrorDialog(String error) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      headerAnimationLoop: false,
      title: 'Error',
      desc: error,
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.red,
    ).show();
  }
}
