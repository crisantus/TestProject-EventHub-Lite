

import 'package:eventhub_lite/core/constant/constants.dart';
import 'package:eventhub_lite/core/exceptions/exception_code.dart';
import 'package:eventhub_lite/core/exceptions/exception_type.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final exceptionMapperProvider = Provider<ExceptionMapper>((ref) {
  return ExceptionMapper();
});


class ExceptionMapper {
  
  ExceptionType<ExceptionMessage> mapException(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return const ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.REQUEST_TIMEOUT,
        message: ExceptionMessage.REQUEST_TIMEOUT,
      );
    }

    if (e.type == DioExceptionType.receiveTimeout) {
      return const ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.REQUEST_TIMEOUT,
        message: ExceptionMessage.REQUEST_TIMEOUT,
      );
    }

    if (e.response?.statusCode == 404) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.NOT_FOUND,
        message: 
        ExceptionMessage.parse(formatError(e.response!.data['message'])),
      
      );
    }

    if (e.response?.statusCode == 500) {
      return ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.UNDEFINED,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );
    }
    if (e.response?.statusCode == 403) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.NOT_FOUND,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );
    }
     if (e.response?.statusCode == 422) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.NOT_FOUND,
        message: ExceptionMessage.parse(formatError(e.response!.data['errors'])),
      );
    }
     if (e.response?.statusCode == 409) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.NOT_FOUND,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );
    }
    if (e.response?.statusCode == 429) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.NOT_FOUND,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );
    }
     if (e.response?.statusCode == 401) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.UNDEFINED,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );
    }

       if (e.response?.statusCode == 417) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.UNDEFINED,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );

      
    }

        if (e.response?.statusCode == 400) {
      return  ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.UNDEFINED,
        message: ExceptionMessage.parse(formatError(e.response!.data['message'])),
      );

      
    }

    return ExceptionType<ExceptionMessage>.serverException(
      code: ExceptionCode.UNDEFINED,
       message: ExceptionMessage.parse("Something went wrong"),
    );
  }
}
