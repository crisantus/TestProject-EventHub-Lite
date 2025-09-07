

// import 'package:eventhub_lite/core/route/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

// final appRouterProvider = Provider<AppRouter>((ref) {
//   return AppRouter();
// });

final eventHubBoxProvider = Provider<Box>((ref) {
  return Hive.box('eventhub');
});