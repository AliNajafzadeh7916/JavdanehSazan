import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    fontFamily: 'IRANSans',
    appBarTheme: const AppBarTheme(color: Color(0XFF04293A)),
    listTileTheme: const ListTileThemeData(
        iconColor: Colors.white, textColor: Colors.white),
    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(66, 247, 247, 247),
            offset: Offset(0, -1),
            blurRadius: 1,
          ),
        ],
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
    ),
    dividerColor: Colors.white12,
    unselectedWidgetColor: Colors.white70,
    shadowColor: const Color.fromARGB(255, 255, 255, 255),
    scaffoldBackgroundColor: const Color(0XFF041C32),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0XFF041C32)),
    primarySwatch: MyThemes.custom1,
    secondaryHeaderColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
    dialogTheme:
        DialogTheme(backgroundColor: Colors.grey.shade900, elevation: 4),
    canvasColor: const Color(0XFF041C32),
    snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(fontFamily: 'IRANSans')),
    //...............
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
      floatingLabelStyle: const TextStyle(color: Colors.white),
      helperStyle: const TextStyle(color: Colors.white),
      hintStyle: const TextStyle(color: Colors.white),
      errorStyle: const TextStyle(color: Colors.red),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0XFF041C32),
    ),
  );

//
//
//

  static final lightTheme = ThemeData(
    fontFamily: 'IRANSans',

    listTileTheme: const ListTileThemeData(iconColor: Colors.black),
    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(66, 0, 0, 0),
            offset: Offset(0, -1),
            blurRadius: 1,
          ),
        ],
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(color: Colors.black),
      labelSmall: TextStyle(color: Colors.black38),
      titleSmall: TextStyle(color: Colors.black),
      displayLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
      displaySmall: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.black),
      labelMedium: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
    ),
    dividerColor: Colors.black12,
    unselectedWidgetColor: Colors.black,
    primaryColorLight: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    //primaryColor: Color.fromARGB(255, 0, 83, 250),
    primarySwatch: MyThemes.custom1,
    secondaryHeaderColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
    dialogTheme: const DialogTheme(backgroundColor: Colors.white, elevation: 4),
    snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(fontFamily: 'IRANSans')),
    // colorScheme: const ColorScheme.light()
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black12, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(20)),
    ),
  );

  static const MaterialColor primeryColor = MaterialColor(
    0xFF00BCD4,
    <int, Color>{
      50: Color(0xFFA4BBC4), // 10%
      100: Color(0xFF8FB1C0), // 20%
      200: Color(0xFF7997AB), // 30%
      300: Color(0xFFCCF7F3), // 40%
      400: Color(0xFFB3F2ED), // 50%
      500: Color(0xFF00BCD4), // 60%
      600: Color(0xFF405F71), // 70%
      700: Color(0xFF395165), // 80%
      800: Color(0xFF32445A), // 90%
      900: Color(0xFF2B374F), // 100%
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    0xFFFFC107,
    <int, Color>{
      50: Color(0xFFffe083), // 10%
      100: Color(0xFFffd451), // 20%
      200: Color(0xFFffd451), // 30%
      300: Color(0xFFffcd39), // 40%
      400: Color(0xFFffc720), // 50%
      500: Color(0xFFffc107), // 60%
      600: Color(0xFFecb100), // 70%
      700: Color(0xFFd29d00), // 80%
      800: Color(0xFFb78a00), // 90%
      900: Color(0xFF9d7600), // 100%
    },
  );
}
