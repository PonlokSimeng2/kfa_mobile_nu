// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:kfa_mobile_nu/constaints.dart';
// import 'package:kfa_mobile_nu/exports.dart';
// import 'package:kfa_mobile_nu/src/pages/create_new_password_page.dart';

// class VerifyResetPasswordPage extends StatefulWidget {
//   const VerifyResetPasswordPage({Key? key}) : super(key: key);

//   @override
//   _VerifyResetPasswordPageState createState() =>
//       _VerifyResetPasswordPageState();
// }

// class _VerifyResetPasswordPageState extends State<VerifyResetPasswordPage> {
//   final TextEditingController _otpController = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     final themeData = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Verify OTP'),
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const SizedBox(height: 20.0),
//               Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.9),
//                       spreadRadius: 5,
//                       blurRadius: 20,
//                       offset: Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: CircleAvatar(
//                   radius: 120,
//                   backgroundImage: AssetImage('assets/otp.webp'),
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               Text(
//                 'Please enter the OTP sent to your email',
//                 style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//               ),
//               const SizedBox(height: 20.0),
//               TextFormField(
//                 controller: _otpController,
//                 decoration: InputDecoration(
//                   labelText: 'OTP',
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               SizedBox(
//                 width: 200,
//                 child: AnimatedButton(
//                   text: 'Verify',
//                   color: context.isDarkMode
//                       ? themeData.primaryColorLight
//                       : kPrimaryColor,
//                   pressEvent: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const CreateNewPasswordPage(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
