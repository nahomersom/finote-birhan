import 'package:flutter/material.dart';
class SharedAppBar extends StatelessWidget with PreferredSizeWidget {
@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);

String? title;
Icon? icon;
SharedAppBar({this.title,this.icon});
Widget build(BuildContext context){
return AppBar(
title: title != null ? Text(title!) : Icon(Icons.arrow_back_ios),
);
}
}