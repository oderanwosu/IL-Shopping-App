import 'package:flutter/material.dart';
import 'package:iL/styles/size_helpers.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [SizedBox(height: displayHeight(context) * 0.02,),Shops()]),
    );
  }
}

class Shops extends StatefulWidget {
  Shops({Key key}) : super(key: key);

  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [ShopIcon()],
    ));
  }
}

class ShopIcon extends StatefulWidget {
  ShopIcon({Key key}) : super(key: key);

  @override
  _ShopIconState createState() => _ShopIconState();
}

class _ShopIconState extends State<ShopIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
            width: displayHeight(context) * 0.08,
            height: displayHeight(context) * 0.08,
            decoration: new BoxDecoration(
                border: Border.all(width: displayWidth(context) * 0.01, color: Colors.grey ),
                
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        new NetworkImage("https://i.imgur.com/BoN9kdC.png")))),
        new Text("John Doe", textScaleFactor: 1.5)
      ],
    ));
  }
}
