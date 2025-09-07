

import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


final _options = BaseOptions(
    baseUrl: BasicUrl.BASE_URL,
   
    connectTimeout: const Duration(seconds: 500),
    receiveTimeout:const Duration(seconds:500));


  final dioClientProvider = Provider((ref) {
  Dio dioClient =Dio(_options)
  ..interceptors.addAll([
    PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90),
  ]);
  return dioClient;
});

