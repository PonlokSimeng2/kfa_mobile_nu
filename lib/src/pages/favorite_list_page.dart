import 'package:kfa_mobile_nu/src/pages/property_list_page.dart';
import 'package:kfa_mobile_nu/src/providers/favortie_provider.dart';

import '../../exports.dart';
import '../providers/property_provider.dart';

class FavoriteListPage extends ConsumerWidget {
  const FavoriteListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteIds = ref.watch(favoritePropertyProvider).valueOrNull ?? const IList.empty();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: favoriteIds.isEmpty
          ? const Center(
              child: Text('No favorites'),
            )
          : PropertyListPage(
              initialFilter: PropertyListFilter(
                propertyIds: favoriteIds,
              ),
            ),
    );
  }
}
