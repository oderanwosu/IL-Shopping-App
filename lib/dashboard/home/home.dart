import 'package:flutter/material.dart';
import 'package:iL/dashboard/home/savedshops.dart';
import 'package:iL/styles/constants.dart';
import 'package:iL/styles/size_helpers.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: displayHeight(context) * 0.02,
        ),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(displayWidth(context) * 0.04, 0, 0, 0),
            child: Text(
              'SAVED SHOPS',
              style: GoogleFonts.oswald(fontSize: displayWidth(context) * 0.03),
            )),
        Shops()
      ]),
    );
  }
}

