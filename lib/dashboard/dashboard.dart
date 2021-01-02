import 'dart:ui';

import 'package:iL/dashboard/home/home.dart';

import '../styles/constants.dart';
import '../styles/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.store,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
            elevation: 0.0,
            backgroundColor: kTopBarBlack,
            title: Text(
              'SHOP',
              style: GoogleFonts.oswald(),
            )),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                color: kPrimaryColor,
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.fromLTRB(
                                displayWidth(context) * 0.05,
                                displayWidth(context) * 0.03,
                                displayWidth(context) * 0.05,
                                displayWidth(context) * 0.03),
                            height: displayHeight(context) * 0.08,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                fontSize: displayWidth(context) * 0.05,
                              ),
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hasFloatingPlaceholder: false,
                                labelText: 'SEARCH TOPS, CLOTHES, SHOPS',
                                labelStyle: GoogleFonts.roboto(
                                  fontSize: displayWidth(context) * 0.03,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                    Container(
                      child: new TabBar(
                        controller: _controller,
                        unselectedLabelColor: kSecondary,
                        indicatorColor: kSecondary,
                        labelColor: kSecondary,
                        labelStyle: GoogleFonts.oswald(
                          fontSize: displayWidth(context) * 0.03,
                        ),
                        tabs: [
                          new Tab(
                            iconMargin:
                                EdgeInsets.all(displayWidth(context) * 0.0),
                            text: 'HOME',
                            icon: Icon(Icons.home),
                          ),
                          new Tab(
                            iconMargin:
                                EdgeInsets.all(displayWidth(context) * 0.0),
                            icon: Icon(Icons.trending_up),
                            text: 'TRENDING',
                          ),
                          new Tab(
                            iconMargin:
                                EdgeInsets.all(displayWidth(context) * 0.0),
                            icon: Icon(Icons.shopping_cart),
                            text: 'MY CART',
                          ),
                          new Tab(
                            iconMargin:
                                EdgeInsets.all(displayWidth(context) * 0.0),
                            icon: Icon(Icons.note),
                            text: 'TRANSACTIONS',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: displayHeight(context) * 5,
                child: new TabBarView(
                  controller: _controller,
                  children: [Home(), Home(), Home(), Home()],
                ),
              ),
            ]),
          ),
        ));
  }
}
