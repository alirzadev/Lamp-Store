import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lampstore/custom_widgets/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //..........................................................................
    Widget imaage_carousel = Container(
      color: Colors.white,
      height: 220,
      child: Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/lamps1.jpg'),
          AssetImage('images/lamps3.jpg'),
          AssetImage('images/lamps4.jpg'),
          AssetImage('images/lamps5.jpg'),
          AssetImage('images/lamps2.jpg'),
        ],
        dotBgColor: Colors.transparent,
        dotSpacing: 12,
        dotSize: 6,
        dotColor: Colors.black26,
        dotIncreaseSize: 1.5,
        dotIncreasedColor: Color(0xff4D4672),
        autoplay: false,
        indicatorBgPadding: 10,
      ),
    );
    //..........................................................................
    return Scaffold(
      //........................................................................
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Container(
            margin: const EdgeInsets.only(top: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'LAMP',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                ),
                Text(
                  'Deft Accesories',
                  style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 0.5,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          leading: Container(
            margin: const EdgeInsets.only(left: 10, top: 10.0),
            decoration: BoxDecoration(
              color: Color(0x2449455C),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(
              Icons.widgets,
              color: Color(0xff4D4672),
            ),
          ),
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              margin: const EdgeInsets.only(right: 10, top: 10.0),
              decoration: BoxDecoration(
                color: Color(0x2449455C),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                Icons.favorite_border,
                color: Color(0xff4D4672),
              ),
            ),
          ],
        ),
      ),
      //........................................................................
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            imaage_carousel,
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 5.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'TABLE LAMP',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$90',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, size: 12, color: Color(0xff4D4672)),
                      SizedBox(width: 1),
                      Icon(Icons.star, size: 12, color: Color(0xff4D4672)),
                      SizedBox(width: 1),
                      Icon(Icons.star, size: 12, color: Color(0xff4D4672)),
                      SizedBox(width: 1),
                      Icon(Icons.star, size: 12, color: Color(0xff4D4672)),
                      SizedBox(width: 1),
                      Icon(Icons.star, size: 12, color: Colors.black26),
                      SizedBox(width: 4),
                      Text(
                        '249 Reviews',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  color: Color(0xff4D4672),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 20.0, top: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Recents',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View all',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Products()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
