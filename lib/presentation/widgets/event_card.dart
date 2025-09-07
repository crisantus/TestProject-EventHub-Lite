
import 'package:eventhub_lite/domain/models/event_summary.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class EventCard extends StatelessWidget {
  final EventSummary event;
  final VoidCallback onTap;

  const EventCard({required this.event, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: event.thumbnail,
              width: 100,
              height: 60,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SpinKitFadingCircle(color: Colors.grey),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.title, style: Theme.of(context).textTheme.titleMedium),
                  Text(event.startsAt.formatted(), style: Theme.of(context).textTheme.bodySmall),
                  Text('${event.city} • ₦${event.price}', style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}