import 'package:bot_toast/bot_toast.dart';
import 'package:kfa_mobile_nu/src/models/models.dart';
import 'package:kfa_mobile_nu/src/providers/user_provider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../exports.dart';
import '../models/property_comment_model.dart';
import '../providers/auth_provider.dart';
import '../providers/property_comment_provider.dart';

class _PropertyIdInheritedWidget extends InheritedWidget {
  const _PropertyIdInheritedWidget({
    required this.propertyId,
    required super.child,
  });

  final int propertyId;

  static _PropertyIdInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_PropertyIdInheritedWidget>();
  }

  @override
  bool updateShouldNotify(_PropertyIdInheritedWidget oldWidget) {
    return propertyId != oldWidget.propertyId;
  }
}

class PropertyComment extends StatefulHookConsumerWidget {
  const PropertyComment({
    super.key,
    required this.propertyId,
    this.isSliver = true,
    this.padding = 16,
  });

  final int propertyId;
  final bool isSliver;
  final double padding;

  @override
  ConsumerState<PropertyComment> createState() => _PropertyCommentState();
}

class _PropertyCommentState extends ConsumerState<PropertyComment> {
  @override
  void initState() {
    super.initState();
    _listenCommentRealtime();
  }

  RealtimeChannel? _realtimeChannel;

  void _listenCommentRealtime() {
    final sb = ref.read(supabaseProvider);
    _realtimeChannel = sb.client
        .channel('public:property_comments')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'property_comments',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'property_id',
            value: widget.propertyId,
          ),
          callback: (payload) {
            ref.invalidate(propertyCommentListProvider);
          },
        )
        .subscribe();
  }

  @override
  void dispose() {
    _realtimeChannel?.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _PropertyIdInheritedWidget(
      propertyId: widget.propertyId,
      child: widget.isSliver ? _buildSliverContent() : _buildNormalContent(),
    );
  }

  Widget _buildSliverContent() {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: Text(
              'Comments',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: widget.padding),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _buildCommentItem(index),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 8),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(widget.padding),
            child: const _CreateCommentBox(),
          ),
        ),
      ],
    );
  }

  Widget _buildNormalContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(widget.padding),
          child: Text(
            'Comments',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: widget.padding),
            itemBuilder: (context, index) => _buildCommentItem(index),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.all(widget.padding),
          child: const _CreateCommentBox(),
        ),
      ],
    );
  }

  Widget? _buildCommentItem(int index) {
    final paginated = ref.watch(
      propertyCommentAtIndexProvider(
        propertyId: widget.propertyId,
        index: index,
      ),
    );
    return paginated?.whenOrNull(
      loading: (isFirstItem) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      data: (comment) {
        return ListTile(
          onLongPress: () {
            final currentUserId = ref.read(authProvider);
            if (currentUserId == comment.userId || ref.read(isAdminProvider)) {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.edit),
                          title: const Text('Edit Comment'),
                          onTap: () {
                            Navigator.pop(context);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return _EditCommentDialog(
                                  comment: comment,
                                );
                              },
                            );
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.delete),
                          title: const Text('Delete Comment'),
                          onTap: () async {
                            final notifier = ref.read(
                              deletePropertyCommentProvider(
                                comment.id,
                              ).notifier,
                            );
                            final close = BotToast.showLoading();
                            final result = await notifier.call();
                            close();
                            if (result.isFailure) {
                              BotToast.showText(
                                text: result.failure!.message(),
                              );
                            } else {
                              if (!context.mounted) return;
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
          leading: CircleAvatar(
            backgroundImage: comment.user.photo != null
                ? NetworkImage(comment.user.photo!)
                : null,
            child: comment.user.photo == null
                ? Text(comment.user.firstName[0].toUpperCase())
                : null,
          ),
          title: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFFE0E0E0).withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${comment.user.firstName} ${comment.user.lastName}",
                  ),
                  Text(comment.content),
                ],
              ),
            ),
          ),
          subtitle: Text(
            timeago.format(comment.createdAt),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        );
      },
    );
  }
}

class _EditCommentDialog extends HookConsumerWidget {
  const _EditCommentDialog({required this.comment});

  final PropertyCommentModel comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final contentCtr = useTextEditingController(text: comment.content);

    return AlertDialog(
      title: const Text('Edit Comment'),
      content: Form(
        key: formKey,
        child: TextFormField(
          controller: contentCtr,
          autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Comment cannot be empty';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Edit your comment...',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            if (formKey.currentState?.validate() == false) {
              return;
            }

            final close = BotToast.showLoading();
            final notifier =
                ref.read(editPropertyCommentProvider(comment.id).notifier);
            final result = await notifier.call(newContent: contentCtr.text);
            close();

            if (result.isFailure) {
              BotToast.showText(text: result.failure!.message());
              return;
            }

            Navigator.of(context).pop();
            ref.invalidate(propertyCommentListProvider);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class _CreateCommentBox extends HookConsumerWidget {
  const _CreateCommentBox();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final contentCtr = useTextEditingController();
    final propertyId = _PropertyIdInheritedWidget.of(context)?.propertyId;

    return Form(
      key: formKey,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: contentCtr,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Comment cannot be empty';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Add a comment...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () async {
              if (formKey.currentState?.validate() == false) {
                return;
              }

              final close = BotToast.showLoading();
              final notifier =
                  ref.read(addPropertyCommentProvider(propertyId!).notifier);
              final result = await notifier.call(contentCtr.text);
              close();

              if (result.isFailure) {
                BotToast.showText(text: result.failure!.message());
                return;
              }

              contentCtr.clear();
            },
          ),
        ],
      ),
    );
  }
}
