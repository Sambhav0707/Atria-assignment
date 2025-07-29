import 'package:atria_assignment_sambhav07/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.textColorGrey]) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      );
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.backgroundColor),
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(AppPallete.backgroundColor),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.buttonColor),
      errorBorder: _border(AppPallete.textColorBlue),
    ),
  );
}
