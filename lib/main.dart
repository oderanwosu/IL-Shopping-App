import 'package:flutter/material.dart';
import 'package:iL/dashboard/dashboard.dart';
import 'package:iL/styles/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    primaryColor: kPrimaryColor,
    accentColor: Colors.orange,
    hintColor: kPrimaryColor,
  ),
      home: Dashboard(),
    );
  }
}
