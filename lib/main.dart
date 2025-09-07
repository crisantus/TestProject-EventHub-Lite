// import 'package:eventhub_lite/core/theme/theme.dart';
// import 'package:eventhub_lite/core/theme/theme_provider.dart';
import 'package:eventhub_lite/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Entry point
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('eventhub');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    // final themeState = ref.watch(themeProvider);

    return ScreenUtilInit(
      
      builder: (context, child) {
        return KeyboardDismissOnTap(
          child: MaterialApp(
            title: 'Event Hub Lite',
            debugShowCheckedModeBanner: false,
             theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 18),
            bodySmall: TextStyle(fontSize: 14),
          ),
        ),
            home: child,
          ),
        );
      },
      child: const HomeScreen(),
    );
  }
}


