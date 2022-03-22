import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class mezmurLists extends StatefulWidget{
  @override
  State<mezmurLists> createState() => _mezmurListsState();
}

class _mezmurListsState extends State<mezmurLists> with SingleTickerProviderStateMixin {

  AnimationController? _controller;
  Animation? _colorAnimation;
  Animation<double>? _sizeAnimation;
  @override
  void initState(){

  }
  @override
  void dispose(){
  }
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

      ),
      SliverList(delegate: SliverChildBuilderDelegate(
      (context, int index) {
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

                 icon:IconButton(
                   icon: Icon(
                     Icons.library_music_outlined,
                       size:_sizeAnimation?.value,

                   ),

                   onPressed: (){},
                 ),
                 label:'መዝሙሮች',

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