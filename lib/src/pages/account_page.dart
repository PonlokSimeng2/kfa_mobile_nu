import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/cache_provider.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  XFile? _file;
  Uint8List? _imageBytes;
  bool _isObscure = true;
  final ImagePicker _picker = ImagePicker();
  final ImageCropper _cropper = ImageCropper();

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _openImage() async {
    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        CroppedFile? croppedFile = await _cropper.cropImage(
          sourcePath: pickedFile.path,
          // aspectRatioPresets: [CropAspectRatioPreset.square],
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: 'Crop Image',
              toolbarColor: Colors.blue,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.square,
              lockAspectRatio: true,
            ),
            IOSUiSettings(title: 'Crop Image'),
          ],
        );

        if (croppedFile != null) {
          final bytes = await File(croppedFile.path).readAsBytes();
          setState(() {
            _file = XFile(croppedFile.path);
            _imageBytes = bytes;
          });
        }
      }
    } catch (e) {
      print("Error picking or cropping image: $e");
    }
  }

  Future<void> _updateUserData(UserModel user) async {
    // Implement your update logic here
    // For example:
    // await ref.read(userProvider.notifier).updateUser(user);
    Fluttertoast.showToast(msg: 'User data updated successfully');
  }

  Future<void> _logOut() async {
    final prefs = ref.read(sharePrefProvider);
    await prefs.clear();
    await ref.read(authProvider.notifier).signOut();
    ref.invalidate(currentUserProvider);
    Fluttertoast.showToast(msg: 'Logged out successfully');
    // Navigate to login page
  }

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProvider);

    return AuthWrapperWidget(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 250, 246),
        appBar: AppBar(
          backgroundColor: kwhite_new,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.chevron_left, size: 35),
          ),
          title: Text(
            'Account',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 70,
        ),
        body: userAsync.when(
          data: (user) => _buildContent(context, user),
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, UserModel? user) {
    if (user == null) {
      return const Center(child: Text('No user data available'));
    }

    _firstNameController.text = user.firstName ?? '';
    _lastNameController.text = user.lastName ?? '';
    _emailController.text = user.email ?? '';
    _phoneController.text = user.phone ?? '';

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfileHeader(user),
          _buildForm(user),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(UserModel user) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.blue, // kwhite_new
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: _openImage,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    GFAvatar(
                      size: 65,
                      backgroundImage: _imageBytes != null
                          ? MemoryImage(_imageBytes!)
                          : NetworkImage('') as ImageProvider,
                    ),
                    Container(
                      height: 20,
                      width: 50,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:
                          const Icon(Icons.edit, color: Colors.white, size: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name: ${user.firstName} ${user.lastName}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ID: ${user.userId}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildForm(UserModel user) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Update your profile details below',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 32),
          _buildInputField(
            icon: Icons.person,
            label: 'First Name',
            initialValue: user.firstName ?? '',
            onChanged: (value) => _firstNameController.text = value,
          ),
          SizedBox(height: 24),
          _buildInputField(
            icon: Icons.person_outline,
            label: 'Last Name',
            initialValue: user.lastName ?? '',
            onChanged: (value) => _lastNameController.text = value,
          ),
          SizedBox(height: 24),
          _buildInputField(
            icon: Icons.phone_android,
            label: 'Phone',
            initialValue: user.phone ?? '',
            onChanged: (value) => _phoneController.text = value,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 24),
          _buildInputField(
            icon: Icons.alternate_email,
            label: 'Email',
            initialValue: user.email ?? '',
            onChanged: (value) => _emailController.text = value,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 24),
          _buildPasswordField(),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required IconData icon,
    required String label,
    required String initialValue,
    required Function(String) onChanged,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blue[600], size: 22),
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            controller: _passwordController,
            obscureText: _isObscure,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.lock_outline, color: Colors.blue[600], size: 22),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.blue[600],
                  size: 22,
                ),
                onPressed: () => setState(() => _isObscure = !_isObscure),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Save Changes'),
            onPressed: () async {
              final updatedUser = UserModel(
                id: ref.read(currentUserProvider).value!.id,
                firstName: _firstNameController.text,
                lastName: _lastNameController.text,
                email: _emailController.text,
                phone: _phoneController.text, userId: '', photo: '', vpoints: 0,
                isAdmin: false, joinedAt: DateTime.now(),
                // Add other fields as necessary
              );
              await _updateUserData(updatedUser);
            },
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            child: Text('Log Out'),
            onPressed: _logOut,
          )
        ],
      ),
    );
  }
}
