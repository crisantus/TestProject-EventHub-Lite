// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:eventhub_lite/core/exceptions/exception_mapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'network_client.dart';

final servicesProvider = Provider<Services>((ref) {
  final exceptionMapper = ref.read(exceptionMapperProvider);
  final dioClient = ref.read(dioClientProvider);
  // final dioClientGetAway = ref.read(dioProviderPaymentGateAway);
  return Services(
    exceptionMapper: exceptionMapper,
    dioClient: dioClient,
    // dioClientGetAway: dioClientGetAway
  );
});

class Services {
  final ExceptionMapper _exceptionMapper;
  final Dio _dioClient;
  //final Dio _dioClientGetaway;
  Services({
    required ExceptionMapper exceptionMapper,
    required Dio dioClient,
    //required Dio dioClientGetAway,
  })  : _exceptionMapper = exceptionMapper,
        _dioClient = dioClient;
  //_dioClientGetaway = dioClientGetAway;

  // Future<Response> getpost(
  //     {required String uri,
  //     dynamic data,
  //     Map<String, dynamic>? queryParameters,
  //     Options? options,
  //     CancelToken? cancelToken,
  //     ProgressCallback? onSendProgress,
  //     ProgressCallback? onReceiveProgress,
  //     String? authorization}) async {
  //   try {
  //     final response = await _dioClient
  //         .get(uri,
  //             data: data,
  //             queryParameters: queryParameters,
  //             options: Options(
  //               headers: {
  //                 'Authorization': authorization,
  //                 "content-type": "application/json",
  //                 "Accept": "application/json"
  //               },
  //             ));

  //     return response;
  //   } on DioException catch (e) {
  //     //debugPrint('${e.response?.data}');
  //     throw _exceptionMapper.mapException(e);
  //   } on SocketException catch (e) {
  //     throw SocketException(e.toString());
  //   } on HttpException catch (e) {
  //     throw HttpException(e.toString());
  //   } on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   } catch (e) {
  //     //debugPrint('$e');
  //     rethrow;
  //   }
  // }

  Future<Response> post({required String uri,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      String? authorization}) async {
    try {
      final response = await _dioClient.post(uri,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: {
              'Authorization': authorization, // autorization
              "content-type": "application/json",
              "Accept": "application/json"
            },
          ));

      return response;
    } on DioException catch (e) {
      //debugPrint(e.response?.data);
      //throw Exception('Failed to load data');
      // showError(context, "Request timed out. Please try again.");
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on HttpException catch (e) {
      throw HttpException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      debugPrint('$e');
      rethrow;
    }
  }

  Future<Response> delete(
      {required String uri,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      String? authorization}) async {
    try {
      final response = await _dioClient.delete(uri,
          data: data,
          queryParameters: queryParameters,
          options: Options(
            headers: {
              'Authorization': authorization,
              "content-type": "application/json",
              "Accept": "application/json"
            },
          ));
      // .timeout(const Duration(seconds: 60));

      return response;
    } on DioException catch (e) {
      debugPrint('${e.response?.data}');
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on HttpException catch (e) {
      throw HttpException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      debugPrint('$e');
      rethrow;
    }
  }

  //  Future<Response> postGateway({
  // required String uri,
  //     dynamic  data,
  //       Map<String, dynamic>? queryParameters,
  //       Options? options,
  //       CancelToken? cancelToken,
  //       ProgressCallback? onSendProgress,
  //       ProgressCallback? onReceiveProgress,
  //       String? authorization
  //     }) async {
  //  try {
  //     final response = await _dioClientGetaway.post(
  //       uri,
  //       data: data,
  //       queryParameters: queryParameters,
  //       options: Options(
  //       headers: {
  //         'Authorization': authorization,
  //         "content-type": "application/json",
  //         "Accept": "application/json"
  //       },
  //       )
  //     ).timeout(const Duration(seconds: 60));

  //    return response;
  //   } on DioException catch (e) {
  //      debugPrint('${e.response?.data}');
  //     throw _exceptionMapper.mapException(e);
  //   }
  //   on SocketException catch (e) {
  //     throw SocketException(e.toString());
  //   } on HttpException catch(e){
  //       throw HttpException(e.toString());
  //   }
  //   on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   }

  //   catch (e) {
  //     debugPrint('$e');
  //     rethrow;
  //   }

  // }

  Future<Response> get(
      {required String uri,
      //required data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      String? authorization}) async {
    try {
      final response = await _dioClient.get(uri,
          queryParameters: queryParameters,
          options: Options(
            headers: {
              'Authorization': authorization,
              "content-type": "application/json",
              "Accept": "application/json"
            },
          ));

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> download(
    String uri,
    path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool deleteOnError = true,
  }) async {
    try {
      var response = await _dioClient.download(
        uri,
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        deleteOnError: deleteOnError,
      );

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dioClient.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dioClient.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  // Future<Response> delete(
  //     String uri, {
  //       data,
  //       Map<String, dynamic>? queryParameters,
  //       Options? options,
  //       CancelToken? cancelToken,
  //       ProgressCallback? onReceiveProgress,
  //     }) async {
  //   try {
  //     var response = await _dioClient.delete(
  //       uri,
  //       queryParameters: queryParameters,
  //       options: options,
  //       cancelToken: cancelToken,
  //       data: data,
  //     ).timeout(const Duration(seconds: 60));
  //     return response;
  //   } on DioException catch (e) {

  //     throw _exceptionMapper.mapException(e);
  //   }
  //   on SocketException catch (e) {
  //     throw SocketException(e.toString());
  //   } on FormatException catch (_) {
  //     throw const FormatException("Unable to process the data");
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<Response> uploadMultipleFiles({
    required String url,
    dynamic data,
    List<File>? uploadFiles,
    Options? options,
    String? authorization,
    String? namer,
  }) async {
    final formData = FormData();

    // Convert data to Map<String, dynamic>
    if (data != null && data is Map<String, dynamic>) {
      final basicInformationMap = data;

      basicInformationMap.forEach((key, value) {
        // formData.fields.add(MapEntry(key, value.toString()));
        if (value is List) {
          // Handle List: Add each item without converting to string
          for (var item in value) {
            // Ensure that the data type of the item is maintained
            if (item is String) {
              formData.fields.add(MapEntry(
                  '$key[]', item)); // String items can be directly added
            } else if (item is int || item is double || item is bool) {
              formData.fields.add(MapEntry('$key[]',
                  item.toString())); // Convert non-string primitives (int, double, bool) to string
            } else if (item is Map || item is List) {
              // Handle nested maps or lists if required (depending on your backend's expected structure)
              formData.fields.add(MapEntry(
                  '$key[]',
                  jsonEncode(
                      item))); // Convert complex structures to JSON strings
            } else {
              throw ArgumentError(
                  'Unsupported list item type: ${item.runtimeType}');
            }
          }
        } else {
          // Handle other types: Add as a single field
          formData.fields.add(MapEntry(key, value.toString()));
        }
      });
    } else {
      throw ArgumentError('Invalid data type. Expected Map<String, dynamic>.');
    }

    // Add files to formData
    if (uploadFiles != null && uploadFiles.isNotEmpty) {
      final fieldNamePrefix = namer ?? 'files';
      for (int i = 0; i < uploadFiles.length; i++) {
        final file = uploadFiles[i];
        final multipartFile = await MultipartFile.fromFile(file.path);
        formData.files.add(MapEntry('$fieldNamePrefix[$i]', multipartFile));
      }
    }
    // else {
    //   throw ArgumentError('No files provided for upload.');
    // }

    try {
      final response = await _dioClient.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Authorization': authorization,
            'content-type': 'multipart/form-data',
            'Accept': 'application/json',
          },
        ),
      );

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      // Catch any other exception and rethrow
      rethrow;
    }
  }

// Future<Response> uploadMultipleFiles({
//   required String url,
//   dynamic data,
//   List<File>? uploadFiles,  // Changed from File? to List<File>?
//   Options? options,
//   String? authorization,
//   String? namerPrefix,      // Changed to prefix for file fields
// }) async {
//   //debugPrint(data);

//   final formData = FormData();

//   // Convert the data to FormData fields
//   if (data != null && data is Map<String, dynamic>) {
//     data.forEach((key, value) {
//       formData.fields.add(MapEntry(key, value.toString()));
//     });
//   } else {
//     throw ArgumentError('Invalid data type. Expected BasicInformationFormParams.');
//   }

//   // Add the list of files to FormData
//   if (uploadFiles != null && uploadFiles.isNotEmpty) {
//     for (int i = 0; i < uploadFiles.length; i++) {
//       final file = await MultipartFile.fromFile(uploadFiles[i].path);
//       // Use namerPrefix with an index to ensure unique field names for each file
//       formData.files.add(MapEntry('$namerPrefix$i', file));
//     }
//   } else {
//     throw ArgumentError('Invalid file list. Expected non-empty List<File>.');
//   }

//   try {
//     final response = await _dioClient.post(
//       url,
//       data: formData,
//       options: Options(
//         headers: {
//           'Authorization': authorization,
//           "content-type": "multipart/form-data",  // Correct content type for file uploads
//           "Accept": "application/json"
//         },
//       ),
//     ).timeout(const Duration(seconds: 60));
//     return response;
//   } on DioException catch (e) {
//     throw _exceptionMapper.mapException(e);
//   } on SocketException catch (e) {
//     throw SocketException(e.toString());
//   } on FormatException catch (_) {
//     throw const FormatException("Unable to process the data");
//   } catch (e) {
//     rethrow;
//   }
// }

// Future<Response> uploadFile({
//   required String url,
//   dynamic data,
//   File? uploadFile,
//   Options? options,
//   String? authorization
// }) async {
//   debugPrint(data);

//   final formData = FormData();
// //todo : include the FORM PARAM DATA HERE JUST LIKE JAPA APP
//   if (data != null ) {
//     // Convert data to Map<String, dynamic>
//     final basicInformationMap = data.toJson();

//     // Add the single data field to formData
//     basicInformationMap.forEach((key, value) {
//       formData.fields.add(MapEntry(key, value.toString()));
//     });
//   } else {
//     throw ArgumentError('Invalid data type. Expected BasicInformationFormParams.');
//   }

//   // Add the file to formData
//   if (uploadFile != null) {
//     final file = await MultipartFile.fromFile(uploadFile.path);
//     formData.files.add(MapEntry('image', file)); // Specify field name as 'file'
//   }

//   try {
//     final response = await _dioClient.post(
//       url,
//       data: formData,
//       options: Options(
//         headers: {
//           'Authorization': authorization,
//           "content-type": "application/json",
//           "Accept": "application/json"
//         },
//       ),
//     );
//     return response;
//   } on DioError catch (e) {
//     throw _exceptionMapper.mapException(e);
//   } on SocketException catch (e) {
//     throw SocketException(e.toString());
//   } on FormatException catch (_) {
//     throw const FormatException("Unable to process the data");
//   } catch (e) {
//     // Catch any other exception and rethrow
//     rethrow;
//   }
// }

  Future<Response> uploadFile(
      {required String url,
      dynamic data,
      File? uploadFile,
      Options? options,
      String? authorization,
      String? namer}) async {
    //debugPrint(data);

    final formData = FormData();

    if (data != null && data is Map<String, dynamic>) {
      // Convert data to Map<String, dynamic>
      final basicInformationMap = data;

      // Add the single data field to formData
      basicInformationMap.forEach((key, value) {
        // formData.fields.add(MapEntry(key, value.toString()));
        if (value is List) {
          // Handle List: Add each item in the list separately
          for (var item in value) {
            formData.fields.add(MapEntry('$key[]',
                item.toString())); // You can change how list items are handled here if necessary
          }
        } else {
          // Handle other types: Add as a single field
          formData.fields.add(MapEntry(key, value.toString()));
        }
      });
    } else {
      throw ArgumentError(
          'Invalid data type. Expected BasicInformationFormParams.');
    }

    // Add the file to formData
    if (uploadFile != null) {
      final file = await MultipartFile.fromFile(uploadFile.path);
      formData.files.add(
          MapEntry(namer.toString(), file)); // Specify field name as 'file'
    }
    try {
      final response = await _dioClient.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Authorization': authorization,
            "content-type": "application/json",
            "Accept": "application/json"
          },
        ),
      );

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      // Catch any other exception and rethrow
      rethrow;
    }
  }

  Future<Response> uploadMultipleSingleFile(
      {required String url,
      dynamic data,
      File? uploadFile,
      File? uploadFile2,
      Options? options,
      String? authorization,
      String? namer,
      String? namer2}) async {
    debugPrint(data);

    final formData = FormData();

    if (data != null && data is Map<String, dynamic>) {
      // Convert data to Map<String, dynamic>
      final basicInformationMap = data;

      // Add the single data field to formData
      basicInformationMap.forEach((key, value) {
        formData.fields.add(MapEntry(key, value.toString()));
      });
    } else {
      throw ArgumentError(
          'Invalid data type. Expected BasicInformationFormParams.');
    }

    // Add the file to formData
    if (uploadFile != null) {
      final file = await MultipartFile.fromFile(uploadFile.path);
      formData.files.add(
          MapEntry(namer.toString(), file)); // Specify field name as 'file'
    }
    if (uploadFile2 != null) {
      final file = await MultipartFile.fromFile(uploadFile2.path);
      formData.files.add(
          MapEntry(namer2.toString(), file)); // Specify field name as 'file'
    }
    try {
      final response = await _dioClient.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Authorization': authorization,
            "content-type": "application/json",
            "Accept": "application/json"
          },
        ),
      );

      return response;
    } on DioException catch (e) {
      throw _exceptionMapper.mapException(e);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      // Catch any other exception and rethrow
      rethrow;
    }
  }

  // Future<Response> upload({
  //   required String url,
  //   Map<String, String>? body,
  //   Map<String, String>? uploadFiles,
  //   Map<String, String>? headerMap,
  // }) async {
  //   Uri apiUrl = Uri.parse(url);

  //    final userToken = await TokenService().retrieveToken();
  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer Bearer $userToken',
  //       'Accept': 'application/json; charset=UTF-8'
  //   };

  //   try {
  //     http.MultipartRequest apiResponse = http.MultipartRequest('POST', apiUrl);
  //     apiResponse.headers.addAll(headers);
  //     debugPrintData('identifier', uploadFiles!.entries);

  //     List<Future<http.MultipartFile>> futures = uploadFiles.entries
  //         .map((i) async => await http.MultipartFile.fromPath(
  //               '${i.key}',
  //               '${i.value}',
  //             ))
  //         .toList();
  //     final filesList = [for (final future in futures) await future];
  //     apiResponse.files.addAll(filesList);
  //     apiResponse.fields.addAll(body!);
  //     http.StreamedResponse apiRes = await apiResponse.send();
  //     http.Response response = await http.Response.fromStream(apiRes);

  //     return response;
  //   } on SocketException catch (_) {
  //     throw 'Kindly, check your internet connection.';
  //   } on TimeoutException catch (_) {
  //     throw 'Request Timeout.';
  //   } on FormatException catch (_) {
  //     throw 'error occured, please try again later.';
  //   } catch (e) {
  //     throw '$e';
  //   }
  // }
}
