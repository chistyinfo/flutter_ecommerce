import 'package:flutter_ecommerce/pages/product_details.dart';
import 'package:flutter/material.dart';





class Products extends StatefulWidget {
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "হলুদ স্টেজ ",
      "code":"F-25",
      "picture": "images/blazer1.jpeg",
      "old_price": 120,
      "price": "৫০০০",
    },
    {
      "name": " বিয়ের স্টেজ",
      "code":"F-26",
      "picture": "images/blazer2.jpeg",
      "old_price": 110,
       "price": "৫০০০",
    },
    {
      "name": "ফুলের তোড়া",
      "code":"F-25",
      "picture": "images/pants2.jpeg",
      "old_price": 100,
       "price": "৫০০",
    },
    {
      "name": "অফিস সজ্জা",
      "picture": "images/pants1.jpg",
      "old_price": 100,
       "price": "৫০০০",
    },
      {
      "name": "Panjabi",
      "picture": "images/pants1.jpg",
      "old_price": 100,
       "price": "৫০০০",
    },
      {
      "name": "Panjabi",
      "picture": "images/pants1.jpg",
      "old_price": 100,
       "price": "৫০০০",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext contex, int index) {
        //Constractor is called here
        return Single_Prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          // prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  // final prod_old_price;
  final prod_price;

//Constractor
  Single_Prod(
      {this.prod_name,
      this.prod_picture,
      // this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("Fhulel-1"),
        child: Material(
          child: InkWell(
            onTap:(){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                  product_details_name: prod_name,
                  product_details_newprice:prod_price,
                  // product_details_oldprice: prod_old_price,
                  product_picture: prod_picture,
                )));
            },
          
            child: GridTile(
              footer: Container(
                height: 50.00,
                color: Colors.white60,
                child: ListTile(                 
                  leading: Text(prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  title: Text(
                    prod_price,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                  // subtitle: Text("টাকা",
                  //     style: TextStyle(
                  //         color: Colors.blueAccent,
                  //         fontWeight: FontWeight.w800,
                  //         decoration: TextDecoration.lineThrough)),
                ),
                
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
