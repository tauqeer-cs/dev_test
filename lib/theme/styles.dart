import 'package:dev_text/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme.dart';

class Styles {
  static Color get kPrimaryColor => const Color.fromRGBO(227, 30, 51, 1);

  static Color get kBackGroundGrayColor => const Color.fromRGBO(243, 243, 249, 1);

  static Color get kBackGroundGrayColorDark => const Color.fromRGBO(192, 192, 192, 1);

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

  static Color get kBlueColor => const Color.fromRGBO(51, 102, 204, 1);

  static Color get kZurichColor => const Color.fromRGBO(0, 118, 190, 1);

  static Color get kBorderActionColor => const Color.fromRGBO(112, 112, 112, 1);

  static Color get kOrangeColor => const Color.fromRGBO(243, 110, 56, 1);

  static Color get kIconColor => const Color(0xFF8299B9);

  static Color get kDartTeal => const Color.fromRGBO(0, 48, 73, 1);

  static Color get kDartBlack => const Color.fromRGBO(26, 24, 24, 1);

  static Color get kBlack => const Color.fromRGBO(0, 0, 0, 1);

  static Color get kLinkColor => const Color.fromRGBO(0, 0, 228, 1);

//  static Color get kSubTextColor => const Color.fromRGBO(102, 102, 102, 1);
  static Color get klightBackgroundColor => const Color.fromRGBO(0, 0, 0, 0.05);


  static Color get greyLineColor => Color.fromRGBO(120, 120, 122, 1);

  static Color get kDisabledGrey => const Color.fromRGBO(151, 151, 151, 1);

  static LinearGradient get gradient => const LinearGradient(colors: <Color>[
        Color(0xFF02C2F3),
        Color(0xFF10C7E9),
        Color(0xFF2AD0D8),
        Color(0xFF3CD6CD),
        Color(0xFF53DFBD),
        Color(0xFF66E7B1),
        Color(0xFF74EAA8),
        Color(0xFF7BEDA2),
      ]);

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
      toggleableActiveColor: kPrimaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return kActiveColor.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return kActiveColor.withOpacity(0.7);
              }
              return kActiveColor; // Use the component's default./ Use the component's default.
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
          minimumSize: MaterialStateProperty.all(Size(500.w, 45.h)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: kPrimaryColor)),
          ),
          textStyle: MaterialStateProperty.all(kLargeSemiBold),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white.withOpacity(0.5);
              } else if (states.contains(MaterialState.disabled)) {
                return Colors.white.withOpacity(0.7);
              }
              return Colors
                  .white; // Use the component's default./ Use the component's default.
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return BorderSide(
                  color: kPrimaryColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                );
              } else if (states.contains(MaterialState.disabled)) {
                return const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                  style: BorderStyle.solid,
                );
              }
              return BorderSide(
                color: kPrimaryColor,
                width: 1.0,
                style: BorderStyle.solid,
              ); // Use the component's default./ Use the component's default.
            },
          ),
          textStyle: MaterialStateProperty.all(kLargeSemiBold),
          minimumSize: MaterialStateProperty.all(Size(500.w, 45.h)),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return isLight ? kPrimaryColor : Colors.white;
              } else if (states.contains(MaterialState.disabled)) {
                return kPrimaryColor.withOpacity(0.5);
              }
              return isLight
                  ? kPrimaryColor
                  : Colors
                      .white; // Use the component's default./ Use the component's default.
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 1,
                color: kBorderColor,
              ),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
      shadowColor: const Color(0xFF696868),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kPrimaryColor,
        selectionColor: kPrimaryColor,
        selectionHandleColor: kPrimaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: false,
        errorMaxLines: 2,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        border: const UnderlineInputBorder(),
        prefixIconColor: isLight ? kTextColor : Colors.white,
        suffixIconColor: isLight ? kTextColor : Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kBorderColor.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        filled: false,
        labelStyle: kSmallSemiBold.copyWith(
          color: isLight
              ? kSubTextColor.withOpacity(0.5)
              : kLightBgColor.withOpacity(0.5),
        ),
        errorStyle: kSmallSemiBold.copyWith(
          color: isLight ? Colors.red : kLightBgColor,
        ),
        hintStyle: kSmallSemiBold.copyWith(
          color: isLight
              ? kSubTextColor.withOpacity(0.5)
              : kLightBgColor.withOpacity(0.5),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        side: BorderSide(
          color: kBorderActionColor,
          width: 1.5,
        ),
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
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        padding: const EdgeInsets.all(5),
        labelPadding: const EdgeInsets.all(2),
        backgroundColor: kDisabledButton,
        shadowColor: kTextColor,
        labelStyle: kMediumSemiBold.copyWith(color: Colors.white),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: kTextLightThemeColor,
        unselectedLabelColor: kTextLightThemeColor,
        labelStyle: kMediumHeavy.copyWith(
          color: kTextLightThemeColor,
        ),
        unselectedLabelStyle: kMediumHeavy.copyWith(
          color: kTextLightThemeColor,
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: isLight ? Colors.white : kTextColor.withOpacity(0.6),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return kPrimaryColor;
            }
            if (states.contains(MaterialState.selected)) {
              return kPrimaryColor;
            }
            return kPrimaryColor;
          },
        ),
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

