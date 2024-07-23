import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/exports.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';

import '../../models/auto_verbal_model.dart';
import '../../models/base.dart';
import '../../providers/auto_verbal_provider.dart';

class AdminAutoVerbalDetailPage extends StatefulHookConsumerWidget {
  final AutoVerbalModel autoVerbal;

  const AdminAutoVerbalDetailPage({super.key, required this.autoVerbal});

  @override
  ConsumerState<AdminAutoVerbalDetailPage> createState() => _AdminAutoVerbalDetailPageState();
}

class _AdminAutoVerbalDetailPageState extends ConsumerState<AdminAutoVerbalDetailPage> {
  @override
  Widget build(BuildContext context) {
    final status = useState(widget.autoVerbal.status);
    final redColor = Theme.of(context).colorScheme.error.withOpacity(0.8);
    final isAdmin = ref.watch(isAdminProvider);

    Widget? bottomAppBar;
    if (isAdmin) {
      bottomAppBar = BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: switch (status.value) {
          PropertyAndAutoVerbalStatus.pending ||
          PropertyAndAutoVerbalStatus.resubmit =>
            _buildApproveRejectButton(context, status),
          PropertyAndAutoVerbalStatus.approved => _buildApproved(),
          PropertyAndAutoVerbalStatus.rejected => _buildRejected(redColor, context)
        },
      );
    }

    final currentUserId = ref.watch(authProvider);
    final isCurrentUserOwner = widget.autoVerbal.user?.id == currentUserId;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Verbal Details'),
      ),
      bottomNavigationBar: bottomAppBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image carousel
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: widget.autoVerbal.image.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: widget.autoVerbal.image[index],
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
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
                          'Auto Verbal ID: ${widget.autoVerbal.id}',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.autoVerbal.status.statusColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          widget.autoVerbal.status.name.toUpperCase(),
                          style: TextStyle(
                            color: widget.autoVerbal.status.statusTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.autoVerbal.propertyType.name ?? "N/A",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Value Range: \$${widget.autoVerbal.minValue.toStringAsFixed(2)} - \$${widget.autoVerbal.maxValue.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Card.outlined(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow('Area', '${widget.autoVerbal.area} sqm'),
                          _buildDetailRow('Head', '${widget.autoVerbal.head} m'),
                          _buildDetailRow('Length', '${widget.autoVerbal.length} m'),
                          _buildDetailRow(
                            'Min Value/sqm',
                            '\$${widget.autoVerbal.minValueSqm.toStringAsFixed(2)}',
                          ),
                          _buildDetailRow(
                            'Max Value/sqm',
                            '\$${widget.autoVerbal.maxValueSqm.toStringAsFixed(2)}',
                          ),
                          _buildDetailRow('Location', widget.autoVerbal.province.name ?? 'N/A'),
                          _buildDetailRow('Bank', widget.autoVerbal.bank?.name ?? 'N/A'),
                          _buildDetailRow('Owner Name', widget.autoVerbal.ownerName),
                          _buildDetailRow('Owner Phone', widget.autoVerbal.ownerPhone),
                          _buildDetailRow(
                            'Bank Officer Name',
                            widget.autoVerbal.bankOfficerName ?? 'N/A',
                          ),
                          _buildDetailRow(
                            'Bank Officer Phone',
                            widget.autoVerbal.bankOfficerPhone ?? 'N/A',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Submitted by: ${widget.autoVerbal.user?.fullName ?? "N/A"}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Submission Date: ${widget.autoVerbal.createdAt.toLocal().toString().split(' ')[0]}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  if (isCurrentUserOwner) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () {
                            // TODO: Implement edit functionality
                          },
                          child: const Text('Edit Auto Verbal'),
                        ),
                        const SizedBox(width: 16),
                        FilledButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete Auto Verbal'),
                                  content: const Text(
                                    'Are you sure you want to delete this auto verbal?',
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
                                        backgroundColor: Theme.of(context).colorScheme.error,
                                      ),
                                      child: const Text('Delete'),
                                      onPressed: () async {
                                        final close = BotToast.showLoading();
                                        final delete = ref.read(
                                          deleteAutoVerbalProvider(widget.autoVerbal.id).notifier,
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
                            backgroundColor: Theme.of(context).colorScheme.error,
                          ),
                          child: const Text('Delete Auto Verbal'),
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
                      'Are you sure you want to approve this auto verbal?',
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
                // TODO: Implement approve functionality
                status.value = PropertyAndAutoVerbalStatus.approved;
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Auto Verbal approved')),
                  );
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
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
                    title: const Text('Reject Auto Verbal'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Are you sure you want to reject this auto verbal?'),
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
                // TODO: Implement reject functionality
                status.value = PropertyAndAutoVerbalStatus.rejected;
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Auto Verbal rejected')),
                  );
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                borderRadius: const BorderRadius.horizontal(right: Radius.circular(12)),
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
