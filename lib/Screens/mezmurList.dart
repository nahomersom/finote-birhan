import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/appBar.dart';
import '../constants.dart';
class MezmurLists extends StatefulWidget{
  @override
  State<MezmurLists> createState() => _MezmurListsState();
}

class _MezmurListsState extends State<MezmurLists> with SingleTickerProviderStateMixin {

  AnimationController? _controller;
  Animation? _colorAnimation;
  Animation<double>? _sizeAnimation;
  @override
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
        SharedAppBar(),
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


      );
      }
}