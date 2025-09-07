import 'package:dartz/dartz.dart';
import 'package:eventhub_lite/core/exceptions/exception_code.dart';
import 'package:eventhub_lite/core/exceptions/failure.dart';
import 'package:eventhub_lite/domain/models/checkout_response.dart';
import 'package:eventhub_lite/domain/models/event_detail.dart';
import 'package:eventhub_lite/domain/models/event_summary.dart';

abstract class TestRepository {
  Future<Either<Failure<ExceptionMessage>, List<EventSummary>>> getEvents({int page = 1,String? query,String? category});
  Future<Either<Failure<ExceptionMessage>, EventDetail>> getEventDetail(String id);
  Future<Either<Failure<ExceptionMessage>, CheckoutResponse>> checkout(String eventId, int quantity, String name, String email);
   Future<Either<Failure<ExceptionMessage>, List<String>>> getFavoriteIds();
  Future<Either<Failure<ExceptionMessage>, void>> toggleFavorite(String eventId);
  Future<Either<Failure<ExceptionMessage>, bool>> isFavorite(String eventId);
}
