import 'package:finote_birhan/constants.dart';
import 'package:flutter/material.dart';
final lightThemeData = ThemeData(
 // brightness: Brightness.dark,
 //  primaryColor: kPrimaryColor,
 //  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kSecondaryColor),
 //  tabBarTheme: TabBarTheme(labelColor: kTabBarColor),
 //
 //  elevatedButtonTheme: elevatedButton
 //  colorScheme: ColorScheme.light().copyWith(primary: Colors.red),




//  appBarTheme: AppBarTheme(backgroundColor: kListLightBackgroundColor),
  // colorScheme: ThemeData().colorScheme.copyWith(
  //   primary:Color(0xff8e8e93),
  // ),



colorScheme: ColorScheme.fromSwatch(
    primarySwatch:MaterialColor(0xFFf2f2f2, color),
),


);
final darkThemeData = ThemeData(
  // brightness: Brightness.dark,
  // primaryColor: bgColorDarkTheme,
  // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kTextColorDarkTheme),
  // tabBarTheme: TabBarTheme(labelColor: kTabBarColorDarkTheme),

);
final elevatedButton = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: kSecondaryColor,


  )
);


Map<int, Color> color =
{
  50:Color.fromRGBO(242,242,242, .1),
  100:Color.fromRGBO(242,242,242, .2),
  200:Color.fromRGBO(242,242,242, .3),
  300:Color.fromRGBO(242,242,242, .4),
  400:Color.fromRGBO(242,242,242, .5),
  500:Color.fromRGBO(242,242,242, .6),
  600:Color.fromRGBO(242,242,242, .7),
  700:Color.fromRGBO(242,242,242, .8),
  800:Color.fromRGBO(242,242,242, .9),
  900:Color.fromRGBO(242,242,242, 1),
};