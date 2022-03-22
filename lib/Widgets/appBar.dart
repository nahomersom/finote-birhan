import 'package:flutter/material.dart';

import '../constants.dart';
class SharedAppBar extends StatelessWidget{
@override
Widget build(BuildContext context){
return  SliverAppBar(
  //below change the status bar color
  // systemOverlayStyle: SystemUiOverlayStyle(
  //
  //   statusBarColor: Colors.pink, // Status bar
  // ),
  pinned: true,
  snap:false,
  floating:true,
  expandedHeight:100,


  centerTitle: true,

  title: Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),

        Text('መዝሙራት'),
        Icon(
            Icons.notifications_active_outlined,
            size: 32.0,
            color: kInactiveIconColor
        )
      ],
    ),
  ),



  flexibleSpace: FlexibleSpaceBar(
    background: Container(

        margin: const EdgeInsets.only(right: 50, left: 50,top: 75,bottom: 10.0),

        child: Center(

            child:TextField(

                decoration: kSearchField
            )
        )

    ),
  ),

);
}
}