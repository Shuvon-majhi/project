import 'package:flutter/material.dart';

class regiPage extends StatefulWidget {
  const regiPage({super.key});

  @override
  State<regiPage> createState() => _regiPageState();
}

class _regiPageState extends State<regiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello regi"),
      ),
    );
  }
}