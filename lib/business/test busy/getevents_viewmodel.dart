import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';
import 'package:eventhub_lite/data/repository_impl/repository/test_repo_impl.dart';

/// StateNotifier to manage paginated events fetching
class GetEventsViewModel extends StateNotifier<AsyncValue<List<EventSummary>>> {
  final TestRepositoryImpl _repo;

  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;
  final List<EventSummary> _cachedEvents = [];
  static const int _pageSize = 10; // Assuming 10 events per page

  GetEventsViewModel(this._repo) : super(const AsyncValue.loading()) {
    fetchNextPage();
  }

  /// Whether more events can be fetched
  bool get hasMore => _hasMore;

  /// Fetch the next page of events
  Future<void> fetchNextPage({String? query, String? category}) async {
    if (_isFetching || !_hasMore) {
      debugPrint('DEBUG: GetEventsViewModel: Skipping fetchNextPage (isFetching: $_isFetching, hasMore: $_hasMore)');
      return;
    }

    _isFetching = true;
    debugPrint('DEBUG: GetEventsViewModel: Fetching page $_currentPage (query: $query, category: $category)');

    try {
      final res = await _repo.getEvents(
        page: _currentPage,
        query: query,
        category: category,
      );

      res.fold(
        // Repository returned failure
        (failure) {
          state = AsyncValue.error(
            HandleError().handleErrorCodeMessage(failure),
            StackTrace.current,
          );
          _hasMore = false; // No more data on error
          debugPrint('DEBUG: GetEventsViewModel: Error fetching page $_currentPage: ${failure.toString()}');
        },
        // Repository returned success
        (events) {
          debugPrint('DEBUG: GetEventsViewModel: Fetched ${events.length} events for page $_currentPage');
          _cachedEvents.addAll(events);
          state = AsyncValue.data([..._cachedEvents]);
          // Set hasMore based on whether we got a full page
          _hasMore = events.length >= _pageSize;
          if (_hasMore) {
            _currentPage++;
            debugPrint('DEBUG: GetEventsViewModel: Incremented to page $_currentPage, hasMore: $_hasMore');
          } else {
            debugPrint('DEBUG: GetEventsViewModel: No more pages, hasMore: $_hasMore');
          }
        },
      );
    } catch (e, st) {
      // Catch any unexpected thrown exceptions
      state = AsyncValue.error(e.toString(), st);
      _hasMore = false;
      debugPrint('DEBUG: GetEventsViewModel: Unexpected error fetching page $_currentPage: $e');
    }

    _isFetching = false;
    debugPrint('DEBUG: GetEventsViewModel: Fetch completed, isFetching: $_isFetching');
  }

  /// Refresh events from page 1
  Future<void> refreshAll({String? query, String? category}) async {
    debugPrint('DEBUG: GetEventsViewModel: Refreshing all events');
    _currentPage = 1;
    _hasMore = true; // Assume more data until proven otherwise
    _cachedEvents.clear();
    state = const AsyncValue.loading();
    await fetchNextPage(query: query, category: category);
  }
}

/// Provider for events
final getEventsProvider = StateNotifierProvider.autoDispose<GetEventsViewModel, AsyncValue<List<EventSummary>>>(
  (ref) {
    final repo = ref.read(testRepositoryProvider);
    return GetEventsViewModel(repo);
  },
);