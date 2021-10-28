import 'package:flutter/material.dart';
import 'package:flutter_demo/page/containt_page.dart';
import 'package:flutter_demo/page/every_page.dart';
import 'package:flutter_demo/page/expand_page.dart';
import 'package:flutter_demo/page/fold_page.dart';
import 'package:flutter_demo/page/for_each_page.dart';
import 'package:flutter_demo/page/from_page.dart';
import 'package:flutter_demo/page/map_page.dart';
import 'package:flutter_demo/page/reduce_page.dart';
import 'package:flutter_demo/page/sort_page.dart';
import 'package:flutter_demo/page/take_skip_page.dart';
import 'package:flutter_demo/page/where_page.dart';
import 'package:flutter_demo/widget/tabbar_widget.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
      title: 'Utility Methods',
      tabs: [
        Tab(
          icon: Icon(Icons.color_lens),
          text: 'FoerEach',
        ),
        Tab(
          icon: Icon(Icons.map),
          text: 'Map',
        ),
        Tab(
          icon: Icon(Icons.space_bar),
          text: 'Contains',
        ),
        Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sort'),
        Tab(icon: Icon(Icons.reduce_capacity), text: 'Reduce'),
        Tab(icon: Icon(Icons.reduce_capacity), text: 'Fold'),
        Tab(icon: Icon(Icons.all_inclusive), text: 'Every'),
        Tab(icon: Icon(Icons.question_answer_outlined), text: 'Where'),
        Tab(icon: Icon(Icons.skip_next), text: 'Take & Skip'),
        Tab(icon: Icon(Icons.copy), text: 'From'),
        Tab(icon: Icon(Icons.expand), text: 'Expand'),
      ],
      children: [
        ForEachPage(),
        MapPage(),
        ContaintPage(),
        SortPage(),
        ReducePage(),
        FoldPage(),
        EveryPage(),
        WherePage(),
        TakeSkipPage(),
        FromPage(),
        ExpandPage(),
      ],
    );
  }
}
