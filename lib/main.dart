import 'package:flutter/material.dart';
import 'package:traviaa/pages/detailed_page.dart';
import 'package:traviaa/pages/navpages/main_page.dart';
import 'package:traviaa/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailedPage(),
    );
  }
}
