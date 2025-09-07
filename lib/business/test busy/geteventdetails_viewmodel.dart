import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eventhub_lite/data/repository_impl/repository/test_repo_impl.dart';
import 'package:eventhub_lite/domain/models/event_detail.dart';

class GetEventDetailViewModel extends StateNotifier<AsyncValue<EventDetail>> {
  final TestRepositoryImpl _repo;

  GetEventDetailViewModel(this._repo) : super(const AsyncValue.loading());

  Future<void> fetchEventDetail(String id) async {
    state = const AsyncValue.loading();

    try {
      final res = await _repo.getEventDetail(id);

      res.fold(
        (failure) {
          state = AsyncValue.error(
             HandleError().handleErrorCodeMessage(failure),
            StackTrace.current,
          );
        },
        (eventDetail) {
          state = AsyncValue.data(eventDetail);
        },
      );
    } catch (e, st) {
      // 👇 this will now catch "Exception: Network error"
      state = AsyncValue.error(e, st);
    }
  }

  void reset() {
    state = const AsyncValue.loading();
  }
}

final getEventDetailProvider =
    StateNotifierProvider.autoDispose<GetEventDetailViewModel, AsyncValue<EventDetail>>(
  (ref) {
    final repo = ref.read(testRepositoryProvider);
    final notifier = GetEventDetailViewModel(repo);
    ref.keepAlive();
    return notifier;
  },
);
