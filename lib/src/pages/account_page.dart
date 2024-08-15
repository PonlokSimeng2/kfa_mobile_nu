import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getwidget/getwidget.dart';
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

class _AccountPageState extends ConsumerState<AccountPage> {
  XFile? _file;
  Uint8List? _imageBytes;
  final bool _isObscure = true;
  final ImagePicker _picker = ImagePicker();
  final ImageCropper _cropper = ImageCropper();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

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

  Future<void> _openImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final bytes = await pickedFile.readAsBytes();
        setState(() {
          _file = pickedFile;
          _imageBytes = bytes;
        });
      }
    } catch (e) {
      print("Error picking or cropping image: $e");
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
    // Navigate to login page
  }

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProvider);

    return AuthWrapperWidget(
      child: Scaffold(
        backgroundColor:
            context.isDarkMode ? Colors.grey[900] : const Color.fromARGB(255, 245, 250, 246),
        appBar: AppBar(
          backgroundColor: context.isDarkMode ? Colors.grey[800] : kPrimaryColor,
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
                onTap: _openImage,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    GFAvatar(
                      size: 65,
                      backgroundImage: _imageBytes != null
                          ? MemoryImage(_imageBytes!)
                          : const NetworkImage('') as ImageProvider,
                    ),
                    Container(
                      height: 20,
                      width: 50,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.edit, color: Colors.white, size: 16),
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
            color: context.isDarkMode ? Colors.black12 : Colors.blue.withOpacity(0.1),
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
            color: context.isDarkMode ? Colors.black12 : Colors.grey.withOpacity(0.1),
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
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
                color: context.isDarkMode ? Colors.black12 : Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
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
              contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: context.isDarkMode ? Colors.blue[300] : Colors.blue[600],
                  size: 22,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Change Password'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Old Password',
                              ),
                              onChanged: (value) {
                                _oldPasswordController.text = value;
                              },
                            ),
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'New Password',
                              ),
                              onChanged: (value) {
                                _newPasswordController.text = value;
                              },
                            ),
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Confirm New Password',
                              ),
                              onChanged: (value) {
                                _confirmPasswordController.text = value;
                              },
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Change'),
                            onPressed: () async {
                              if (_newPasswordController.text != _confirmPasswordController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('New passwords do not match'),
                                  ),
                                );
                                return;
                              }

                              final currentUser = ref.read(currentUserProvider).value;
                              if (currentUser != null) {
                                try {
                                  final sb = ref.read(supabaseProvider).client;
                                  await sb.auth.updateUser(
                                    UserAttributes(
                                      password: _newPasswordController.text,
                                    ),
                                  );

                                  // Update the user model
                                  final updatedUser = currentUser.copyWith(
                                      // Note: We don't store the password in the user model
                                      );

                                  // Update the user in the database
                                  await sb
                                      .from('users')
                                      .update(updatedUser.toJson())
                                      .eq('id', updatedUser.id);

                                  // Refresh the currentUserProvider
                                  ref.refresh(currentUserProvider);
                                  context.pushReplace(
                                    (context) => const LoginPage(
                                      openAsPage: true,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Password changed successfully',
                                      ),
                                    ),
                                  );
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Failed to change password: $e',
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        ],
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
