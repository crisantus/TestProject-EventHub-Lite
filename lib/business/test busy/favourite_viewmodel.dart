import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';
import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:eventhub_lite/data/repository_impl/repository/test_repo_impl.dart';

class FavoriteViewModel extends StateNotifier<AsyncValue<List<EventSummary>>> {
  final TestRepositoryImpl _favRepo;
  final TestRepositoryImpl _eventRepo;

  FavoriteViewModel(this._favRepo, this._eventRepo)
      : super(const AsyncValue.data([]));

  /// Load favorite events by mapping stored IDs → EventSummary list
  Future<void> loadFavorites() async {
    state = const AsyncValue.loading();

    try {
      final favRes = await _favRepo.getFavoriteIds();

      await favRes.fold(
        (failure) {
          state = AsyncValue.error(
            failure,
            StackTrace.current,
          );
        },
        (ids) async {
          try {
            final allEventsRes = await _eventRepo.getEvents();

            allEventsRes.fold(
              (failure) {
                state = AsyncValue.error(
                  HandleError().handleErrorCodeMessage(failure),
                  StackTrace.current,
                );
              },
              (events) {
                final favEvents =
                    events.where((event) => ids.contains(event.id)).toList();
                state = AsyncValue.data(favEvents);
              },
            );
          } catch (e, st) {
            state = AsyncValue.error(e.toString(), st);
          }
        },
      );
    } catch (e, st) {
      state = AsyncValue.error(e.toString(), st);
    }
  }

  /// Toggle favorite by ID
  Future<void> toggleFavorite(String eventId) async {
    try {
      final res = await _favRepo.toggleFavorite(eventId);

      res.fold(
        (failure) {
          state = AsyncValue.error(
             HandleError().handleErrorCodeMessage(failure),
            StackTrace.current,
          );
        },
        (_) async {
          await loadFavorites();
        },
      );
    } catch (e, st) {
      state = AsyncValue.error(e.toString(), st);
    }
  }

  /// Check if single event is favorite
  Future<bool> isFavorite(String eventId) async {
    try {
      final res = await _favRepo.isFavorite(eventId);
      return res.fold((_) => false, (isFav) => isFav);
    } catch (_) {
      return false;
    }
  }

  void reset() {
    state = const AsyncValue.data([]);
  }
}

final favoriteProvider = StateNotifierProvider.autoDispose<
    FavoriteViewModel, AsyncValue<List<EventSummary>>>((ref) {
  final favRepo = ref.read(testRepositoryProvider);
  final eventRepo = ref.read(testRepositoryProvider);
  final notifier = FavoriteViewModel(favRepo, eventRepo);
  ref.keepAlive();
  return notifier;
});
