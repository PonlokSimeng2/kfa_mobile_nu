import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/models/base.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:kfa_mobile_nu/src/widgets/max_width_box.dart';
import 'package:intl/intl.dart'; // Added for date formatting
import 'package:kfa_mobile_nu/src/providers/report_provider.dart'; // Added for property count

class UserDetailPage extends ConsumerStatefulWidget {
  final UserModel user;

  const UserDetailPage({super.key, required this.user});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends ConsumerState<UserDetailPage> {
  bool isAdmin = false;
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
// Password validation rules
  bool _hasMinLength = false;
  bool _hasUppercase = false;
  bool _hasLowercase = false;
  bool _hasNumber = false;
  bool _hasSpecialChar = false;
  bool _isObscure = true;
  @override
  void initState() {
    super.initState();
    isAdmin = widget.user.isAdmin;
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _otpController.dispose();
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

  @override
  Widget build(BuildContext context) {
    final currentUserId = ref.watch(authProvider);
    final isSelf = currentUserId == widget.user.id;
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [
          if (!isSelf)
            GFButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Delete'),
                      content: const Text(
                        'Are you sure you want to delete this user?',
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ),
                          child: const Text('Delete'),
                          onPressed: () async {
                            final close = BotToast.showLoading();
                            final delete = ref.read(
                              deleteUserProvider(
                                widget.user.id,
                              ).notifier,
                            );
                            final result =
                                await delete.call(widget.user.isAdmin);
                            close();
                            if (result.isFailure) {
                              BotToast.showText(
                                  text: result.failure!.message());
                              return;
                            }
                            if (!context.mounted) return;
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              text: 'Delete User',
              color: Colors.red,
            ),
        ],
      ),
      body: MaxWidthBox(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: 'user_avatar_${widget.user.userId}',
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[200],
                      child: ClipOval(
                        child: widget.user.photo != null
                            ? CachedNetworkImage(
                                imageUrl: widget.user.photo!,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error, color: Colors.red),
                                fit: BoxFit.cover,
                                width: 120,
                                height: 120,
                              )
                            : const Icon(Icons.person,
                                size: 60, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _buildInfoTile('Full Name', widget.user.fullName, context),
                _buildInfoTile('Email', widget.user.email, context),
                _buildInfoTile('Phone', widget.user.phone, context),
                _buildInfoTile('User ID', widget.user.userId, context),
                // _buildInfoTile(
                //     'VPoints', widget.user.vpoints.toString(), context),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.id,
                        statuses: [PropertyAndAutoVerbalStatus.approved].lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.propertyCount,
                        ),
                      ),
                    );
                    return _buildInfoTile('Total Property',
                        '${count?.toString()} cases' ?? "...", context);
                  },
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(
                      countPropertyAndAutoVerbalProvider(
                        userId: widget.user.id,
                        statuses: [PropertyAndAutoVerbalStatus.approved].lock,
                      ).select(
                        (v) => v.whenOrNull(
                          data: (data) => data.autoVerbalCount,
                        ),
                      ),
                    );
                    return _buildInfoTile('Total Auto Verbal',
                        '${count?.toString()} cases' ?? "...", context);
                  },
                ),
                _buildInfoTile(
                  'Joined At',
                  _formatDate(widget.user.joinedAt),
                  context,
                ),

                ListTile(
                  title: Text('Admin'),
                  trailing: Switch(
                    value: isAdmin,
                    onChanged: isSelf
                        ? null
                        : (bool value) async {
                            setState(() {
                              isAdmin = value;
                            });
                            ref
                                .read(toggleUserAdminStatusProvider(
                                        widget.user.id)
                                    .notifier)
                                .call(widget.user.id, value);
                          },
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          onChanged: _updatePasswordStrength,
                          keyboardType: TextInputType.visiblePassword,
                          controller: _newPasswordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: 'Password',
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kPrimaryColor, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: kPrimaryColor, width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                color: context.isDarkMode
                                    ? themeData.primaryColorLight
                                    : kImageColor,
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
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
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: 50,
                        child: GFButton(
                          onPressed: () async {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            final close = BotToast.showLoading();
                            final result = await ref
                                .read(authProvider.notifier)
                                .updateUserPassword(
                                  userId: widget.user.id,
                                  newPassword: _newPasswordController.text,
                                );
                            close();
                            if (result == null) {
                              // BotToast.showText(
                              //     text: 'Password updated successfully!');
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.success,
                                animType: AnimType.rightSlide,
                                headerAnimationLoop: false,
                                title: 'Update Password Successfully!',
                                btnOkIcon: Icons.cancel,
                                btnOkColor: Colors.red,
                              ).show();
                              // Navigator.of(context).pop();
                            } else {
                              // BotToast.showText(text: result);
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                headerAnimationLoop: false,
                                title: 'Update Password Failed!',
                                btnOkIcon: Icons.cancel,
                                btnOkColor: Colors.red,
                              ).show();
                              Navigator.of(context).pop();
                            }
                            _formKey.currentState!.reset();
                            _newPasswordController.clear();
                          },
                          text: 'Update',
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                backgroundColor: Colors.grey[100]),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                backgroundColor: Colors.grey[100]),
          ),
          const Divider(height: 24),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
