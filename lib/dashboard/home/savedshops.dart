import 'package:flutter/material.dart';
import 'package:iL/styles/constants.dart';
import 'package:iL/styles/size_helpers.dart';
import 'package:google_fonts/google_fonts.dart';

class Shops extends StatefulWidget {
  Shops({Key key}) : super(key: key);

  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ShopButton(
                  shopName: 'Nike',
                  shopAvatar:
                      'https://data.whicdn.com/images/127461067/original.jpg',
                ),
                ShopButton(
                  shopName: 'Express',
                  shopAvatar:
                      'https://finditatthemall.com/system/rich/rich_files/rich_files/000/002/220/original/express1.png?1471638642',
                ),
                ShopButton(
                  shopName: 'Gucci',
                  shopAvatar:
                      'https://i.pinimg.com/originals/a5/c4/f3/a5c4f37d260c05806c3566501e302ef0.jpg',
                ),
                ShopButton(
                  shopName: "Macy's",
                  shopAvatar:
                      'https://i.pinimg.com/originals/9c/a6/b3/9ca6b375b97cf937d46f5e59408c9c80.jpg',
                ),
                ShopButton(
                  shopName: 'Buyish',
                  shopAvatar:
                      'https://images-platform.99static.com//g1UldbxOmPeuSCwiN8Lm_QScXts=/179x179:887x887/fit-in/590x590/99designs-contests-attachments/115/115223/attachment_115223354',
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  tooltip: 'ADD SHOP',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShopButton extends StatefulWidget {
  final String shopAvatar;
  final String shopName;
  ShopButton({this.shopAvatar, this.shopName});

  @override
  _ShopButtonState createState() => _ShopButtonState();
}

class _ShopButtonState extends State<ShopButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: null,
        child: Container(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              new Container(
                  width: displayHeight(context) * 0.071,
                  height: displayHeight(context) * 0.071,
                  decoration: new BoxDecoration(
                      // border: Border.all(
                      //     width: displayWidth(context) * 0.09,
                      //     color: kDeactiveColor),
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: new NetworkImage(widget.shopAvatar)))),
              new Text(widget.shopName,
                  style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: displayHeight(context) * 0.012))
            ])));
  }
}