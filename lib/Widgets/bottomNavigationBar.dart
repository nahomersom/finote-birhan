import 'package:flutter/material.dart';

import '../Screens/mezmurList.dart';
import '../Screens/setting.dart';
import '../Screens/temhertoch.dart';
import '../Screens/weeklyMezmurs.dart';
import '../constants.dart';

class SharedBottomNavigationBar extends StatefulWidget{
  @override
  State<SharedBottomNavigationBar> createState() => _SharedBottomNavigationBarState();
}

class _SharedBottomNavigationBarState extends State<SharedBottomNavigationBar> {
  bool isIconPressed = false;
  List<Widget> _screens = [
   MezmurLists(),
   WeeklyMezmurs(),
   Temehertoch(),
   Setting()
 ];

 int _currentIndex = 0;

 void onItemTab(int index){
   setState(() {
      isIconPressed = !isIconPressed;
     _currentIndex = index;
   });

 }

 Widget build(BuildContext context){
    return Scaffold(
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: kInactiveIconColor,
          selectedItemColor: kActiveIconColor,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: onItemTab,
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: AnimatedSwitcher(
                duration: const Duration(seconds: 3),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(child: child, scale: animation);
                },
                child: isIconPressed ? Icon(Icons.library_music):Icon(
                    Icons.library_music_outlined),
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