import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "হলুদ স্টেজ ",
      "picture": "images/blazer1.jpeg",
      "price": "৫০০০",
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "ফুলের তোড়া",
      "picture": "images/blazer1.jpeg",
      "price": "৫০০০",
      "size": "M",
      "color": "Red",
      "quantity": 1
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_Cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_qty: Products_on_the_cart[index]["Qnt"],
        );
      },
    );
  }
}

class Single_Cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_qty;

  Single_Cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_price,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //==========Leading Section ==================      
        leading: Image.asset(cart_prod_picture,width: 100.0,height: 80.0,),

        //==========Title Section=========
        title: Text(cart_prod_name),

        //==========SubTitle Section=========
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cart_prod_size),
                ),
                //========This section of for the product color =============
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text('Color'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            //================ This Section is for the Product Price=================
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){}),
            Text(cart_prod_qty),
            IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){})
          ],
        ),
      ),
    );
  }
  
}
