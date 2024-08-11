import 'package:intl/intl.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/pages/admin/admin_auto_verbal_detail_page.dart';
import 'package:kfa_mobile_nu/src/pages/client_auto_verbal_detail_page.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';

import '../providers/auto_verbal_provider.dart';
import '../widgets/auth_wrapper_widget.dart';

class AutoVerbalListPage extends ConsumerStatefulWidget {
  const AutoVerbalListPage({super.key, this.openItemInAdminPage = false});

  final bool openItemInAdminPage;

  @override
  ConsumerState<AutoVerbalListPage> createState() => _AutoVerbalListPageState();
}

class _AutoVerbalInherited extends InheritedWidget {
  final bool openItemInAdminPage;

  const _AutoVerbalInherited({
    super.key,
    required this.openItemInAdminPage,
    required super.child,
  });

  static _AutoVerbalInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_AutoVerbalInherited>();
  }

  @override
  bool updateShouldNotify(_AutoVerbalInherited oldWidget) {
    return openItemInAdminPage != oldWidget.openItemInAdminPage;
  }
}

class _AutoVerbalListPageState extends ConsumerState<AutoVerbalListPage> {
  PropertyAndAutoVerbalStatus? _status;

  @override
  Widget build(BuildContext context) {
    final userAsync = ref.watch(currentUserProvider);
    final firstPageCountAsync = ref.watch(
      autoVerbalListProvider(
        page: 0,
        filter: AutoVerbalListFilter(
          // status: _status,
          userId: userAsync.value?.id,
          statuses: PropertyAndAutoVerbalStatus.values.lock,
        ),
      ).select((v) => v.whenData((v) => v.length)),
    );

    return AuthWrapperWidget(
      child: _AutoVerbalInherited(
        openItemInAdminPage: widget.openItemInAdminPage,
        child: Scaffold(
          appBar: widget.openItemInAdminPage
              ? null
              : AppBar(
                  title: const Text('Auto Verbal List'),
                ),
          body: Column(
            children: [
              _buildFilterButtons(),
              Expanded(
                child: firstPageCountAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Error: $error')),
                  data: (count) {
                    if (count == 0) {
                      return const Center(
                        child: Text(
                          'No auto verbals available',
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    }
                    return _GridView(
                      status: _status,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            _buildFilterButton('All', Icons.list, null),
            const SizedBox(width: 10),
            _buildFilterButton(
              'Pending',
              Icons.pending,
              PropertyAndAutoVerbalStatus.pending,
            ),
            const SizedBox(width: 10),
            _buildFilterButton(
              'Approved',
              Icons.check_circle,
              PropertyAndAutoVerbalStatus.approved,
            ),
            const SizedBox(width: 10),
            _buildFilterButton(
              'Rejected',
              Icons.cancel,
              PropertyAndAutoVerbalStatus.rejected,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(PropertyAndAutoVerbalStatus? status) {
    final statuses = ref.watch(_filterProvider).statuses;
    final isSelected = statuses.contains(status) && statuses.length <= 2;
    final isAllSelected =
        status == null && statuses.length == PropertyAndAutoVerbalStatus.values.length;

    return ElevatedButton(
      onPressed: () {
        if (isSelected) return;
        ref.read(_filterProvider.notifier).update((old) {
          if (status == null) {
            return old.copyWith(
              statuses: PropertyAndAutoVerbalStatus.values.toIList(),
            );
          } else {
            return old.copyWith(statuses: [status].lock);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected || isAllSelected ? kPrimaryColor : Colors.white,
      ),
      child: Text(
        status?.name.capitalize() ?? 'All',
        style: TextStyle(
          color: isSelected || isAllSelected ? Colors.white : Colors.grey[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _GridView extends ConsumerWidget {
  final PropertyAndAutoVerbalStatus? status;
  const _GridView({this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(autoVerbalListProvider);
      },
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final paginated = ref.watch(
            autoVerbalAtIndexProvider(
              index: index,
              filter: ref.watch(_filterProvider),
            ),
          );
          return paginated?.whenOrNull(
            loading: (isFirstItem) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (item) {
              return _buildAutoVerbalCard(context, item);
            },
          );
        },
      ),
    );
  }

  Widget _buildAutoVerbalCard(BuildContext context, AutoVerbalModel item) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          if (openItemInAdminPage) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AdminAutoVerbalDetailPage(
                  autoVerbal: item,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClientDetailAutoVerbalPage(
                  data: item,
                ),
              ),
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: CachedNetworkImage(
                  imageUrl: item.image.first,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${item.autoVerbalId}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.province.name,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: item.status.statusColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      item.status.name.capitalize(),
                      style: TextStyle(
                        color: item.status.statusTextColor,
                        fontSize: 12,
                      ),
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
}
