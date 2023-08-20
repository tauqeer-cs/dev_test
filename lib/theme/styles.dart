import 'package:dev_text/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme.dart';

class Styles {
  static Color get kPrimaryColor => const Color.fromRGBO(227, 30, 51, 1);

  static Color get kBackGroundGrayColor =>
      const Color.fromRGBO(243, 243, 249, 1);

  static Color get kBackGroundGrayColorDark =>
      const Color.fromRGBO(192, 192, 192, 1);

  static Color get kBackGroundGrayColorDark2 =>
      const Color.fromRGBO(154, 154, 154, 1);

  static Color get kActiveColor => const Color.fromRGBO(227, 30, 51, 1);

  static Color get kDisabledButton => const Color.fromRGBO(185, 195, 199, 1);

  static Color get kLightBgColor => const Color(0xFFFFFFFF);

  static Color get kDarkBgColor => const Color(0xFF3A3A3A);

  static Color get underlineColor => const Color(0xFFD8D8DE);

  static Color get kBorderColor => const Color.fromRGBO(141, 153, 174, 1);

  static Color get kActiveGrey => const Color.fromRGBO(137, 137, 137, 1);

  static Color get kContainerColor => const Color(0xC5EEEEEE);

  static Color get kTextLightThemeColor => const Color(0xFF4B4B4B);

  static Color get kDividerColor => const Color.fromRGBO(237, 242, 244, 1);

  static Color get kInactiveColor => const Color.fromRGBO(185, 195, 199, 1);

  static Color get kCanvasColor => const Color(0xFFF2F2F3);

  static Color get kTextColor => const Color.fromRGBO(43, 45, 66, 1);

  static Color get kSubTextColor => const Color.fromRGBO(102, 102, 102, 1);

  static Color get kBlueColor => const Color.fromRGBO(56, 83, 226, 1);

  static Color get kZurichColor => const Color.fromRGBO(0, 118, 190, 1);

  static Color get kBorderActionColor => const Color.fromRGBO(112, 112, 112, 1);

  static Color get kIconColor => const Color(0xFF8299B9);

  static Color get kDartTeal => const Color.fromRGBO(0, 48, 73, 1);

  static Color get kDartBlack => const Color.fromRGBO(26, 24, 24, 1);

  static Color get kBlack => const Color.fromRGBO(0, 0, 0, 1);

  static Color get kLinkColor => const Color.fromRGBO(0, 0, 228, 1);

//  static Color get kSubTextColor => const Color.fromRGBO(102, 102, 102, 1);
  static Color get klightBackgroundColor => const Color.fromRGBO(0, 0, 0, 0.05);

  static Color get greyLineColor => Color.fromRGBO(120, 120, 122, 1);

  static Color get kDisabledGrey => const Color.fromRGBO(151, 151, 151, 1);


  static ThemeData theme(bool isLight) {
    return ThemeData(
      fontFamily: "EncodeSans",
      unselectedWidgetColor: kSubTextColor,
      colorSchemeSeed: kPrimaryColor,
      canvasColor: isLight ? Colors.white : kTextLightThemeColor,
      cardColor: isLight ? Colors.white : kTextLightThemeColor,
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? kLightBgColor : kDarkBgColor,
        elevation: 5,
        titleTextStyle: kHugeSemiBold.copyWith(
          color: isLight ? const Color.fromRGBO(0, 48, 73, 1) : Colors.white,
          fontSize: 20,
        ),
        centerTitle: true,
        titleSpacing: 3,
        iconTheme: IconThemeData(
          color: isLight ? kTextColor : Colors.white,
        ),
      ),
      iconTheme: IconThemeData(
        color: isLight ? kTextColor : Colors.white,
        size: 20,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: isLight ? kTextColor : Colors.white,
      ),
      scaffoldBackgroundColor: isLight ? Colors.white : kDarkBgColor,
      scrollbarTheme: const ScrollbarThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return kBlueColor.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return kBackGroundGrayColorDark;
              }
              return kBlueColor; // Use the component's default./ Use the component's default.
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return isLight ? Colors.white : Colors.white;
              } else if (states.contains(MaterialState.disabled)) {
                return Colors.white.withOpacity(0.7);
              }
              return isLight
                  ? Colors.white
                  : Colors
                      .white; // Use the component's default./ Use the component's default.
            },
          ),
          minimumSize: MaterialStateProperty.all(Size(32.w, 28.h)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textStyle: MaterialStateProperty.all(kMediumMedium),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          ),
        ),
      ),
      shadowColor: const Color(0xFF696868),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kPrimaryColor,
        selectionColor: kPrimaryColor,
        selectionHandleColor: kPrimaryColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(100, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return kActiveColor.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return kDisabledButton;
              }
              return kPrimaryColor; // Use the component's default./ Use the component's default.
            },
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: isLight ? Colors.white : kDarkBgColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        elevation: 3,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            isLight ? const Color.fromRGBO(241, 241, 241, 0.8) : Colors.white,
        selectedItemColor: isLight ? kPrimaryColor : Colors.white,
        unselectedIconTheme:
            const IconThemeData(color: Color.fromRGBO(0, 48, 73, 1), size: 30),
        selectedIconTheme: IconThemeData(color: kPrimaryColor, size: 30),
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: kPrimaryColor,
        ),
        unselectedLabelStyle: TextStyle(
          color: kBorderColor,
        ),
        unselectedItemColor: kBorderColor,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: isLight ? Colors.white : kTextColor.withOpacity(0.6),
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
          fontSize: 80,
          color: Colors.white,
        ),
        titleMedium: kMediumMedium.copyWith(
          color: isLight ? kTextColor : kLightBgColor,
        ),
        bodyLarge: kHugeMedium.copyWith(
          color: isLight ? kTextColor : kLightBgColor,
        ),
        bodyMedium: kMediumMedium.copyWith(
          color: isLight ? kTextColor : kLightBgColor,
        ),
        bodySmall: kSmallMedium.copyWith(
          color: isLight ? kTextColor : kLightBgColor,
        ),
      ).apply(
        bodyColor: isLight ? kTextColor : kLightBgColor,
        displayColor: isLight ? kTextColor : kLightBgColor,
      ),
    );
  }
}
