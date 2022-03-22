import 'package:flutter/material.dart';
//light theme
const kPrimaryColor = Color(0xFF7b1fa2);
const kSecondaryColor = Color(0xFFffca28);
const kTabBarColor = Color(0xFFae52d4);
const kStatusBarColor = Color(0xFF4a0072);
// const kListLightBackgroundColor = Color(0xFF788198);
const kListLightBackgroundColor = Color(0xFFF2F2F2);
const kFillColor = Color(0xffe4e4e4);
const kInactiveIconColor = Color(0xff8e8e93);
const kActiveIconColor = Color(0xff007aff);
//dark theme
const bgColorDarkTheme = Color(0xFF19182c);
const kTextColorDarkTheme = Colors.white;
const kTabBarColorDarkTheme = Color(0xff212121);
const kListDarkBackgroundColor = Color(0xFF242339);
//search field
const kSearchField = InputDecoration(
  // contentPadding: EdgeInsetsGeometry.lerp(2, b, t),
  hintText:'የመዝሙር መደብ ይፈልጉ',
  floatingLabelBehavior: FloatingLabelBehavior.never,
  prefixIcon: Icon(
    Icons.search,

  ),
  filled:true,
  fillColor:  kFillColor,
  hintStyle: TextStyle(
    color: kInactiveIconColor,
    height: 2.8
    // fontWeight: FontWeight.bold
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:  BorderSide(color: Color(0xffe4e4e4)),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(

    borderSide:  BorderSide(color: Color(0xffe4e4e4)),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),

);
const kListTextStyle = TextStyle(

  fontSize: 25.0
);