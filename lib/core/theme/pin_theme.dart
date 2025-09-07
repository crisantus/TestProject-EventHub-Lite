

// import 'package:help_africa_test/core/theme/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pinput/pinput.dart';


// class PinThemeBuilder {
//   static PinTheme defaultTheme(BuildContext context) {
//     final isDark = Theme.of(context).brightness == Brightness.dark;
//     final borderColor =
//         isDark ? CustomTypography.kGrey700 : CustomTypography.kGrey300;
//     final textColor =
//         isDark ? CustomTypography.kWhiteColor : CustomTypography.kBlackColor;

//     return PinTheme(
//       height: 50.h,
//       width: 46.w,
//       textStyle: TextStyle(
//         fontSize: 15.sp,
//         fontWeight: FontWeight.w800,
//         color: textColor,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: Colors.transparent,
//         border: Border.all(color: borderColor),
//       ),
//     );
//   }

//   static PinTheme focusedTheme(BuildContext context) {
//     final isDark = Theme.of(context).brightness == Brightness.dark;
//     final borderColor =
//         isDark ? CustomTypography.kPrimaryColor400 : CustomTypography.kPrimaryColor600;
//     final textColor =
//         isDark ? CustomTypography.kWhiteColor : CustomTypography.kBlackColor;

//     return defaultTheme(context).copyWith(
//       height: 58.h,
//       width: 54.w,
//       textStyle: TextStyle(
//         fontSize: 15.sp,
//         fontWeight: FontWeight.w800,
//         color: textColor,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.transparent,
//         border: Border.all(color: borderColor),
//       ),
//     );
//   }

//   static PinTheme errorTheme(BuildContext context) {
//     return defaultTheme(context).copyWith(
//       height: 68.h,
//       width: 64.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(1010),
//         color: Colors.grey.shade200,
//         border: Border.all(color: Colors.red),
//       ),
//     );
//   }
// }
