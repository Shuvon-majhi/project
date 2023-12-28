import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello home"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: Text("press to go login page"),
      ),
    );
  }
}
