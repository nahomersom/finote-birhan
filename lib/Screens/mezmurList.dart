import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Widgets/appBar.dart';
class mezmurLists extends StatelessWidget{
  List<Map> x = [
    {'x':1},
    {'y':2},
    {'z':3}
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

                  title: Text('m'),
               
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(

                      margin: const EdgeInsets.only(right: 50, left: 50,top: 65),

                      child: Center(

                            child:TextField(

                              decoration: InputDecoration(
                                isDense: true,                      // Added this
                                contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                labelText: 'choose',
                          ),
                            )
                          )

                  ),
                ),
                ),
              SliverList(delegate: SliverChildBuilderDelegate(
                    (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(8),
                      width: 100,
                      child: Placeholder()),
                  title: Text('Place ${index + 1}', textScaleFactor: 2),
                );
              },
                childCount: 20,
              ),)

          ]
        )
    );
  }
}