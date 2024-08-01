import 'package:bot_toast/bot_toast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kfa_mobile_nu/src/providers/auth_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_comment_provider.dart';
import 'package:kfa_mobile_nu/src/providers/property_provider.dart';
import 'package:readmore/readmore.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../exports.dart';
import '../models/property_comment_model.dart';
import '../models/property_model.dart';
import '../providers/favortie_provider.dart';
import '../widgets/auth_wrapper_widget.dart';

class PropertyDetailPage extends ConsumerStatefulWidget {
  const PropertyDetailPage({super.key, required this.data});
  final PropertyModel data;

  @override
  PropertyDetailPageState createState() => PropertyDetailPageState();
}

class PropertyDetailPageState extends ConsumerState<PropertyDetailPage> {
  final Set<Marker> _markers = {};
  final CarouselController _carouselController = CarouselController();
  int _currentImageIndex = 0;

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: const MarkerId('property'),
        position: LatLng(widget.data.latitude, widget.data.longitude),
        infoWindow: InfoWindow(title: widget.data.title),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _incrementViewCount();
    });

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
            value: widget.data.id,
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

  void _incrementViewCount() async {
    final myUserId = ref.read(authProvider);
    if (myUserId != null && myUserId == widget.data.userId) {
      return;
    }

    final increment = ref.read(incrementPropertyViewProvider(widget.data.id).notifier);
    await increment();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWrapperWidget(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: _buildImageCarousel(),
              ),
              pinned: true,
              floating: false,
              title: const Text(
                'Property Detail',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              leading: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Consumer(
                    builder: (context, ref, child) {
                      final isFavorite = ref.watch(isFavoriteProvider(widget.data.id));
                      return IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.white,
                        ),
                        onPressed: () {
                          final notifier = ref.read(favoritePropertyProvider.notifier);
                          if (isFavorite) {
                            notifier.removeFromFavorite(widget.data.id);
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Removed from favorites'),
                              ),
                            );
                          } else {
                            notifier.markAsFavorite(widget.data.id);
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Added to favorites',
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: _buildPropertyInfo(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: _buildFeatures(),
              ),
            ),
            SliverToBoxAdapter(
              child: _buildDescription(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: _buildMap(),
              ),
            ),
            SliverToBoxAdapter(
              child: _buildContactInfo(),
            ),
            const _Comments(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.data.images.map((image) {
            return CachedNetworkImage(
              width: double.infinity,
              imageUrl: image,
              fit: BoxFit.cover,
            );
          }).toList(),
          carouselController: _carouselController,
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).width,
            viewportFraction: 1,
            enlargeCenterPage: false,
            autoPlay: true,
            onPageChanged: (index, _) => setState(() => _currentImageIndex = index),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              '${_currentImageIndex + 1}/${widget.data.images.length}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.remove_red_eye, color: Colors.white, size: 16),
                const SizedBox(width: 4),
                Text(
                  '${widget.data.viewCount}',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPropertyInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.listingType.name.capitalize(),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            widget.data.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${widget.data.price}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatures() {
    return Card.outlined(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildFeatureItem(Icons.layers, '${widget.data.floors}', 'Floor'),
            _buildFeatureItem(Icons.bed, '${widget.data.bedrooms}', 'Bed'),
            _buildFeatureItem(
              Icons.bathtub,
              '${widget.data.bathrooms}',
              'Bath',
            ),
            _buildFeatureItem(
              Icons.weekend,
              '${widget.data.livingRooms}',
              'Living',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, size: 30),
        const SizedBox(height: 4),
        Text('$value $label', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          ReadMoreText(
            widget.data.description,
            trimLines: 3,
            colorClickableText: Theme.of(context).primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildMap() {
    return SizedBox(
      height: 200,
      child: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.data.latitude, widget.data.longitude),
          zoom: 15,
        ),
        markers: _markers,
        onTap: _showLocationDetails,
      ),
    );
  }

  Widget _buildContactInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(widget.data.user.phone),
            // onTap: () => _makePhoneCall('tel:${widget.data.user.phone}'),
          ),
        ],
      ),
    );
  }

  void _showLocationDetails(LatLng latLng) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Location Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Latitude: ${latLng.latitude}'),
              Text('Longitude: ${latLng.longitude}'),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}

class _Comments extends ConsumerWidget {
  const _Comments({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Comments',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final paginated = ref.watch(
                  propertyCommentAtIndexProvider(
                    propertyId: (context.findAncestorWidgetOfExactType<PropertyDetailPage>()
                            as PropertyDetailPage)
                        .data
                        .id,
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
                        if (currentUserId == comment.userId) {
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
                                            return _EditCommentDialog(comment: comment);
                                          },
                                        );
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.delete),
                                      title: const Text('Delete Comment'),
                                      onTap: () async {
                                        final notifier = ref.read(
                                          deletePropertyCommentProvider(comment.id).notifier,
                                        );
                                        final close = BotToast.showLoading();
                                        final result = await notifier.call();
                                        close();
                                        if (result.isFailure) {
                                          BotToast.showText(text: result.failure!.message());
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
                        backgroundImage:
                            comment.user.photo != null ? NetworkImage(comment.user.photo!) : null,
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
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${comment.user.firstName} ${comment.user.lastName}"),
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
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: _CreateCommentBox(),
          ),
        ),
      ],
    );
  }
}

class _EditCommentDialog extends HookConsumerWidget {
  const _EditCommentDialog({super.key, required this.comment});

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
            final notifier = ref.read(editPropertyCommentProvider(comment.id).notifier);
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
  const _CreateCommentBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final contentCtr = useTextEditingController();
    final propertyId =
        (context.findAncestorWidgetOfExactType<PropertyDetailPage>() as PropertyDetailPage).data.id;

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
              final notifier = ref.read(addPropertyCommentProvider(propertyId).notifier);
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
