      import 'package:finote_birhan/Widgets/toogler.dart';
import 'package:flutter/cupertino.dart';
      import 'package:flutter/material.dart';

import '../constants.dart';
      class mezmurLists extends StatelessWidget{
      List<Map> x = [
      {'አይነት':'የአዲስ አመት','ምስል':'https://kjkjkjdkjk'},
      {'አይነት':'የመስቀል','ምስል':'https://kjkjkjdkjk'},
      {'አይነት':'የአቡነአረጋዊ','ምስል':'https://kjkjkjdkjk'},
      {'አይነት':'የህዳር ሚካኤል','ምስል':'https://kjkjkjdkjk'},
      {'አይነት':'የአዲስ አመት','ምስል':'https://kjkjkjdkjk'},
       {'አይነት':'የመስቀል','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የአቡነአረጋዊ','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የህዳር ሚካኤል','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የአዲስ አመት','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የመስቀል','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የአቡነአረጋዊ','ምስል':'https://kjkjkjdkjk'},
            {'አይነት':'የህዳር ሚካኤል','ምስል':'https://kjkjkjdkjk'}
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
      // return ListTile(
      // leading: Container(
      // padding: EdgeInsets.all(6),
      // width: 100,
      // child: CircleAvatar(
      //       radius: 550,
      //       backgroundColor: Colors.brown.shade800,
      //       child: const Text('AH'),
      // )),
      // title:
      // Container(
      // decoration: BoxDecoration(
      //     border: Border(bottom: BorderSide(color: Colors.black26))),
      // child: Text('Place ${x[index]['አይነት']}',
      //     style: kListTextStyle
      // ),
      // ),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //
      // );
       return     Card(
                  elevation: 2,
                  child: ListTile(
                        leading: CircleAvatar(
                              backgroundColor: Colors.purple,
                        ),
                        title: Text('${x[index]['አይነት']}'),

                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
            );
      },
      childCount: x.length,
      ),)

      ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,),

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: kInactiveIconColor,
          selectedItemColor: kActiveIconColor,
          showUnselectedLabels: true,
          items:<BottomNavigationBarItem>[
               BottomNavigationBarItem(
                 icon:Icon(Icons.library_music_outlined),
                 label:'መዝሙሮች'
               ),
            BottomNavigationBarItem(
                icon:Icon(Icons.music_note_outlined),
                label:'እለታዊ መዝሙሮች'
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.menu_book_outlined),
                label:'ትምህርቶች'
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.settings),
                label:'ማስተካከያ'
            ),
          ]
        ),
      );
      }
      }