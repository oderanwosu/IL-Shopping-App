import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:iL/dashboard/home/home.dart';
import '../../styles/constants.dart';
import '../../styles/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

class TrendingItemsSlide extends StatefulWidget {
  TrendingItemsSlide({Key key}) : super(key: key);

  @override
  _TrendingItemsSlideState createState() => _TrendingItemsSlideState();
}

class _TrendingItemsSlideState extends State<TrendingItemsSlide> {
  int _currentIndex = 0;
  List cardList = [
    TrendingItem(
      itemImageURL:
          'https://cdn.shopify.com/s/files/1/1297/1509/products/hero2_df171cb5-2835-4be1-b86d-f94a606d25e5_x1440.jpg?v=1571274630',
      userImage:
          'https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_US/i9liu-0WBE4Z1254R-Full-Image_GalleryBackground-en-US-1582784607841._SX1080_.png',
      userName: 'THEX BUNNY',
      itemName: 'Eat Healthy Sleeve T',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
    TrendingItem(
      itemImageURL:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-1156824162.jpg?crop=1.00xw:0.668xh;0,0.300xh&resize=640:*',
      userImage:
          'https://images-platform.99static.com//nCZ633KseJwq75ii7f3u28LQals=/655x5:1295x645/fit-in/500x500/99designs-contests-attachments/94/94173/attachment_94173269',
      userName: 'Slurban Over',
      itemName: 'Green Urban Women Pants',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Yipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
    TrendingItem(
      itemImageURL:
          'https://www.shopjordans2020.com/wp-content/uploads/2019/09/2019-air-jordan-1-mid-quai-54-black-white-multi-color-3.jpeg',
      userImage:
          'https://i.kym-cdn.com/entries/icons/original/000/025/810/lol.jpg',
      userName: 'Slurban Over',
      itemName: '2019 Release Air Jordan 1 Mid “Multi-Color” Mens',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Yipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Yipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: displayHeight(context) * 0.43,
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

class TrendingItem extends StatefulWidget {
  final String itemImageURL;
  final String userImage;
  final String userName;
  final String itemName;
  final String description;
  TrendingItem(
      {this.itemImageURL,
      this.userImage,
      this.userName,
      this.itemName,
      this.description});

  @override
  _TrendingItemState createState() => _TrendingItemState();
}

class _TrendingItemState extends State<TrendingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      height: displayHeight(context) * 0.4,
      decoration: BoxDecoration(
        color: Colors.black,
        image: new DecorationImage(
          image: new NetworkImage(widget.itemImageURL),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment
                  .bottomCenter, // 10% of the width, so there are ten blinds.
              colors: [
                const Color.fromRGBO(0, 0, 0, .8),
                const Color.fromRGBO(0, 0, 0, .0)
              ],
            )),
            child: Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                FlatButton(
                  focusColor: kWhite,
                  highlightColor: kWhite,
                  hoverColor: kWhite,
                  splashColor: kWhite,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding:
                      EdgeInsets.fromLTRB(displayWidth(context) * .02, 0, 0, 0),
                  child: Row(children: [
                    Container(
                        width: displayHeight(context) * 0.02,
                        height: displayHeight(context) * 0.02,
                        decoration: new BoxDecoration(
                            // border: Border.all(
                            //     width: displayWidth(context) * 0.09,
                            //     color: kDeactiveColor),
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: new NetworkImage(widget.userImage)))),
                    SizedBox(width: displayWidth(context) * 0.02),
                    Text(widget.userName,
                        style: GoogleFonts.quicksand(
                          color: kWhite,
                          fontWeight: FontWeight.w800,
                          fontSize: displayHeight(context) * 0.01,
                        ))
                  ]),
                  onPressed: () {},
                ),
                Container(
                    width: displayWidth(context) * .6,
                    padding: EdgeInsets.fromLTRB(
                        displayWidth(context) * .02, 0, 0, 0),
                    child: Container(
                      child: Text(
                        widget.itemName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                            color: kWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: displayHeight(context) * 0.016),
                      ),
                    )),
                Row(
                  children: [
                    IconButton(
                      color: kWhite,
                      icon: Icon(Icons.add_shopping_cart),
                      onPressed: () {},
                    ),
                    LikeButton(
                      size: displayWidth(context) * 0.07,
                      circleColor:
                          CircleColor(start: kSecondaryColor, end: kPurple),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          isLiked
                              ? CupertinoIcons.heart_solid
                              : CupertinoIcons.heart,
                          color: isLiked ? kWhite : kWhite,
                          size: displayWidth(context) * 0.07,
                        );
                      },
                      likeCount: 665,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color = isLiked ? kWhite : kWhite;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "like",
                            style: TextStyle(color: color),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                        return result;
                      },
                    ),
                  ],
                )
              ]),
            ]),
          ),
          new Expanded(
              child: new Align(
                  alignment: Alignment.bottomLeft,
                  widthFactor: displayWidth(context) * 2,
                  child: Container(
                      width: displayWidth(context),
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment
                            .bottomCenter, // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color.fromRGBO(220, 220, 220, .0),
                          const Color.fromRGBO(0, 0, 0, .5),
                        ],
                      )),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            displayWidth(context) * .02,
                            displayWidth(context) * .02,
                            displayWidth(context) * .02,
                            displayWidth(context) * .03),
                        child: Text(
                          widget.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.quicksand(
                              color: kWhite,
                              fontWeight: FontWeight.w400,
                              fontSize: displayHeight(context) * 0.012),
                        ),
                      ))))
        ],
      ),
    );
  }
}
