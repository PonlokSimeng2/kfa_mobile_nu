import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:image_picker/image_picker.dart';
import '../../exports.dart';
import '../helpers/build_context_helper.dart';
import 'home_page.dart';
import 'login_page.dart';
import '../providers/auth_provider.dart';
import '../providers/property_provider.dart';

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
  XFile? _imageFile;
  String? _imageUrl;

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
          height: 80,
          width: 80,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32.0),
                  _buildProfileImagePicker(),
                  const SizedBox(height: 24.0),
                  _buildNameFields(),
                  const SizedBox(height: 16.0),
                  _buildEmailPasswordFields(),
                  const SizedBox(height: 16.0),
                  _buildPhoneField(),
                  const SizedBox(height: 32.0),
                  _buildSubmitButton(),
                  const SizedBox(height: 16.0),
                  _buildLoginLink(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImagePicker() {
    return GestureDetector(
      onTap: _pickImage,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.grey[200],
        backgroundImage: _imageFile != null ? FileImage(File(_imageFile!.path)) : null,
        child: _imageFile == null
            ? const Icon(
                Icons.camera_alt,
                size: 40,
                color: kPrimaryColor,
              )
            : null,
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageFile = image;
      });
      await _uploadImage();
    }
  }

  Future<void> _uploadImage() async {
    if (_imageFile == null) return;

    final sb = ref.read(supabaseProvider).client;
    final file = File(_imageFile!.path);
    final newPath = '${DateTime.now().microsecondsSinceEpoch}${p.extension(_imageFile!.path)}';

    try {
      await sb.storage.from('files').upload(newPath, file);
      final imageUrl = sb.storage.from('files').getPublicUrl(newPath);
      setState(() {
        _imageUrl = imageUrl;
      });
    } catch (e) {
      print('Error uploading image: $e');
      // Handle error (show a message to the user)
    }
  }

  Widget _buildNameFields() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: _firstNameController,
            decoration: const InputDecoration(
              labelText: 'First Name',
              prefixIcon: Icon(Icons.person, color: kPrimaryColor),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: TextFormField(
            controller: _lastNameController,
            decoration: const InputDecoration(
              labelText: 'Last Name',
              prefixIcon: Icon(Icons.person, color: kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailPasswordFields() {
    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email, color: kPrimaryColor),
          ),
        ),
        const SizedBox(height: 16.0),
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      controller: _phoneController,
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        prefixIcon: Icon(Icons.phone, color: kPrimaryColor),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _handleSubmit,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        'Create Account',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }

  Widget _buildLoginLink() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(color: Colors.black87),
        children: [
          const TextSpan(text: "Already have an account? "),
          TextSpan(
            text: 'Login here',
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
          ),
        ],
      ),
    );
  }

  void _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isApiCallProcess = true;
      });
      
      final result = await ref.read(authProvider.notifier).signUp(
            email: _emailController.text,
            password: _passwordController.text,
            photo: _imageUrl,
            firstName: _firstNameController.text,
            lastName: _lastNameController.text,
            phone: _phoneController.text,
          );

      setState(() {
        isApiCallProcess = false;
      });

      if (result == null) {
        _showSuccessDialog();
      } else {
        _showErrorDialog();
      }
    }
  }

  void _showSuccessDialog() {
    AwesomeDialog(
      context: context,
      animType: AnimType.leftSlide,
      headerAnimationLoop: false,
      dialogType: DialogType.success,
      showCloseIcon: true,
      title: 'Success',
      desc: 'Account created successfully!',
      btnOkOnPress: () {
        context.push((context) => const HomePage());
      },
      btnOkIcon: Icons.check_circle,
      onDismissCallback: (type) {
        context.push((context) => const HomePage());
      },
    ).show();
  }

  void _showErrorDialog() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      headerAnimationLoop: false,
      title: 'Error',
      desc: 'Failed to create account. Please try again.',
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.red,
    ).show();
  }
}
