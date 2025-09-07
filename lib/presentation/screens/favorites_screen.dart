import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:eventhub_lite/business/test busy/favourite_viewmodel.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'event_detail_screen.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  Future<void> _refreshFavorites(WidgetRef ref) async {
    await ref.read(favoriteProvider.notifier).loadFavorites();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesState = ref.watch(favoriteProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: RefreshIndicator(
        onRefresh: () => _refreshFavorites(ref),
        child: favoritesState.when(
          loading: () =>
              const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(err.toString()),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => _refreshFavorites(ref),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
          data: (favorites) {
            if (favorites.isEmpty) {
              return const Center(child: Text('No favorites yet.'));
            }
            return ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final event = favorites[index];
                return ListTile(
                  leading:    CachedNetworkImage(
              imageUrl: event.thumbnail,
              width: 100,
              height: 60,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SpinKitFadingCircle(color: Colors.grey),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
                  title: Text(event.title),
                  subtitle: Text(event.title),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          EventDetailScreen(eventId: event.id),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
