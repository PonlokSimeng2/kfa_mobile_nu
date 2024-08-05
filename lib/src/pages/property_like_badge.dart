import 'package:supabase_flutter/supabase_flutter.dart';

import '../../exports.dart';
import '../models/property_model.schema.dart';
import '../providers/property_like_provider.dart';
import '../widgets/bouncing_widget.dart';

class PropertyLikeBadge extends ConsumerStatefulWidget {
  const PropertyLikeBadge({super.key, required this.property});

  final PropertyModel property;

  @override
  ConsumerState<PropertyLikeBadge> createState() => _PropertyLikeBadgeState();
}

class _PropertyLikeBadgeState extends ConsumerState<PropertyLikeBadge> {
  int _likesCount = 0;

  @override
  void initState() {
    super.initState();
    _likesCount = widget.property.likeCount;
    _listenLikeRealtime();
  }

  RealtimeChannel? _realtimeChannel;

  void _listenLikeRealtime() {
    final sb = ref.read(supabaseProvider);
    _realtimeChannel = sb.client.channel('public:properties').onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: 'properties',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'id',
            value: widget.property.id,
          ),
          callback: (payload) {
            setState(() {
              _likesCount = payload.newRecord[PropertyTable.likeCount];
            });
          },
        );
  }

  @override
  void dispose() {
    _realtimeChannel?.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasLikedAsync = ref.watch(hasLikedProvider(widget.property.id));
    final hasLiked = hasLikedAsync.valueOrNull ?? false;

    return BouncingWidget(
      child: GestureDetector(
        onTap: hasLikedAsync.hasValue
            ? () {
                if (hasLiked) {
                  setState(() {
                    _likesCount--;
                  });
                  ref.read(propertyUnlikeProvider(widget.property.id).notifier).call();
                } else {
                  setState(() {
                    _likesCount++;
                  });
                  ref.read(propertyLikeProvider(widget.property.id).notifier).call();
                }
              }
            : null,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: hasLiked ? Colors.blue.withOpacity(0.7) : Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              hasLikedAsync.when(
                loading: () {
                  return const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  );
                },
                data: (hasLiked) {
                  return Icon(
                    hasLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                    color: Colors.white,
                    size: 16,
                  );
                },
                error: (_, __) => const Icon(
                  Icons.error,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '$_likesCount likes',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
