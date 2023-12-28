import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello login"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/regi');
        },
        child: Text("press to go regi page"),
      ),
    );
  }
}