import 'package:flutter/material.dart';
import 'package:project/page1.dart';

class Grid extends StatelessWidget {
  Grid({super.key});

  var item = [
    {"name": "Aria", "age": 26},
    {"name": "Bryce", "age": 31},
    {"name": "Cara", "age": 23},
    {"name": "Derek", "age": 36},
    {"name": "Eliza", "age": 29},
    {"name": "Finn", "age": 41},
    {"name": "Giselle", "age": 33},
    {"name": "Hugo", "age": 28},
    {"name": "Isabella", "age": 32},
    {"name": "Jaden", "age": 30},
    {"name": "Kylie", "age": 34},
    {"name": "Landon", "age": 27},
    {"name": "Mila", "age": 35},
    {"name": "Noah", "age": 24},
    {"name": "Olive", "age": 38},
    {"name": "Preston", "age": 29},
    {"name": "Quincy", "age": 31},
    {"name": "Rosalie", "age": 30},
    {"name": "Sawyer", "age": 37},
    {"name": "Tessa", "age": 31},
    {"name": "Uriah", "age": 39},
    {"name": "Valerie", "age": 25},
    {"name": "Winston", "age": 40},
    {"name": "Xena", "age": 26},
    {"name": "Yasmine", "age": 33},
    {"name": "Zane", "age": 28},
    {"name": "Aiden", "age": 22},
    {"name": "Bella", "age": 35},
    {"name": "Caleb", "age": 30},
    {"name": "Daisy", "age": 27}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: item.length,
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
            title: Text(item[index]['name'].toString()),
            subtitle: Text(item[index]['age'].toString()),
          ),
        );
      },
    );
  }
}
