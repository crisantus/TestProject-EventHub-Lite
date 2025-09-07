import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:eventhub_lite/core/constant/providers.dart';
import 'package:eventhub_lite/core/exceptions/exception_code.dart';
import 'package:eventhub_lite/core/exceptions/exception_type.dart';
import 'package:eventhub_lite/core/exceptions/failure.dart';
import 'package:eventhub_lite/core/network/network_info.dart';
import 'package:eventhub_lite/data/remote_apis/abst_remote/test_remote.dart';
import 'package:eventhub_lite/data/remote_apis/remote/test_remote_data.dart';
import 'package:eventhub_lite/data/repository_impl/abst_repository/test_repository.dart';
import 'package:eventhub_lite/domain/models/checkout_response.dart';
import 'package:eventhub_lite/domain/models/event_detail.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final testRepositoryProvider = Provider<TestRepositoryImpl>((ref) {
  final networkInfo = ref.read(networkInfoProvider);
  final remoteDataSource = ref.read(testRemoteDataSourceProvider);
  final box = ref.read(eventHubBoxProvider);

  return TestRepositoryImpl(
    networkInfo: networkInfo,
    remoteDataSource: remoteDataSource,
    box: box,
  );
});

class TestRepositoryImpl implements TestRepository {
  final NetworkInfo _networkInfo;
  final TestRemoteDataSource _remoteDataSource;
  final Box _box;

  TestRepositoryImpl({
    required NetworkInfo networkInfo,
    required TestRemoteDataSource remoteDataSource,
    required Box box,
  })  : _networkInfo = networkInfo,
        _remoteDataSource = remoteDataSource,
        _box = box;

  void _log(String type, String msg) => debugPrint('$type $msg');

  /// ---------------- CHECKOUT ----------------
  @override
  Future<Either<Failure<ExceptionMessage>, CheckoutResponse>> checkout(
    String eventId,
    int quantity,
    String name,
    String email,
  ) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      _log('🌐', 'Performing checkout online for $eventId');
      try {
        final response = await _remoteDataSource.checkout(
          eventId,
          quantity,
          name,
          email,
        );
        return right(response);
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      } catch (_) {
        return left(const Failure.serverFailure(
            exception: ExceptionMessages.UNDEFINED));
      }
    } else {
      _log('🗄️', 'Cannot checkout offline');
      return left(const Failure.serverFailure(
          exception: ExceptionMessages.NO_INTERNET_CONNECTION));
    }
  }

  /// ---------------- EVENT DETAIL ----------------
  @override
  Future<Either<Failure<ExceptionMessage>, EventDetail>> getEventDetail(
      String id) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      _log('🌐', 'Fetching event detail online for $id ⏳');
      try {
        final event = await _remoteDataSource.getEventDetail(id);
        await _box.put('event_detail_$id', jsonEncode(event.toJson()));
        _log('🌐', 'Saved event detail to cache for $id 🗄️');
        return right(event);
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      }
    } else {
      _log('🗄️', 'Fetching event detail from cache for $id ⏳');
      try {
        final cachedString = _box.get('event_detail_$id');
        if (cachedString == null) {
          return left(const Failure.serverFailure(
              exception: ExceptionMessages.NO_CACHED_DATA));
        }

        final Map<String, dynamic> cached =
            jsonDecode(cachedString) as Map<String, dynamic>;
        final event = EventDetail.fromJson(cached);
        _log('🗄️', 'Loaded event detail from cache for $id ✅');
        return right(event);
      } catch (e) {
        _log('🗄️', 'Error loading cached event detail: $e');
        return left(const Failure.serverFailure(
            exception: ExceptionMessages.NO_INTERNET_CONNECTION));
      }
    }
  }

  /// ---------------- EVENTS LIST ----------------
  @override
  Future<Either<Failure<ExceptionMessage>, List<EventSummary>>> getEvents({
    int page = 1,
    String? query,
    String? category,
  }) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      _log('🌐', 'Fetching events list online for page $page ⏳');
      try {
        final events = await _remoteDataSource.getEvents(
            category: category, query: query, page: page);

        final toStore = events.map((e) => e.toJson()).toList();
        await _box.put('events_$page', jsonEncode(toStore));
        _log('🌐', 'Saved events list to cache for page $page 🗄️');

        return right(events);
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      }
    } else {
      _log('🗄️', 'Fetching events list from cache for page $page ⏳');
      try {
        final cachedString = _box.get('events_$page');
        if (cachedString == null) return right([]);
        final List cachedList = jsonDecode(cachedString) as List;

        final events = cachedList
            .map((e) =>
                e is Map<String, dynamic> ? EventSummary.fromJson(e) : null)
            .whereType<EventSummary>()
            .toList();

        _log('🗄️', 'Loaded events list from cache for page $page ✅');
        return right(events);
      } catch (e) {
        _log('🗄️', 'Error loading cached events list: $e');
        return left(const Failure.serverFailure(
            exception: ExceptionMessages.NO_INTERNET_CONNECTION));
      }
    }
  }

  /// ---------------- FAVORITES ----------------
  @override
  Future<Either<Failure<ExceptionMessage>, List<String>>> getFavoriteIds() async {
    try {
      _log('🗄️', 'Fetching favorite IDs from cache ⏳');
      final cached = _box.get('favoriteIds', defaultValue: []);
      if (cached is! List) return right([]);
      final favoriteIds = cached.whereType<String>().toList();
      _log('🗄️', 'Loaded favorite IDs ✅');
      return right(favoriteIds);
    } catch (e) {
      _log('🗄️', 'Error reading favorite IDs: $e');
      return left(const Failure.serverFailure(exception: ExceptionMessages.UNDEFINED));
    }
  }

  @override
  Future<Either<Failure<ExceptionMessage>, bool>> isFavorite(String eventId) async {
    try {
      final cached = _box.get('favoriteIds', defaultValue: []);
      if (cached is! List) return right(false);
      final favoriteIds = cached.whereType<String>().toList();
      return right(favoriteIds.contains(eventId));
    } catch (e) {
      _log('🗄️', 'Error checking favorite ID: $e');
      return left(const Failure.serverFailure(exception: ExceptionMessages.UNDEFINED));
    }
  }

  @override
  Future<Either<Failure<ExceptionMessage>, void>> toggleFavorite(String eventId) async {
    try {
      final cached = _box.get('favoriteIds', defaultValue: []);
      List<String> favoriteIds = [];
      if (cached is List) favoriteIds = cached.whereType<String>().toList();

      if (favoriteIds.contains(eventId)) {
        favoriteIds.remove(eventId);
      } else {
        favoriteIds.add(eventId);
      }

      await _box.put('favoriteIds', favoriteIds);
      _log('🗄️', 'Toggled favorite ID $eventId ✅');

      return right(null);
    } catch (e) {
      _log('🗄️', 'Error toggling favorite ID: $e');
      return left(const Failure.serverFailure(exception: ExceptionMessages.UNDEFINED));
    }
  }
}
