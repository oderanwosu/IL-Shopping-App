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
import 'package:palette_generator/palette_generator.dart';

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
        TrendingStoresSlide(),
        Container(alignment: Alignment.topLeft, child: Text('hi')),
      ]),
    );
  }
}

class TrendingStoresSlide extends StatefulWidget {
  TrendingStoresSlide({Key key}) : super(key: key);

  @override
  _TrendingStoresSlideState createState() => _TrendingStoresSlideState();
}

class _TrendingStoresSlideState extends State<TrendingStoresSlide> {
  int _currentIndex = 0;
  List cardList = [TrendingStore()];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        height: displayHeight(context) * .23,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayAnimationDuration: Duration(milliseconds: 500),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: false,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: cardList.map((card) {
        return Builder(builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.blueAccent,
              child: card,
            ),
          );
        });
      }).toList(),
    );
  }
}

class TrendingStore extends StatefulWidget {
  TrendingStore({Key key}) : super(key: key);

  @override
  _TrendingStoreState createState() => _TrendingStoreState();
}

class _TrendingStoreState extends State<TrendingStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.43,
      decoration: BoxDecoration(
        color: Colors.black,
        image: new DecorationImage(
          image: new NetworkImage(
              'https://i.kym-cdn.com/entries/icons/original/000/025/810/lol.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          )),
    );
  }
}
