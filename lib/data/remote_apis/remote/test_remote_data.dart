

import 'dart:convert';
import 'dart:math';

import 'package:eventhub_lite/core/network/services_instance.dart';
import 'package:eventhub_lite/data/remote_apis/abst_remote/test_remote.dart';
import 'package:eventhub_lite/domain/models/checkout_response.dart';
import 'package:eventhub_lite/domain/models/event_detail.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final testRemoteDataSourceProvider = Provider<TestRemoteDataSource>((ref) {
  final services = ref.watch(servicesProvider);
  return TestRemoteDataSourceImpl(services: services);
});

class TestRemoteDataSourceImpl implements TestRemoteDataSource {
  final Services _services;
  final List<String> _favoriteIds = []; // only store IDs in memory
  TestRemoteDataSourceImpl({required Services services}) : _services = services;


  // @override
  // Future<TestModel> getTestData({required String page}) async{
  //  var apiRes = await _services.get(uri: "character?page=$page.");
  //   return TestModel.fromJson(apiRes.data);
  // }

  @override
  Future<CheckoutResponse> checkout(String eventId, int quantity, String name, String email)async {
    await Future.delayed(Duration(milliseconds: 300 + Random().nextInt(500)));
    if (Random().nextDouble() < 0.1) {
      debugPrint('ApiService: Simulated failure for checkout');
      throw Exception('Checkout failed');
    }

    try {
      final String data = await rootBundle.loadString('assets/checkout_success.json');
      debugPrint('ApiService: Loaded checkout_success');
      return CheckoutResponse.fromJson(jsonDecode(data));
    } catch (e) {
      debugPrint('ApiService: Error loading checkout_success.json: $e');
      rethrow;
    }
  }

  @override
  Future<EventDetail> getEventDetail(String id) async  {
    await Future.delayed(Duration(milliseconds: 300 + Random().nextInt(500)));
    if (Random().nextDouble() < 0) {
      debugPrint('ApiService: Simulated failure for getEventDetail');
      throw Exception('Network error');
    }

    try {
      // Use correct asset path: assets/event_$id.json.
      final String data = await rootBundle.loadString('assets/event_$id.json');
      debugPrint('ApiService: Loaded event_detail_$id from assets/event_$id.json');
      return EventDetail.fromJson(jsonDecode(data));
    } catch (e) {
      debugPrint('ApiService: Error loading event_$id.json: $e');
      throw Exception('Unable to load asset: assets/event_$id.json. ${e.toString()}');
    }
  }

  @override
  Future<List<EventSummary>> getEvents({int page = 1, String? query, String? category}) async {
     // Simulate network delay
  await Future.delayed(Duration(milliseconds: 300 + Random().nextInt(500)));

  //Simulate random failure
  if (Random().nextDouble() < 0.1) {
    debugPrint('ApiService: Simulated failure for getEvents');
    throw Exception('Network error');
  }

  try {
    // Load local events data
    final String data = await rootBundle.loadString('assets/events.json');
    debugPrint('ApiService: Attempting to parse events.json');

    final List<dynamic> json = jsonDecode(data);
    debugPrint('ApiService: Loaded ${json.length} events from events.json');

    // Map JSON to EventSummary objects
    var events = json.map((e) => EventSummary.fromJson(e)).toList();

    // Apply search filter
    if (query != null && query.isNotEmpty) {
      events = events.where((e) => e.title.toLowerCase().contains(query.toLowerCase())).toList();
      }

    // Apply category filter
    if (category != null && category.isNotEmpty) {
      events = events.where((e) => e.category == category).toList();
    }

    // Apply pagination
    const pageSize = 10;
    final start = (page - 1) * pageSize;
    final pagedEvents = events.skip(start).take(pageSize).toList();

    return pagedEvents;
  } catch (e) {
    debugPrint('ApiService: Error loading events.json: $e');
    rethrow;
  }
}

@override
Future<List<EventSummary>> getFavorites() async {
  await Future.delayed(const Duration(milliseconds: 300));

  // get all events
  final events = await getEvents();

  // filter only those in favorites
  return events.where((event) => _favoriteIds.contains(event.id)).toList();
}

@override
Future<bool> isFavorite(String eventId) async {
  await Future.delayed(const Duration(milliseconds: 100));
  return _favoriteIds.contains(eventId);
}

@override
Future<void> toggleFavorite(String eventId) async {
  await Future.delayed(const Duration(milliseconds: 200));

  if (_favoriteIds.contains(eventId)) {
    _favoriteIds.remove(eventId);
  } else {
    _favoriteIds.add(eventId);
  }
}
}
