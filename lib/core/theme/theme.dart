
import 'package:eventhub_lite/core/utils/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTypography {
  /// Primary Colors
  static final Color kPrimaryColor50 = ColorUtil.colorFromHex('#eafaf4');
  static final Color kPrimaryColor100 = ColorUtil.colorFromHex('#bfede0');
  static final Color kPrimaryColor200 = ColorUtil.colorFromHex('#a0e6ce');
  static final Color kPrimaryColor300 = ColorUtil.colorFromHex('#74dab8');
  static final Color kPrimaryColor400 = ColorUtil.colorFromHex('#59d3aa');
  static final Color kPrimaryColor500 = ColorUtil.colorFromHex('#30c895');
  static final Color kPrimaryColor600 = ColorUtil.colorFromHex('#2cb688');
  static final Color kPrimaryColor700 = ColorUtil.colorFromHex('#228e6a');
  static final Color kPrimaryColor800 = ColorUtil.colorFromHex('#1a6e52');
  static final Color kPrimaryColor900 = ColorUtil.colorFromHex('#14543f');

  /// Success Colors
  static final Color kSuccessColorLight = ColorUtil.colorFromHex('#e9f9ef');
  static final Color kSuccessColorLightHover = ColorUtil.colorFromHex('#def6e7');
  static final Color kSuccessColorLightActive = ColorUtil.colorFromHex('#baedcd');
  static final Color kSuccessColorNormal = ColorUtil.colorFromHex('#22c55e');
  static final Color kSuccessColorNormalHover = ColorUtil.colorFromHex('#1fb155');
  static final Color kSuccessColorNormalActive = ColorUtil.colorFromHex('#1b9e4b');
  static final Color kSuccessColorDark = ColorUtil.colorFromHex('#1a9447');
  static final Color kSuccessColorDarkHover = ColorUtil.colorFromHex('#147638');
  static final Color kSuccessColorDarkActive = ColorUtil.colorFromHex('#0f592a');
  static final Color kSuccessColorDarker = ColorUtil.colorFromHex('#0c4521');

  /// Black Shades
  static final Color kBlack50 = ColorUtil.colorFromHex('#e7e7e7');
  static final Color kBlack100 = ColorUtil.colorFromHex('#b6b6b6');
  static final Color kBlack200 = ColorUtil.colorFromHex('#929292');
  static final Color kBlack300 = ColorUtil.colorFromHex('#606060');
  static final Color kBlack400 = ColorUtil.colorFromHex('#414141');
  static final Color kBlack500 = ColorUtil.colorFromHex('#121212');
  static final Color kBlack600 = ColorUtil.colorFromHex('#101010');
  static final Color kBlack700 = ColorUtil.colorFromHex('#0d0d0d');
  static final Color kBlack800 = ColorUtil.colorFromHex('#0a0a0a');
  static final Color kBlack900 = ColorUtil.colorFromHex('#080808');

  /// Grey Shades
  static final Color kGrey50 = ColorUtil.colorFromHex('#f6f6f6');
  static final Color kGrey100 = ColorUtil.colorFromHex('#e3e3e3');
  static final Color kGrey200 = ColorUtil.colorFromHex('#d6d6d6');
  static final Color kGrey300 = ColorUtil.colorFromHex('#c3c3c3');
  static final Color kGrey400 = ColorUtil.colorFromHex('#b7b7b7');
  static final Color kGrey500 = ColorUtil.colorFromHex('#a5a5a5');
  static final Color kGrey600 = ColorUtil.colorFromHex('#969696');
  static final Color kGrey700 = ColorUtil.colorFromHex('#757575');
  static final Color kGrey800 = ColorUtil.colorFromHex('#5b5b5b');
  static final Color kGrey900 = ColorUtil.colorFromHex('#454545');

  /// Secondary (Orange) Colors
  static final Color kSecondaryLight = ColorUtil.colorFromHex('#fef1e8');
  static final Color kSecondaryLightHover = ColorUtil.colorFromHex('#feeadc');
  static final Color kSecondaryLightActive = ColorUtil.colorFromHex('#fdd4b7');
  static final Color kSecondaryNormal = ColorUtil.colorFromHex('#f97316');
  static final Color kSecondaryNormalHover = ColorUtil.colorFromHex('#e06814');
  static final Color kSecondaryNormalActive = ColorUtil.colorFromHex('#c75c12');
  static final Color kSecondaryDark = ColorUtil.colorFromHex('#bb5611');
  static final Color kSecondaryDarkHover = ColorUtil.colorFromHex('#954500');
  static final Color kSecondaryDarkActive = ColorUtil.colorFromHex('#70340a');
  static final Color kSecondaryDarker = ColorUtil.colorFromHex('#572808');

  /// Red Colors
  static final Color kRed50 = ColorUtil.colorFromHex('#FAE8E6');
  static final Color kRed100 = ColorUtil.colorFromHex('#F1B8B0');
  static final Color kRed200 = ColorUtil.colorFromHex('#EA958A');
  static final Color kRed300 = ColorUtil.colorFromHex('#E06554');
  static final Color kRed400 = ColorUtil.colorFromHex('#DA4733');
  static final Color kRed500 = ColorUtil.colorFromHex('#D11900');
  static final Color kRed600 = ColorUtil.colorFromHex('#BE1700');
  static final Color kRed700 = ColorUtil.colorFromHex('#941200');
  static final Color kRed800 = ColorUtil.colorFromHex('#730E00');
  static final Color kRed900 = ColorUtil.colorFromHex('#580B00');

  /// Additional Colors
  static final Color kLineColor = ColorUtil.colorFromHex('#E3E7EC');
  static final Color kSoftBlueColor = ColorUtil.colorFromHex('#4A4A65');
  static final Color kBackgroundColor = Colors.white;
  static final Color kBackgroundColorBorderRipple = ColorUtil.colorFromHex('#a7a8a9');
  static final Color kBlackBoldColor = ColorUtil.colorFromHex('#212121');
  static final Color kBlackGreyColor = ColorUtil.colorFromHex('#EEEEEE');

  static const Color kWhiteColor = Colors.white;
  static const Color kWhiteColor54 = Colors.white54;
  static const Color kBlackColor = Colors.black;
  static const Color kTransparentColor = Colors.transparent;

  static final Color kTextFieldBorderColor = kLineColor;

  /// Tab Colors
  static final Color kTabFill = Colors.white;
  static final Color kTabNotFill = ColorUtil.colorFromHex('#18465A');


  static TextStyle fontStyle = TextStyle(fontSize: 14.sp);


}


class AppTheme {
  static const String fontFamily =  'Kanit';

  /// Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomTypography.kBackgroundColor,
    fontFamily: fontFamily,
    primaryColor: CustomTypography.kPrimaryColor500,
    iconTheme: IconThemeData(
      color: CustomTypography.kBlack400,
      size: 24.sp,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomTypography.kBackgroundColor,
      foregroundColor: CustomTypography.kBlackColor,
      elevation: 1,
    ),
    textTheme: _buildTextTheme(isDark: false),
    inputDecorationTheme: _inputDecorationTheme(isDark: false),
    colorScheme: ColorScheme.light(
      primary: CustomTypography.kPrimaryColor500,
      secondary: CustomTypography.kSecondaryNormal,
      error: CustomTypography.kRed500,
    ),
  );

  /// Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CustomTypography.kBlack500,
    fontFamily: fontFamily,
    primaryColor: CustomTypography.kPrimaryColor500,
    iconTheme: IconThemeData(
      color: CustomTypography.kGrey200,
      size: 24.sp,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomTypography.kBlack700,
      foregroundColor: CustomTypography.kWhiteColor,
      elevation: 1,
    ),
    textTheme: _buildTextTheme(isDark: true),
    inputDecorationTheme: _inputDecorationTheme(isDark: true),
    colorScheme: ColorScheme.dark(
      primary: CustomTypography.kPrimaryColor500,
      secondary: CustomTypography.kSecondaryNormal,
      error: CustomTypography.kRed400,
    ),
  );

  /// Text Theme Builder
  static TextTheme _buildTextTheme({required bool isDark}) {
    final textColor =
        isDark ? CustomTypography.kWhiteColor : CustomTypography.kBlackColor;
    final subTextColor =
        isDark ? CustomTypography.kGrey300 : CustomTypography.kGrey700;

    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: textColor,
        fontFamily: fontFamily,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: textColor,
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: textColor,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: subTextColor,
        fontFamily: fontFamily,
      ),
      labelLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: subTextColor,
        fontFamily: fontFamily,
      ),
    );
  }

  /// Input Field Styling
  static InputDecorationTheme _inputDecorationTheme({required bool isDark}) {
    final fillColor =
        isDark ? CustomTypography.kBlack400 : CustomTypography.kGrey50;
    final borderColor =
        isDark ? CustomTypography.kGrey700 : CustomTypography.kGrey300;

    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      labelStyle: TextStyle(
        color: isDark ? CustomTypography.kGrey200 : CustomTypography.kGrey700,
        fontSize: 14.sp,
      ),
      hintStyle: TextStyle(
        color: isDark ? CustomTypography.kGrey400 : CustomTypography.kGrey500,
        fontSize: 14.sp,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: CustomTypography.kPrimaryColor500, width: 1.5),
      ),
    );
  }
}

