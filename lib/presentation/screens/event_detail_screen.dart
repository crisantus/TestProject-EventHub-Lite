import 'package:eventhub_lite/business/test%20busy/favourite_viewmodel.dart';
import 'package:eventhub_lite/business/test%20busy/geteventdetails_viewmodel.dart';
import 'package:eventhub_lite/presentation/screens/checkout_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EventDetailScreen extends ConsumerStatefulWidget {
  final String eventId;

  const EventDetailScreen({required this.eventId, super.key});

  @override
  ConsumerState<EventDetailScreen> createState() =>
      _EventDetailScreenState();
}

class _EventDetailScreenState extends ConsumerState<EventDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Load event detail + favorites when screen opens
    Future.microtask(() async {
      ref.read(getEventDetailProvider.notifier).fetchEventDetail(widget.eventId);
      await ref.read(favoriteProvider.notifier).loadFavorites();
    });
  }

  @override
  Widget build(BuildContext context) {
    final detailState = ref.watch(getEventDetailProvider);
    final favoriteState = ref.watch(favoriteProvider);

    return detailState.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (err, _) => Scaffold(
        
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(err.toString()),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref
                    .read(getEventDetailProvider.notifier)
                    .fetchEventDetail(widget.eventId),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
      data: (detail) {
        final isFavorite = favoriteState.asData?.value
                .any((event) => event.id == widget.eventId) ??
            false;

        return Scaffold(
          appBar: AppBar(
            title: Text(detail.title),
            actions: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  ref
                      .read(favoriteProvider.notifier)
                      .toggleFavorite(detail.id);
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detail.title,
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text(detail.description),
                const SizedBox(height: 16),
                Text('Venue: ${detail.venue}'),
                const SizedBox(height: 8),
                Text('Speakers: ${detail.speakers.join(', ')}'),
                const SizedBox(height: 8),
                Text('Availability: ${detail.remaining}/${detail.capacity}'),
                const SizedBox(height: 16),
                if (detail.remaining > 0)
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CheckoutScreen(eventId: widget.eventId),
                      ),
                    ),
                    child: const Text('Buy Tickets'),
                  )
                else
                  ElevatedButton(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Join waitlist placeholder')),
                    ),
                    child: const Text('Join Waitlist'),
                  ),
                const SizedBox(height: 16),
                CachedNetworkImage(
                  imageUrl:
                      'https://picsum.photos/seed/${widget.eventId}/400/240',
                  placeholder: (context, url) =>
                      const SpinKitFadingCircle(color: Colors.grey),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
