

import 'package:eventhub_lite/domain/models/checkout_response.dart';
import 'package:eventhub_lite/domain/models/event_detail.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';

abstract class TestRemoteDataSource {

  Future<List<EventSummary>> getEvents({int page = 1,String? query,String? category});
  Future< EventDetail> getEventDetail(String id);
  Future< CheckoutResponse> checkout(String eventId, int quantity, String name, String email);
 /// Returns the list of favorite events (not just IDs).
  Future<List<EventSummary>> getFavorites();
  /// Toggle a favorite by eventId (adds if not present, removes if already favorited).
  Future<void> toggleFavorite(String eventId);
  /// Checks if an event is currently a favorite.
  Future<bool> isFavorite(String eventId);

}