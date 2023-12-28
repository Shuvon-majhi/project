import 'package:flutter/material.dart';
import 'package:project/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key, this.age, this.name});
  final age;
  final name;

  

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello page2 " + '${widget.age[4]+10}'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page3(),
            ),
          );
        },
        child: Text("press to go page3"),
      ),
    );
  }
}
