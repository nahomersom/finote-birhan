import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ToogleIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
        onPressed:null,
        child: Icon(Icons.light_mode),
    );
  }
}