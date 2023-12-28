import 'package:flutter/material.dart';
import 'package:project/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final age = [1,2,3,4,5,6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello page1"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page2(age:age),
            ),
          );
        },
        child: Text("press to go page2"),
      ),
    );
  }
}
