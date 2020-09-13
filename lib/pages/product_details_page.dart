import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lampstore/custom_widgets/quantity_button.dart';
import 'package:lampstore/custom_widgets/specs_icon.dart';

class ProductDetailsPage extends StatefulWidget {
  final prod_details_name;
  final prod_details_new_price;
  final prod_details_image;
  final prod_details_reviews;
  final prod_details_isFavorite;
  final prod_details_text;

  ProductDetailsPage({
    this.prod_details_name,
    this.prod_details_new_price,
    this.prod_details_image,
    this.prod_details_reviews,
    this.prod_details_isFavorite,
    this.prod_details_text,
  });

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //........................................................................
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
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
                Icons.search,
                color: Color(0xff4D4672),
              ),
            ),
          ],
        ),
      ),
      //........................................................................
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.asset(widget.prod_details_image),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xff4D4672),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 25.0, bottom: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      widget.prod_details_name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star,
                                            size: 12, color: Color(0xFFF3BB7E)),
                                        SizedBox(width: 1),
                                        Icon(Icons.star,
                                            size: 12, color: Color(0xFFF3BB7E)),
                                        SizedBox(width: 1),
                                        Icon(Icons.star,
                                            size: 12, color: Color(0xFFF3BB7E)),
                                        SizedBox(width: 1),
                                        Icon(Icons.star,
                                            size: 12, color: Color(0xFFF3BB7E)),
                                        SizedBox(width: 1),
                                        Icon(Icons.star,
                                            size: 12, color: Colors.white70),
                                        SizedBox(width: 4),
                                        Text(
                                          widget.prod_details_reviews +
                                              ' Reviews',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          QuantityButton(
                            quantity: 5,
                            onPressedAdd: () {},
                            onPressedRemove: () {},
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SpecsIcon(icon: Icons.power, specs: '36 kwh'),
                          SizedBox(width: 10),
                          SpecsIcon(icon: Icons.wb_sunny, specs: '10 watt'),
                          SizedBox(width: 10),
                          SpecsIcon(
                              icon: Icons.import_export, specs: '9 sizes'),
                          SizedBox(width: 10),
                          SpecsIcon(
                              icon: Icons.wifi_tethering, specs: '16 colors'),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        widget.prod_details_text,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$' + widget.prod_details_new_price + '/-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FloatingActionButton.extended(
                            onPressed: () {},
                            elevation: 0,
                            backgroundColor: Color(0xFFF3BB7E),
                            label: Text(
                              'Purchase Now',
                              style: TextStyle(
                                color: Color(0xff4D4672),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
