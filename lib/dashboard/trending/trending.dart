import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:iL/dashboard/home/home.dart';
import 'package:iL/dashboard/trending/trendingitems.dart';
import '../../styles/constants.dart';
import '../../styles/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

class Trending extends StatefulWidget {
  Trending({Key key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TrendingItemsSlide(),

        Container(alignment: Alignment.topLeft, child: Text('hi'))
      ]),
    );
  }
}

