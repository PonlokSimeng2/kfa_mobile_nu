import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/helpers/build_context_helper.dart';
import 'package:kfa_mobile_nu/src/models/property_model.schema.dart';
import 'package:kfa_mobile_nu/src/models/user_model.dart';
import 'package:kfa_mobile_nu/src/providers/admin_provider.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';

import '../../models/base.dart';
import '../../models/property_model.dart';
import '../../providers/property_provider.dart';
import '../add_autoverbal_page.dart';
import '../edit_property_page.dart';

class AdminPropertyDetailPage extends StatefulHookConsumerWidget {
  final PropertyModel property;

  const AdminPropertyDetailPage({super.key, required this.property});

  @override
  ConsumerState<AdminPropertyDetailPage> createState() =>
      _AdminPropertyDetailPageState();
}

class _AdminPropertyDetailPageState
    extends ConsumerState<AdminPropertyDetailPage> {
  @override
  Widget build(BuildContext context) {
    final status = useState(widget.property.status);
    final redColor = Theme.of(context).colorScheme.error.withOpacity(0.8);
    final isAdmin = ref.watch(isAdminProvider);
    final autoVerbalAdded = useState(widget.property.autoVerbalAdded);
    final scrollCtr = useScrollController();

    Widget? bottomAppBar;
    if (isAdmin) {
      bottomAppBar = BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: switch (status.value) {
          PropertyAndAutoVerbalStatus.pending ||
          PropertyAndAutoVerbalStatus.resubmit =>
            _buildApproveRejectButton(context, status),
          PropertyAndAutoVerbalStatus.approved => _buildApproved(),
          PropertyAndAutoVerbalStatus.rejected =>
            _buildRejected(redColor, context)
        },
      );
    }

    final currentUserId = ref.watch(authProvider);
    final isCurrentUserOwner = widget.property.user.id == currentUserId;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
      ),
      bottomNavigationBar: bottomAppBar,
      body: SingleChildScrollView(
        controller: scrollCtr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image carousel
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: widget.property.images.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: widget.property.images[index],
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.property.title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.property.status.statusColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          widget.property.status.name.toUpperCase(),
                          style: TextStyle(
                            color: widget.property.status.statusTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${widget.property.propertyType.name} for ${widget.property.listingType.name}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Price: \$${widget.property.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Description:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(widget.property.description),
                  const SizedBox(height: 16),
                  Card.outlined(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow('Area', '${widget.property.sqm} sqm'),
                          _buildDetailRow('Bedrooms',
                              '${widget.property.bedrooms ?? "N/A"}'),
                          _buildDetailRow('Bathrooms',
                              '${widget.property.bathrooms ?? "N/A"}'),
                          _buildDetailRow(
                              'Floors', '${widget.property.floors ?? "N/A"}'),
                          _buildDetailRow(
                              'Parking', '${widget.property.parking ?? "N/A"}'),
                          _buildDetailRow(
                            'Living Rooms',
                            '${widget.property.livingRooms ?? "N/A"}',
                          ),
                          _buildDetailRow(
                            'Land Size',
                            '${widget.property.landLength} x ${widget.property.landWidth} m',
                          ),
                          if (widget.property.houseLength != null &&
                              widget.property.houseWidth != null)
                            _buildDetailRow(
                              'House Size',
                              '${widget.property.houseLength} x ${widget.property.houseWidth} m',
                            ),
                          _buildDetailRow(
                            'Price per sqm',
                            '\$${widget.property.pricePerSqm.toStringAsFixed(2)}',
                          ),
                          _buildDetailRow(
                              'Location', widget.property.province.name),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Submitted by: ${widget.property.user.fullName}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Submission Date: ${widget.property.createdAt.toLocal().toString().split(' ')[0]}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (isCurrentUserOwner &&
                      status.value == PropertyAndAutoVerbalStatus.approved) ...[
                    if (!autoVerbalAdded.value)
                      TextButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Add to AutoVerbal'),
                        onPressed: () async {
                          final result = await context.push((_) =>
                              AddAutoVerbalPage(
                                  propertyModel: widget.property));
                          if (result == true) {
                            autoVerbalAdded.value = true;
                            scrollCtr.jumpTo(0);
                          }
                        },
                      )
                    else
                      Text('(Added to AutoVerbal)',
                          style: Theme.of(context).textTheme.labelSmall),
                  ],
                  const SizedBox(height: 24),
                  if (isCurrentUserOwner) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () {
                            context.push((_) =>
                                EditPropertyPage(initial: widget.property));
                          },
                          child: const Text('Edit Property'),
                        ),
                        const SizedBox(width: 16),
                        FilledButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete Property'),
                                  content: const Text(
                                      'Are you sure you want to delete this property?'),
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
                                          deletePropertyProvider(
                                                  widget.property.id)
                                              .notifier,
                                        );
                                        await delete();
                                        close();
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
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ),
                          child: const Text('Delete Property'),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildApproved() {
    return const Center(
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 32,
            ),
            SizedBox(width: 8),
            Text(
              'Approved',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildRejected(Color redColor, BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cancel,
            color: redColor,
            size: 32,
          ),
          const SizedBox(width: 8),
          Text(
            'Rejected',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: redColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Row _buildApproveRejectButton(
    BuildContext context,
    ValueNotifier<PropertyAndAutoVerbalStatus> status,
  ) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    title: const Text(
                      'Confirm Approval',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    content: const Text(
                      'Are you sure you want to approve this property?',
                      style: TextStyle(fontSize: 16),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Approve',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );

              if (confirmed == true && context.mounted) {
                final approve = ref
                    .read(approvePropertyProvider(widget.property.id).notifier);
                final closeLoading = BotToast.showLoading();
                final result = await approve();
                closeLoading();
                if (result.isSuccess) {
                  status.value = PropertyAndAutoVerbalStatus.approved;
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Property approved')),
                    );
                  }
                } else {
                  BotToast.showText(text: result.failure!.message());
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(12)),
                border: Border.all(color: Colors.grey),
              ),
              child: const Text(
                'Approve',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () async {
              final rejectReason = await showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  String? rejectReason;

                  return AlertDialog(
                    title: const Text('Reject Property'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                            'Are you sure you want to reject this property?'),
                        const SizedBox(height: 16),
                        TextField(
                          autofocus: true,
                          decoration: const InputDecoration(
                            labelText: 'Reason for rejection',
                            border: OutlineInputBorder(),
                          ),
                          textCapitalization: TextCapitalization.sentences,
                          maxLines: 3,
                          onChanged: (value) => rejectReason = value,
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (rejectReason.isNullOrBlank) {
                            BotToast.showText(text: 'Please provide reason!');
                            return;
                          }
                          Navigator.of(context).pop(rejectReason);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                        child: const Text(
                          'Reject',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              );

              if (rejectReason.isNotNullOrBlank && context.mounted) {
                final reject = ref
                    .read(rejectPropertyProvider(widget.property.id).notifier);
                final closeLoading = BotToast.showLoading();
                final result = await reject(reason: rejectReason);
                closeLoading();
                if (result.isSuccess) {
                  status.value = PropertyAndAutoVerbalStatus.rejected;
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Property rejected')),
                    );
                  }
                } else {
                  BotToast.showText(text: result.failure!.message());
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(12)),
                border: Border.all(color: Colors.grey),
              ),
              child: const Text(
                'Reject',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
