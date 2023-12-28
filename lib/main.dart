import 'package:flutter/material.dart';
import 'package:project/homePage.dart';
import 'package:project/loginPage.dart';
import 'package:project/page1.dart';
import 'package:project/regiPage.dart';
import 'package:project/tabView.dart';
import 'package:project/tabWithList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tabWithList(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => homePage(),
      //   '/login': (context) => loginPage(),
      //   '/regi': (context) => regiPage(),
      // },
    );
  }
}
