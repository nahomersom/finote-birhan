import 'package:finote_birhan/Screens/mezmurList.dart';
import 'package:flutter/material.dart';
import 'package:finote_birhan/theme.dart';
void main(){

   runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: Scaffold(
          body: mezmurLists()
      ),
    );
  }
}