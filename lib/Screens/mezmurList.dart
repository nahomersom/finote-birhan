import 'package:finote_birhan/Widgets/toogler.dart';
import 'package:flutter/material.dart';
class mezmurLists extends StatelessWidget{
List<Map> x = [
{'አይነት':'የአዲስ አመት'},
{'አይነት':'የመስቀል'},
{'አይነት':'የአቡነአረጋዊ'},
{'አይነት':'የህዳር ሚካኤል'}

];
@override
Widget build(BuildContext context) {

return Scaffold(
body:CustomScrollView(
slivers:[

SliverAppBar(
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

title: Text('መዝሙራት'),

flexibleSpace: FlexibleSpaceBar(
background: Container(

margin: const EdgeInsets.only(right: 50, left: 50,top: 70),

child: Center(

child:TextField(

decoration: InputDecoration(
isDense: true, // Added this
contentPadding: EdgeInsets.all(8),
border: OutlineInputBorder(

borderRadius: BorderRadius.all(Radius.circular(10))
),
labelText: 'መዝሙር አይነት ይምረጡይምረጡ',
),
)
)

),
),
// flexibleSpace: FlexibleSpaceBar(
// title: Text('hdkjkdjk'),
// background: Text('kdjakjkjdkajjjjjjjjjjjjjjjjjjjjjj'),
// centerTitle: true,
// ),
// bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(0)),

//     bottom: AppBar(
//     title: Container(
//       height: 45,
//       child: TextField(
//         decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             hintText: 'Enter a search term'),
//       ),
//     ),
// // ),
// ),
),
SliverList(delegate: SliverChildBuilderDelegate(
(context, int index) {
return ListTile(
leading: Container(
padding: EdgeInsets.all(8),
width: 100,
child: Placeholder()),
title:
Container(
decoration: BoxDecoration( border: Border(bottom: BorderSide(color: Colors.black26))),
child: Text('Place ${x[index]['አይነት']}', textScaleFactor: 2),
)

);
},
childCount: x.length,
),)

]
),
floatingActionButton: FloatingActionButton(onPressed: null,),
);
}
}