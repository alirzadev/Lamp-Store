import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lampstore/models/product_model.dart';
import 'package:lampstore/pages/product_details_page.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<ProductModel> list = ProductModel.prod_list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(right: 10, bottom: 15),
          child: ProductCard(
            prodName: list[index].name,
            prodOldPrice: list[index].oldPrice,
            prodCurrentPrice: list[index].currentPrice,
            prodImage: list[index].image,
            prodIsFavorite: list[index].isFavorite,
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(
                      prod_details_name: list[index].name,
                      prod_details_new_price: list[index].currentPrice,
                      prod_details_image: list[index].image,
                      prod_details_reviews: list[index].numOfReviews,
                      prod_details_isFavorite: list[index].isFavorite,
                      prod_details_text: list[index].details,
                    ),
                  ),
                );
              });
            },
          ),
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final prodName;
  final prodOldPrice;
  final prodCurrentPrice;
  final prodImage;
  final prodReviews;
  final bool prodIsFavorite;
  final VoidCallback onPressed;

  ProductCard({
    this.prodName,
    this.prodOldPrice,
    this.prodCurrentPrice,
    this.prodImage,
    this.prodReviews,
    this.prodIsFavorite,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: GridTile(
          header: Container(
            padding: const EdgeInsets.only(top: 5),
            height: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
              child: Image.asset(
                prodImage,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                title: Text(
                  prodName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Text(
                      '\$' + prodCurrentPrice,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    prodOldPrice != null
                        ? Text(
                            '\$' + prodOldPrice,
                            style: TextStyle(
                              color: Color(0xFFFA6B1B),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        : SizedBox(width: 5),
                    Expanded(child: SizedBox(width: 5)),
                    ClipOval(
                      child: Container(
                        width: 25,
                        height: 25,
                        color: Color(0x24FA6B1B),
                        child: Icon(
                          prodIsFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 16,
                          color: Color(0xFFFA6B1B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
