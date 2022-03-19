import 'package:finote_birhan/constants.dart';
import 'package:flutter/material.dart';
final lightThemeData = ThemeData(
 brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kSecondaryColor),
  tabBarTheme: TabBarTheme(labelColor: kTabBarColor),

  elevatedButtonTheme: elevatedButton
);
final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: bgColorDarkTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kTextColorDarkTheme),
  tabBarTheme: TabBarTheme(labelColor: kTabBarColorDarkTheme),

);
final elevatedButton = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: kSecondaryColor,


  )
);