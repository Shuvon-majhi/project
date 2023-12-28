import 'package:flutter/material.dart';
import 'package:tabbed_sliverlist/tabbed_sliverlist.dart';

class tabView extends StatefulWidget {
  const tabView({super.key});

  @override
  State<tabView> createState() => _tabViewState();
}

class _tabViewState extends State<tabView> {
  final MyList = [
    {'name': 'Shuvon', 'city': 'Dhaka', 'age': '20'},
    {'name': 'John', 'city': 'New York', 'age': '25'},
    {'name': 'Alice', 'city': 'London', 'age': '30'},
    {'name': 'Bob', 'city': 'Tokyo', 'age': '22'},
    {'name': 'Emma', 'city': 'Paris', 'age': '28'},
    {'name': 'Michael', 'city': 'Berlin', 'age': '35'},
    {'name': 'Sophia', 'city': 'Sydney', 'age': '29'},
    {'name': 'David', 'city': 'Toronto', 'age': '32'},
    {'name': 'Olivia', 'city': 'Los Angeles', 'age': '27'},
    {'name': 'Daniel', 'city': 'Dubai', 'age': '31'},
    {'name': 'Isabella', 'city': 'Singapore', 'age': '45'},
    {'name': 'Alexander', 'city': 'Moscow', 'age': '39'},
    {'name': 'Mia', 'city': 'Hong Kong', 'age': '26'},
    {'name': 'William', 'city': 'Seoul', 'age': '34'},
    {'name': 'Ella', 'city': 'Mumbai', 'age': '33'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabbedList(
        tabLength: 2,
        sliverTabBar: SliverTabBar(
          title: Text('Tabbed SliverList'),
          centerTitle: true,
          tabBar: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'listview',
              ),
              Tab(
                text: 'grid view',
              ),
            ],
          ),
        ),
        tabLists: [
          TabListBuilder(
            uniquePageKey: 'Page1',
            length: MyList.length,
            builder: (context, index) {
              return ListTile(
                title: Text(MyList[index]['name']!),
                subtitle: Text(MyList[index]['city']!),
              );
            },
          ),
          TabListBuilder(
            uniquePageKey: 'Page2',
            length: MyList.length,
            builder: (context, index) {
              return ListTile(
                title: Text(MyList[index]['name']!),
                subtitle: Text(MyList[index]['city']!),
              );
            },
          ),
        ],
      ),
    );
  }
}
