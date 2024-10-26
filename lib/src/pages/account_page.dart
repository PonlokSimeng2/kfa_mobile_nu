import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/pages/login_page.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/cache_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/auth_wrapper_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

const _cachePasswordKey = "cached-password-key";

class _AccountPageState extends ConsumerState<AccountPage> {
  XFile? _file;
  Uint8List? _imageBytes;
  final bool _isObscure = true;
  final ImagePicker _picker = ImagePicker();
  final ImageCropper _cropper = ImageCropper();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isOldPasswordVisible = false;
  bool isNewPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
// Password validation rules
  bool _hasMinLength = false;
  bool _hasUppercase = false;
  bool _hasLowercase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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

  Future<void> _openImage() async {
    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final bytes = await pickedFile.readAsBytes();
        setState(() {
          _imageBytes = bytes;
        });
        await _updateProfileImage(bytes);
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Error picking or cropping image: $e");
    }
  }

  Future<void> _updateProfileImage(Uint8List imageBytes) async {
    try {
      final sb = ref.read(supabaseProvider).client;
      final user = ref.read(currentUserProvider).value;
      if (user == null) {
        Fluttertoast.showToast(msg: 'User not found');
        return;
      }

      // Compress the image
      final compressedImage = await FlutterImageCompress.compressWithList(
        imageBytes,
        minHeight: 1024,
        minWidth: 1024,
        quality: 85,
        format: CompressFormat.png, // Specify the format
      );

      // Check file size (max 5MB for example)
      if (compressedImage.length > 5 * 1024 * 1024) {
        Fluttertoast.showToast(
          msg: 'Image file is too large. Please choose a smaller image.',
        );
        return;
      }

      // Delete the old image if it exists
      if (user.photo != null && user.photo!.isNotEmpty) {
        await _deleteOldProfileImage(user.photo!);
      }

      // Generate a unique file name
      final String fileName =
          '${user.id}_${DateTime.now().millisecondsSinceEpoch}.png';

      // Upload the new file
      await sb.storage.from('files').uploadBinary(fileName, compressedImage);

      // Get the public URL
      final String publicUrl = sb.storage.from('files').getPublicUrl(fileName);

      // Update the user record
      await sb.from('users').update({'photo': publicUrl}).eq('id', user.id);

      Fluttertoast.showToast(msg: 'Profile image updated successfully');
      ref.invalidate(currentUserProvider);
    } catch (e) {
      print('Error updating profile image: $e');
      Fluttertoast.showToast(
        msg: 'Failed to update profile image: ${e.toString()}',
      );
    }
  }

  Future<void> _deleteOldProfileImage(String oldImageUrl) async {
    try {
      final sb = ref.read(supabaseProvider).client;
      final uri = Uri.parse(oldImageUrl);
      final pathSegments = uri.pathSegments;
      if (pathSegments.length < 2) {
        throw Exception('Invalid image URL');
      }
      final bucketName = pathSegments[pathSegments.length - 2];
      final fileName = pathSegments.last;

      await sb.storage.from(bucketName).remove([fileName]);
    } catch (e) {
      print('Error deleting old profile image: $e');
      // We don't throw here because we still want to proceed with uploading the new image
    }
  }

  Future<void> _updateUserData(UserModel user) async {
    try {
      final sb = ref.read(supabaseProvider).client;
      await sb.from('users').update({
        'first_name': user.firstName,
        'last_name': user.lastName,
        'email': user.email,
        'phone': user.phone,
      }).eq('id', user.id);

      // Invalidate the currentUserProvider to force a refresh
      ref.invalidate(currentUserProvider);

      Fluttertoast.showToast(msg: 'User data updated successfully');
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to update user data: $e');
    }
  }

  Future<void> _logOut() async {
    final prefs = ref.read(sharePrefProvider);
    await prefs.clear();
    await ref.read(authProvider.notifier).signOut();
    ref.invalidate(currentUserProvider);
    Fluttertoast.showToast(msg: 'Logged out successfully');
    context.pushReplace(
      (context) => const LoginPage(
        openAsPage: true,
      ),
    );
    // Navigate to login page
  }

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProvider);
    final cache = ref.read(sharePrefProvider);
    final cachedPassword = cache.getString(_cachePasswordKey);
    _passwordController = TextEditingController(text: cachedPassword);
    return AuthWrapperWidget(
      child: Scaffold(
        backgroundColor: context.isDarkMode
            ? Colors.grey[900]
            : const Color.fromARGB(255, 245, 250, 246),
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? Colors.grey[800] : kPrimaryColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.chevron_left,
              size: 35,
              color: context.isDarkMode ? Colors.white : Colors.white,
            ),
          ),
          title: Text(
            'Account',
            style: TextStyle(
              color: context.isDarkMode ? Colors.white : Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          toolbarHeight: 70,
        ),
        body: userAsync.when(
          data: (user) => _buildContent(context, user),
          loading: () => const Center(child: CircularProgressIndicator()),
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
      decoration: BoxDecoration(
        color: context.isDarkMode ? Colors.grey[800] : kPrimaryColor,
        borderRadius: const BorderRadius.only(
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
                onLongPress: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Delete Profile Picture'),
                        content: const Text(
                            'Are you sure you want to delete your profile picture?'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Delete'),
                            onPressed: () async {
                              setState(() {
                                _imageBytes = null;
                              });
                              if (user.photo != null) {
                                await _deleteOldProfileImage(user.photo!);
                              }

                              try {
                                final close = BotToast.showLoading();
                                final sb = ref.read(supabaseProvider).client;
                                await sb
                                    .from('users')
                                    .update({'photo': null}).eq('id', user.id);
                                close();
                                Fluttertoast.showToast(
                                    msg: 'Profile image updated successfully');
                                ref.invalidate(currentUserProvider);
                              } catch (e) {
                                Fluttertoast.showToast(
                                    msg: 'Failed to update user data: $e');
                              }

                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                onTap: _openImage,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _imageBytes != null
                          ? MemoryImage(_imageBytes!)
                          : user.photo != null
                              ? NetworkImage(user.photo!)
                              : null,
                      child: _imageBytes == null && user.photo == null
                          ? const Icon(Icons.person, size: 50)
                          : null,
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
                    ),
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
                    style: TextStyle(
                      color: context.isDarkMode ? Colors.white : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ID: ${user.userId}',
                    style: TextStyle(
                      color: context.isDarkMode ? Colors.white : Colors.white,
                      fontSize: 18,
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

  Widget _buildForm(UserModel user) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        color: context.isDarkMode ? Colors.grey[800] : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: context.isDarkMode
                ? Colors.black12
                : Colors.blue.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 20,
            offset: const Offset(0, 10),
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
              color: context.isDarkMode ? Colors.white : Colors.blue[800],
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Update your profile details below',
            style: TextStyle(
              fontSize: 16,
              color: context.isDarkMode ? Colors.grey[400] : Colors.grey[600],
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 32),
          _buildInputField(
            icon: Icons.person,
            label: 'First Name',
            initialValue: user.firstName ?? '',
            onChanged: (value) => _firstNameController.text = value,
          ),
          const SizedBox(height: 24),
          _buildInputField(
            icon: Icons.person_outline,
            label: 'Last Name',
            initialValue: user.lastName ?? '',
            onChanged: (value) => _lastNameController.text = value,
          ),
          const SizedBox(height: 24),
          _buildInputField(
            icon: Icons.phone_android,
            label: 'Phone',
            initialValue: user.phone ?? '',
            onChanged: (value) => _phoneController.text = value,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 24),
          _buildInputField(
            icon: Icons.alternate_email,
            label: 'Email',
            initialValue: user.email ?? '',
            onChanged: (value) => _emailController.text = value,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 24),
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
        color: context.isDarkMode ? Colors.grey[700] : Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: context.isDarkMode
                ? Colors.black12
                : Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: TextStyle(
          fontSize: 16,
          color: context.isDarkMode ? Colors.white : Colors.black87,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: context.isDarkMode ? Colors.blue[300] : Colors.blue[600],
            size: 22,
          ),
          labelText: label,
          labelStyle: TextStyle(
            color: context.isDarkMode ? Colors.grey[400] : Colors.grey[600],
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
            color: context.isDarkMode ? Colors.grey[700] : Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: context.isDarkMode
                    ? Colors.black12
                    : Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            readOnly: true,
            controller: _passwordController,
            obscureText: _isObscure,
            style: TextStyle(
              fontSize: 16,
              color: context.isDarkMode ? Colors.white : Colors.black87,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline,
                color: context.isDarkMode ? Colors.blue[300] : Colors.blue[600],
                size: 22,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: context.isDarkMode ? Colors.grey[400] : Colors.grey[600],
                fontSize: 14,
              ),
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
                  Icons.edit,
                  color:
                      context.isDarkMode ? Colors.blue[300] : Colors.blue[600],
                  size: 22,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: const Text('Change Password'),
                            content: Form(
                              key: _formKey,
                              child: SizedBox(
                                width: 300,
                                height: 230,
                                child: Column(
                                  // shrinkWrap: true,
                                  children: [
                                    TextFormField(
                                      controller: _oldPasswordController,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: !isOldPasswordVisible,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelText: 'Old Password',
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: kPrimaryColor,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            color: context.isDarkMode
                                                ? Theme.of(context)
                                                    .primaryColorLight
                                                : kImageColor,
                                            isOldPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isOldPasswordVisible =
                                                  !isOldPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value != _passwordController.text) {
                                          return 'Old Password is incorrect';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      onChanged: _updatePasswordStrength,
                                      controller: _newPasswordController,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: !isNewPasswordVisible,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelText: 'New Password',
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: kPrimaryColor,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            color: context.isDarkMode
                                                ? Theme.of(context)
                                                    .primaryColorLight
                                                : kImageColor,
                                            isNewPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isNewPasswordVisible =
                                                  !isNewPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return r'Strong password at least 6 characters (Aa1#85...)';
                                        }
                                        if (!_isPasswordStrong(value)) {
                                          return r'Strong password at least 6 characters (Aa1#85...)';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      controller: _confirmPasswordController,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: !isConfirmPasswordVisible,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        labelText: 'Confirm New Password',
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: kPrimaryColor,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: kPrimaryColor, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.red, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            color: context.isDarkMode
                                                ? Theme.of(context)
                                                    .primaryColorLight
                                                : kImageColor,
                                            isConfirmPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isConfirmPasswordVisible =
                                                  !isConfirmPasswordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              // Inside _AccountPageState class, update the onPressed method in the Change password button:

                              TextButton(
                                child: const Text('Change'),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    // First check if old password matches
                                    if (_oldPasswordController.text !=
                                        _passwordController.text) {
                                      AwesomeDialog(
                                        context: context,
                                        animType: AnimType.leftSlide,
                                        headerAnimationLoop: false,
                                        dialogType: DialogType.error,
                                        dismissOnTouchOutside: true,
                                        showCloseIcon: false,
                                        title: "Invalid Password",
                                        desc:
                                            "Your current password is incorrect. Please verify and try again.",
                                        autoHide: const Duration(seconds: 3),
                                      ).show();
                                      return;
                                    }

                                    // Then check if new passwords match
                                    if (_newPasswordController.text !=
                                        _confirmPasswordController.text) {
                                      AwesomeDialog(
                                        context: context,
                                        animType: AnimType.leftSlide,
                                        headerAnimationLoop: false,
                                        dialogType: DialogType.error,
                                        dismissOnTouchOutside: true,
                                        showCloseIcon: false,
                                        title: "New password doesn't match",
                                        autoHide: const Duration(seconds: 3),
                                      ).show();
                                      return;
                                    }

                                    final newPassword =
                                        _newPasswordController.text;
                                    _updatePasswordStrength(newPassword);
                                    if (!_isPasswordStrong(newPassword)) {
                                      AwesomeDialog(
                                        context: context,
                                        animType: AnimType.leftSlide,
                                        headerAnimationLoop: false,
                                        dialogType: DialogType.error,
                                        dismissOnTouchOutside: true,
                                        showCloseIcon: false,
                                        title: "Password is not strong enough",
                                        desc:
                                            "Password must be at least 6 characters long, contain uppercase and lowercase letters, numbers, and special characters.",
                                        autoHide: const Duration(seconds: 3),
                                      ).show();
                                      return;
                                    }

                                    final currentUser =
                                        ref.read(currentUserProvider).value;
                                    if (currentUser != null) {
                                      try {
                                        final sb =
                                            ref.read(supabaseProvider).client;
                                        await sb.auth.updateUser(
                                          UserAttributes(
                                            password:
                                                _newPasswordController.text,
                                          ),
                                        );

                                        // Update the user model
                                        final updatedUser =
                                            currentUser.copyWith();

                                        // // Update the user in the database
                                        await sb
                                            .from('users')
                                            .update(updatedUser.toJson())
                                            .eq('id', updatedUser.id);

                                        // Show success message
                                        AwesomeDialog(
                                          context: context,
                                          animType: AnimType.leftSlide,
                                          headerAnimationLoop: false,
                                          dialogType: DialogType.success,
                                          dismissOnTouchOutside: true,
                                          showCloseIcon: false,
                                          title:
                                              "Password changed successfully",
                                          autoHide: const Duration(seconds: 3),
                                        ).show();
                                        // Navigator.of(context).pop();
                                        // Clear the password fields
                                        _oldPasswordController.clear();
                                        _newPasswordController.clear();
                                        _confirmPasswordController.clear();

                                        // Close the dialog
                                      } catch (e) {
                                        AwesomeDialog(
                                          context: context,
                                          animType: AnimType.leftSlide,
                                          headerAnimationLoop: false,
                                          dialogType: DialogType.error,
                                          dismissOnTouchOutside: true,
                                          showCloseIcon: false,
                                          title: "Failed to change password",
                                          desc: e.toString(),
                                          autoHide: const Duration(seconds: 3),
                                        ).show();
                                      }
                                    }
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
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
          FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: const Text(
              'Save Changes',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              final updatedUser = UserModel(
                id: ref.read(currentUserProvider).value!.id,
                firstName: _firstNameController.text,
                lastName: _lastNameController.text,
                email: _emailController.text,
                phone: _phoneController.text,
                userId: '',
                photo: '',
                vpoints: 0,
                isAdmin: false,
                joinedAt: DateTime.now(),
              );
              await _updateUserData(updatedUser);
            },
          ),
          const SizedBox(width: 16),
          FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: _logOut,
            child: const Text('Log Out', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
