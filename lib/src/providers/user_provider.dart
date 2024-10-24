import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../exports.dart';
import '../models/user_model.dart';
import 'auth_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

part 'user_provider.g.dart';

const _userTable = "users";

Future<UserModel?> getUser(Ref ref, String userId) async {
  final sb = ref.watch(supabaseProvider).client;
  final json = await sb.from(_userTable).select().eq('id', userId).single();
  return UserModel.fromJson(json);
}

@riverpod
FutureOr<UserModel?> currentUser(CurrentUserRef ref) async {
  final userId = ref.watch(authProvider);
  if (userId == null) return null;

  return getUser(ref, userId);
}

@riverpod
class DeleteUser extends _$DeleteUser {
  @override
  ProviderStatus<void> build(String userId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call(bool isAdmin) async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb.from(_userTable).delete().eq('id', userId);
      },
      onSuccess: (success) {
        ref.invalidate(userListProvider);
      },
    );
  }
}

@riverpod
class ToggleUserAdminStatus extends _$ToggleUserAdminStatus {
  @override
  ProviderStatus<void> build(String userId) => const ProviderStatus.initial();

  Future<ProviderStatus<void>> call(String userId, bool isAdmin) async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        await sb
            .from(_userTable)
            .update({'is_admin': isAdmin}).eq('id', userId);
      },
      onSuccess: (success) {
        ref.invalidate(userListProvider);
      },
    );
  }
}

@riverpod
bool isAdmin(IsAdminRef ref) {
  final isAdmin = ref.watch(
      currentUserProvider.select((v) => v.valueOrNull?.isAdmin ?? false));
  return isAdmin;
}

@riverpod
class UpdateUserProfileImage extends _$UpdateUserProfileImage {
  @override
  ProviderStatus<void> build() => const ProviderStatus.initial();
  Future<ProviderStatus<void>> call(XFile file) async {
    return await perform(
      (state) async {
        final sb = ref.watch(supabaseProvider).client;
        final user = ref.watch(currentUserProvider).value;
        if (user == null) throw 'User not found';

        // Compress the image
        final compressedImage = await FlutterImageCompress.compressWithList(
          await file.readAsBytes(),
          minHeight: 1024,
          minWidth: 1024,
          quality: 85,
          format: CompressFormat.png, // Specify the format
        );

        // Check file size (max 5MB for example)
        if (compressedImage.length > 5 * 1024 * 1024) {
          throw 'Image file is too large. Please choose a smaller image.';
        }

        // Delete the old image if it exists
        if (user.photo != null && user.photo!.isNotEmpty) {
          await sb.storage.from('users').remove(user.photo! as List<String>);
        }

        // Generate a unique file name
        final String fileName =
            '${user.id}_${DateTime.now().millisecondsSinceEpoch}.png';
        final String path = 'profile_images/$fileName';

        // Upload the new file
        await sb.storage.from('users').uploadBinary(path, compressedImage);

        // Get the public URL
        final String publicUrl = sb.storage.from('users').getPublicUrl(path);

        // Update the user record
        await sb
            .from(_userTable)
            .update({'photo': publicUrl}).eq('id', user.id);

        // Update the currentUserProvider
        ref.invalidate(currentUserProvider);
      },
    );
  }
}
