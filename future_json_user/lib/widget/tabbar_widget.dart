import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget(
      {Key? key,
      required this.title,
      required this.tabs,
      required this.children})
      : super(key: key);
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          bottom: TabBar(
              indicatorColor: Colors.green, isScrollable: true, tabs: tabs),
        ),
        body: TabBarView(
          children: children,
        ),
      ),
    );
  }
}
