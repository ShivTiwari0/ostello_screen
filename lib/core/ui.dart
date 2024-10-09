import 'package:flutter/material.dart';

class AppColors {
  static Color accent = const Color(0xFF7D23E0);
  static Color text = const Color(0xff39353c);
  static Color textLight = const Color(0xff8a8a8a);
  static Color white = const Color(0xffffffff);
  static Color red = const Color.fromARGB(255, 247, 65, 52);
}

class Themes {
  static ThemeData defaultTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.text),
          titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.text)),
      colorScheme: ColorScheme.light(
          primary: AppColors.accent, secondary: AppColors.accent));
}

class TextStyles {
  static TextStyle heading1 = TextStyle(
      fontWeight: FontWeight.bold, color:AppColors.white, fontSize: 48);

  static TextStyle heading2 = TextStyle(
      fontWeight: FontWeight.bold, color:AppColors.white, fontSize: 32);

  static TextStyle heading3 = TextStyle(
      fontWeight: FontWeight.bold, color:AppColors.white, fontSize: 24);

  static TextStyle body1 = TextStyle(
      fontWeight: FontWeight.normal, color:AppColors.white, fontSize: 18);

  static TextStyle body2 = TextStyle(
      fontWeight: FontWeight.normal, color:AppColors.white, fontSize: 16);
}
  