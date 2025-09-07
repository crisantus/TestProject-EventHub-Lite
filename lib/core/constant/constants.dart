// ignore_for_file: constant_identifier_names


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eventhub_lite/core/exceptions/exception_code.dart';
import 'package:eventhub_lite/core/exceptions/exception_type.dart';
import 'package:eventhub_lite/core/exceptions/failure.dart';


class AppScrollPhysics {
  static const bouncingScrollPhysics = BouncingScrollPhysics();
}

printData(identifier, data) {
  return debugPrint('===> 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 $identifier <=== $data');
}

class TimeDuration {
  static const kAnimationDuration = 300; //milliseconds
  static const kAnimationCurve = Curves.easeOut;
  static const kSnackbarDuration = 6;
  static const kOTPExpiryDuration = 180; // seconds
}

class Sizing {
  static const kAppBarHeight = 56.0;
  static const kSizingMultiple = 8.0;
  static const kZeroValue = 0.0;
  static const kAmountFractionDigits = 2;
  static final kStepperLineWidth = 3.0.h;
  static const kTopBarMargin = kSizingMultiple * 4.0;
  static const kLogoDiameter = 150.0;
  static const kBorderRadius = 6.0;
  static const kAvatarRadius = kSizingMultiple * 3.5;
  static const kAvatarRadiusBig = kSizingMultiple * 6.25;
  static const kLocalPhoneNumberMaxLength = 10;
  static const kPasswordMinLength = 6;
  static const kMinBadgePadding = 3.0;
  static const kMaxBadgePadding = 5.0;
  static const kProgressIndicatorStrokeWidth = 2.0;
  static const kProgressIndicatorSizeSmall = 20.0;
  static const kProgressIndicatorSizeMini = 10.0;

  // buttons & cards
  static final kButtonHeight = 40.0.h;
  static const kButtonBorderWidth = 1.0;
  static const kButtonElevation = 2.0;
  static const kCardElevation = 1.0;

  // top verification code
  static const kOTPCodeLength = 4;
  static const kOTPExpiryDuration = 300; // seconds

  // splash screen
  static const kSplashScreenDelay = 5; // seconds

  // icon images
  static final kIconImagesHeightSize = (Sizing.kSizingMultiple * 3.75).h;

  // horizontal spacing
  static final kWSpacing4 = 4.0.w;
  static final kWSpacing8 = 8.0.w;
  static final kWSpacing10 = 10.0.w;
  static final kWSpacing12 = 12.0.w;
  static final kWSpacing20 = 20.0.w;
  static final kWSpacing25 = 25.0.w;
  static final kWSpacing30 = 30.0.w;
  static final kWSpacing35 = 35.0.w;
  static final kWSpacing40 = 40.0.w;
  static final kWSpacing50 = 50.0.w;
  static final kWSpacing56 = 56.0.w;

  // vertical spacing
  static final kHSpacing4 = 4.0.h;
  static final kHSpacing8 = 8.0.h;
  static final kHSpacing10 = 10.0.h;
  static final kHSpacing12 = 12.0.h;
  static final kHSpacing20 = 20.0.h;
  static final kHSpacing25 = 25.0.h;
  static final kHSpacing30 = 30.0.h;
  static final kHSpacing35 = 35.0.h;
  static final kHSpacing40 = 40.0.h;
  static final kHSpacing50 = 50.0.h;
  static final kHSpacing56 = 56.0.h;
}

class Persistence {
  static const AUTH_KEY = 'AUTH_KEY';
  static const SENDER_ID = 'SENDER_ID';
  static const MESSAGE_INFO = 'MESSAGE_INFO';
  static const ACCOUNT_BALANCE = 'ACCOUNT_BALANCE';
  static const ACCOUNT_METRICS = 'ACCOUNT_METRICS';
  static const AUTH_USER_INFO = 'AUTH_USER_INFO';
  static const AUTH_USER_PROFILE = 'AUTH_USER_PROFILE';
  static const CONTACT_GROUPS = 'CONTACT_GROUPS';
}

class ClientRequestTimeout {
  /// connection timeout
  static const kConnectionTimeout = 30000;
  static const kRecieveTimeout = 30000;
}

class ExceptionMessages {
  static const NO_INTERNET_CONNECTION =
      ExceptionType<ExceptionMessage>.serverException(
    code: ExceptionCode.NO_INTERNET_CONNECTION,
    message: ExceptionMessage.NO_INTERNET_CONNECTION,
  );

  static const INVALID_CACHED_DATA =
      ExceptionType<ExceptionMessage>.serverException(
    code: ExceptionCode.INVALID_CACHED_DATA,
    message: ExceptionMessage.INVALID_CACHED_DATA,
  );

  static const NO_CACHED_DATA =
      ExceptionType<ExceptionMessage>.serverException(
    code: ExceptionCode.NO_CACHED_DATA,
    message: ExceptionMessage.NO_CACHED_DATA,
  );

  static const UNDEFINED =
      ExceptionType<ExceptionMessage>.serverException(
    code: ExceptionCode.UNDEFINED,
    message: ExceptionMessage.UNDEFINED,
  );
}


class BasicUrl {
  // ignore: non_constant_identifier_names
  static final BASE_URL = 'https://rickandmortyapi.com/api/';
}

// String formatError(dynamic message) {
//   print(message);
//   if (message.containsKey("message")) {
//       if (message is Map) {
//     return message.entries.toList().asMap().entries.map((entry) {
//       int index = entry.key + 1;
//       String key = entry.value.key;
//       String values = entry.value.value.join(", ");
//       return "$index: $values";
//     }).join("\n");
//   } else if (message is String) {
//     return message;
//   } else {
//     return "Invalid input type";
//   }
//     // dynamic messageContent = message["message"];
//     // if (messageContent is Map) {
//     //   return messageContent.entries.map((entry) {
//     //     String fieldName = entry.key;
//     //     String errorMessage = entry.value[0];
//     //     return "$fieldName: $errorMessage";
//     //   }).join("\n");
//     // } else if (messageContent is String) {
//     //   return messageContent;
//     // }
//   }
//   return "Invalid error message format";
// }

// String formatError(dynamic message) {
//   if (message is Map) {
//     return message.entries.toList().asMap().entries.map((entry) {
//       // int index = entry.key + 1;
//       // String key = entry.value.key;
//       String values = entry.value.value.join(", ");
//       return ".$values";
//     }).join("\n");
//   } else if (message is String) {
//     return message;
//   } else {
//     return "Invalid input type";
//   }
// }

String formatError(dynamic message) {
  if (message is Map<String, dynamic> && message.containsKey("message")) {
    return message["message"].toString();
  } else if (message is String) {
    return message;
  } else {
    return "An unknown error occurred";
  }
}

class HandleError {
  String handleErrorCodeMessage(Failure<ExceptionMessage> failure) {
    if (failure is ServerFailure) {
      final exception = failure.exception;
      //final code = failure.exception.code;
      final message = exception.message;
      return 'Error: $message'; // Format the message to display
    }
    return 'An unknown error occurred'; // Default error message
  }
}

extension ThemeExtension on BuildContext {
  TextTheme get style => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
  ThemeData get theme => Theme.of(this);
}