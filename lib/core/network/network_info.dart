import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  Stream<bool> get connectivityStream;
  Future<void> refreshConnectivity();
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _checker;
  late final StreamController<bool> _controller;

  NetworkInfoImpl({required InternetConnectionChecker checker})
      : _checker = checker {
    _controller = StreamController<bool>.broadcast();

    // Listen for changes
    _checker.onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;
      _controller.add(connected);
      debugPrint('🌐 Network status changed: ${connected ? "Online ✅" : "Offline 🗄️"}');
    });

    // Perform initial connectivity check
    _refreshConnectivityInternal();
  }

  @override
  Future<bool> get isConnected async {
    final connected = await _checker.hasConnection;
    debugPrint('🌐 One-time connectivity check: ${connected ? "Online ✅" : "Offline 🗄️"}');
    return connected;
  }

  @override
  Stream<bool> get connectivityStream => _controller.stream;

  @override
  Future<void> refreshConnectivity() async {
    debugPrint('🌐 Refreshing connectivity');
    await _refreshConnectivityInternal();
  }

  Future<void> _refreshConnectivityInternal() async {
    final connected = await _checker.hasConnection;
    _controller.add(connected);
    debugPrint('🌐 Refreshed connectivity: ${connected ? "Online ✅" : "Offline 🗄️"}');
  }

  void dispose() {
    debugPrint('🌐 Disposing NetworkInfoImpl');
    _controller.close();
  }
}

// Providers
final internetCheckerProvider = Provider<InternetConnectionChecker>((ref) => InternetConnectionChecker());

final networkInfoProvider = Provider<NetworkInfo>((ref) {
  final checker = ref.watch(internetCheckerProvider);
  final networkInfo = NetworkInfoImpl(checker: checker);
  ref.onDispose(() => networkInfo.dispose());
  return networkInfo;
});