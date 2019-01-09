import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_newprice;
  final product_details_oldprice;
  final product_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_newprice,
    this.product_details_oldprice,
    this.product_picture
    });
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        //Tab icon
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
    
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_picture),
              ),
            ),
          )
        ],
      ),
    );
  }
}
