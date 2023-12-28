import 'package:flutter/material.dart';
import 'package:project/GridView.dart';
import 'package:project/ListView.dart';

class tabWithList extends StatefulWidget {
  const tabWithList({super.key});

  @override
  State<tabWithList> createState() => _tabWithListState();
}

class _tabWithListState extends State<tabWithList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Tab bar',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 55,
                color: Colors.white,
                child: TabBar(
                  //isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  unselectedLabelColor: Colors.pinkAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pinkAccent,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.pinkAccent),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('LIST VIEW'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.pinkAccent),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Grid VIEW'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.pinkAccent),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('top VIEW'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.pinkAccent),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Bottom VIEW'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  List(),
                  Grid(),
                  Text('data2'),
                  Text('data3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
