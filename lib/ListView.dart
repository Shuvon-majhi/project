import 'package:flutter/material.dart';
import 'package:project/page1.dart';

class List extends StatelessWidget {
  List({super.key});
  var my = [
    {"id": 1, "name": "Alice", "age": 25},
    {"id": 2, "name": "Bob", "age": 30},
    {"id": 3, "name": "Charlie", "age": 22},
    {"id": 4, "name": "David", "age": 35},
    {"id": 5, "name": "Eva", "age": 28},
    {"id": 6, "name": "Frank", "age": 40},
    {"id": 7, "name": "Grace", "age": 32},
    {"id": 8, "name": "Henry", "age": 27},
    {"id": 9, "name": "Ivy", "age": 31},
    {"id": 10, "name": "Jack", "age": 29},
    {"id": 11, "name": "Kelly", "age": 33},
    {"id": 12, "name": "Liam", "age": 26},
    {"id": 13, "name": "Mia", "age": 34},
    {"id": 14, "name": "Nathan", "age": 23},
    {"id": 15, "name": "Olivia", "age": 37},
    {"id": 16, "name": "Peter", "age": 28},
    {"id": 17, "name": "Quinn", "age": 31},
    {"id": 18, "name": "Rachel", "age": 29},
    {"id": 19, "name": "Samuel", "age": 36},
    {"id": 20, "name": "Tina", "age": 30}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(15),
      itemCount: my.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.deepPurple.shade100,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page1(),
                ),
              );
            },
            title: Text(my[index]['name'].toString()),
          ),
        );
      },
    );
  }
}
