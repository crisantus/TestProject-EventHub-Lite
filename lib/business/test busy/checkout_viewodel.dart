import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:eventhub_lite/data/repository_impl/repository/test_repo_impl.dart';
import 'package:eventhub_lite/domain/models/checkout_response.dart';

class CheckoutViewModel extends StateNotifier<AsyncValue<CheckoutResponse>> {
  final TestRepositoryImpl _repo;

  CheckoutViewModel(this._repo) : super(AsyncValue.data(CheckoutResponse.empty()));

  /// Performs checkout and handles errors using try/catch
  Future<void> checkout(String eventId, int quantity, String name, String email) async {
    state = const AsyncValue.loading();

    try {
      final res = await _repo.checkout(eventId, quantity, name, email);

      // Handle the Either result from repository
      res.fold(
        (failure) {
          state = AsyncValue.error(
            HandleError().handleErrorCodeMessage(failure),
            StackTrace.current,
          );
        },
        (checkoutResponse) {
          state = AsyncValue.data(checkoutResponse);
        },
      );
    } catch (e, st) {
      // Catch unexpected exceptions like network errors
      state = AsyncValue.error(
        e.toString(),
        st,
      );
    }
  }

  /// Reset the state to empty
  void reset() {
    state = AsyncValue.data(CheckoutResponse.empty());
  }
}

final checkoutProvider =
    StateNotifierProvider.autoDispose<CheckoutViewModel, AsyncValue<CheckoutResponse>>(
  (ref) {
    final repo = ref.read(testRepositoryProvider);
    final notifier = CheckoutViewModel(repo);
   // ref.keepAlive();
    return notifier;
  },
);
