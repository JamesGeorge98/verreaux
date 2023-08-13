import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verreaux/core/constants/app_colors.dart';

class AppThemeData {
  static ThemeData lightThemeData = themeData(lightColorScheme);

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.mainColor,
    secondary: AppColors.black,
    tertiary: AppColors.white,
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: AppColors.red,
    onError: AppColors.white,
    onPrimary: AppColors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  // Actual Themedata
  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
      textSelectionTheme:
          TextSelectionThemeData(cursorColor: colorScheme.secondary),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStatePropertyAll(GoogleFonts.lora()),
              foregroundColor:
                  MaterialStatePropertyAll(colorScheme.secondary))),
      colorScheme: colorScheme,
      textTheme: TextTheme(
          labelLarge: TextStyle(
        fontSize: 14.0,
        color: colorScheme.secondary,
        fontWeight: FontWeight.bold,
      )),
      appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.primary,
          elevation: 5,
          centerTitle: true,
          toolbarTextStyle: GoogleFonts.lora(),
          titleTextStyle: GoogleFonts.lora(fontSize: 24),
          actionsIconTheme: IconThemeData(color: colorScheme.secondary),
          foregroundColor: colorScheme.secondary),
      primaryColor: colorScheme.primary,
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: colorScheme.secondary)),
      ),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.grey),
          floatingLabelStyle: TextStyle(color: colorScheme.secondary),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid, color: colorScheme.secondary),
          )),
    );
  }
}
