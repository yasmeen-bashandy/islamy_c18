import 'package:flutter/material.dart';
import 'package:islamy/common/app_color.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.goldColor),
    scaffoldBackgroundColor: AppColor.blackColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.blackColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.goldColor),
      titleTextStyle: TextStyle(
        color: AppColor.goldColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      elevation: 0,
      backgroundColor: AppColor.goldColor,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedItemColor: AppColor.blackColor,
    ),
  );
}
