import 'package:eventhub_lite/business/test%20busy/getevents_viewmodel.dart';
import 'package:eventhub_lite/presentation/widgets/event_card.dart';
import 'package:eventhub_lite/presentation/screens/event_detail_screen.dart';
import 'package:eventhub_lite/core/network/network_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventListScreen extends ConsumerStatefulWidget {
  const EventListScreen({super.key});

  @override
  ConsumerState<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends ConsumerState<EventListScreen> {
  final _controller = ScrollController();
  String? _query;
  String? _category;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      final notifier = ref.read(getEventsProvider.notifier);

      if (_controller.position.userScrollDirection == ScrollDirection.reverse &&
          _controller.position.pixels >=
              _controller.position.maxScrollExtent - 200 &&
          notifier.hasMore) {
        notifier.fetchNextPage(query: _query, category: _category);
      }
    });
  }

  Future<void> _onRefresh() async {
    // Refresh network status
    await ref.read(networkInfoProvider).refreshConnectivity();
    debugPrint('DEBUG: EventListScreen: Refreshed network status');

    // Refresh events
    await ref
        .read(getEventsProvider.notifier)
        .refreshAll(query: _query, category: _category);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final eventsState = ref.watch(getEventsProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search events...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              _query = value.isEmpty ? null : value;
            });
            ref
                .read(getEventsProvider.notifier)
                .refreshAll(query: _query, category: _category);
          },
        ),
        actions: [
          // Network Status Indicator
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: StreamBuilder<bool>(
              stream: ref.watch(networkInfoProvider).connectivityStream,
              initialData: true, // assume online initially
              builder: (context, snapshot) {
                final isOnline = snapshot.data ?? true;
                debugPrint('DEBUG: EventListScreen: Network status updated, isOnline: $isOnline');
                return CircleAvatar(
                  radius: 8,
                  backgroundColor: isOnline ? Colors.green : Colors.grey,
                );
              },
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _category = value == 'All' ? null : value;
              });
              ref
                  .read(getEventsProvider.notifier)
                  .refreshAll(query: _query, category: _category);
            },
            itemBuilder: (_) => [
              'All',
              'Tech',
              'Business',
              'Health',
              'Arts',
              'Education',
            ].map((e) => PopupMenuItem(value: e, child: Text(e))).toList(),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: eventsState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(err.toString()),
                TextButton(
                  onPressed: () => ref
                      .read(getEventsProvider.notifier)
                      .refreshAll(query: _query, category: _category),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
          data: (events) {
            if (events.isEmpty) {
              return const Center(child: Text('No events found.'));
            }

            final notifier = ref.read(getEventsProvider.notifier);

            return ListView.separated(
              controller: _controller,
              itemCount: events.length + 1,
              separatorBuilder: (_, _) => const SizedBox(),
              itemBuilder: (context, index) {
                if (index < events.length) {
                  final event = events[index];
                  return EventCard(
                    event: event,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EventDetailScreen(eventId: event.id),
                      ),
                    ),
                  );
                } else {
                  if (notifier.hasMore) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: Text("No more events")),
                    );
                  }
                }
              },
            );
          },
        ),
      ),
    );
  }
}