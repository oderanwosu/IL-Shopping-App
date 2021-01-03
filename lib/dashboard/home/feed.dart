import 'package:flutter/material.dart';
import 'package:iL/styles/constants.dart';
import 'package:iL/styles/size_helpers.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        padding: EdgeInsets.all(displayWidth(context) * 0.01),
        shrinkWrap: true,
        childAspectRatio:
            (displayHeight(context) * 0.53 / displayWidth(context) * 0.47),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        controller: new ScrollController(keepScrollOffset: false),
        crossAxisCount: 2,
        children: [
          Item(
            itemImageURL:
                'https://cdn.shopify.com/s/files/1/1297/1509/products/hero2_df171cb5-2835-4be1-b86d-f94a606d25e5_x1440.jpg?v=1571274630',
            userImage:
                'https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_US/i9liu-0WBE4Z1254R-Full-Image_GalleryBackground-en-US-1582784607841._SX1080_.png',
            userName: 'THEX BUNNY',
            itemName: 'Eat Healthy Long Sleeve T',
            itemPrice: '35.31',
            itemSize: 'S M L',
          ),
          Item(
            itemImageURL:
                'https://s2.r29static.com/bin/entry/1ee/x,80/2230870/image.jpg',
            userImage:
                'https://diginomica.com/sites/default/files/images/2019-07/nike-swoosh.jpg',
            userName: 'Nike Shoes',
            itemName: 'Nike Joyride Run Flyknit',
            itemPrice: '143.00',
            itemSize: 'S M L',
          ),
          Item(
            itemImageURL:
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRrS3zS4uW412LhZbXOI3-uD8t-7OkVMQ6Xo-YNX8yRFrvO-sbdnxe4j7LQurnbHtyka7kIYI4kHRbEgGxkdjT4uSeENB3tvJS7budU7NJUeEZUb-mm1ZAt&usqp=CAE',
            userImage:
                'https://www.intheblack.com/-/media/intheblack/allimages/magazine-2018/11-november/small-shopping-bags.jpg?rev=2ad3af44e054440598b93c6c3c442aa1',
            userName: 'Wintes',
            itemName: 'Green Polyester Turtleneck Berlin',
            itemPrice: '13.00',
            itemSize: 'XXL',
          ),
          Item(
            itemImageURL:
                'https://weartesters.com/wp-content/uploads/2018/01/AIR-JORDAN-3-TINKER-1.jpg',
            userImage: 'https://wallpaperaccess.com/full/113677.jpg',
            userName: "Jordan's Sports Appearal ",
            itemName: "Air Jordans 3",
            itemPrice: '233.00',
            itemSize: "13'",
          ),
          Item(
            itemImageURL:
                'https://i.etsystatic.com/25989702/d/il/d911a8/2755064830/il_340x270.2755064830_blbr.jpg?version=0',
            userImage: 'https://i.ytimg.com/vi/WRyz6IV8bV8/maxresdefault.jpg',
            userName: 'Mr. Beast Merch Store',
            itemName: 'Mr Beast Christmas Sweater',
            itemPrice: '45.99',
            itemSize: 'M L',
          ),
          Item(
            itemImageURL:
                'https://assets.adidas.com/images/w_600,f_auto,q_auto/09aafbd6440f4f9590eaaaf2010ba2e9_9366/Unity_Ref_Shirt_(Gender_Neutral)_Pink_FM1388_01_laydown.jpg',
            userImage:
                'https://centaur-wp.s3.eu-central-1.amazonaws.com/designweek/prod/content/uploads/2019/06/27172619/3_adidas_originals.jpg',
            userName: 'Adidas',
            itemName: 'Pink Double Hand Shirt',
            itemPrice: '13.00',
            itemSize: 'S M L',
          ),
        ],
      ),
    );
  }
}

class Item extends StatefulWidget {
  final String itemImageURL;
  final String userImage;
  final String userName;
  final String itemName;
  final String itemPrice;
  final String itemSize;

  Item(
      {this.itemImageURL,
      this.userImage,
      this.userName,
      this.itemName,
      this.itemPrice,
      this.itemSize});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      focusColor: kWhite,
      highlightColor: kWhite,
      hoverColor: kWhite,
      splashColor: kWhite,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.all(0),
      child: Container(
        child: Column(
          children: [
            Container(
                width: displayHeight(context) * 0.5,
                height: displayHeight(context) * 0.3,
                decoration: new BoxDecoration(
                    // border: Border.all(
                    //     width: displayWidth(context) * 0.09,
                    //     color: kDeactiveColor),

                    image: new DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new NetworkImage(widget.itemImageURL)))),
            SizedBox(height: displayHeight(context) * 0.001),
            FlatButton(
              focusColor: kWhite,
              highlightColor: kWhite,
              hoverColor: kWhite,
              splashColor: kWhite,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.all(0),
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
                      fontWeight: FontWeight.w800,
                      fontSize: displayHeight(context) * 0.01,
                    ))
              ]),
              onPressed: () {},
            ),
            Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    widget.itemName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: displayHeight(context) * 0.016),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("\$" + widget.itemPrice,
                      style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w500,
                          fontSize: displayHeight(context) * 0.018)),
                ),
                Container(
                    child: Text('Sizes:' + widget.itemSize,
                        style: GoogleFonts.quicksand()))
              ],
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
