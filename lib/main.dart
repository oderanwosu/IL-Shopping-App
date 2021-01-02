import 'package:flutter/material.dart';
import 'package:iL/dashboard/dashboard.dart';
import 'package:iL/styles/constants.dart';

void main() {
  runApp(MyApp());
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: Colors.orange,
        hintColor: kPrimaryColor,
      ),
      home: Dashboard(),
    );
  }
}
