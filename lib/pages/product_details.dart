import 'package:flutter/material.dart';

import '../main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_newprice;
  // final product_details_oldprice;
  final product_picture;

  //constractor
  ProductDetails(
      {this.product_details_name,
      this.product_details_newprice,
      // this.product_details_oldprice,
      this.product_picture});

  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.purpleAccent,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
          child: Text('ফুলেল'),
        ),
        
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
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      // Expanded(
                      //   child: Text(
                      //     "\$${widget.product_details_newprice}",
                      //     style: TextStyle(
                      //         color: Colors.grey,
                      //         decoration: TextDecoration.lineThrough),
                      //   ),
                      // ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_details_newprice}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          //===================== 1st Button Row =======================
          Row(
            children: <Widget>[
              //====== Size Button ===========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){return AlertDialog(
                      title: Text("Size"),
                      content: Text("Choose the size"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),)
                      ],
                    );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      //========== Size button ===============
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                       showDialog(context: context,
                    builder: (context){return AlertDialog(
                      title: Text("Colors"),
                      content: Text("Choose the color"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),)
                      ],
                    );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      //========== Colors button ===============
                      Expanded(
                        child: Text("Colors"),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                       showDialog(context: context,
                    builder: (context){return AlertDialog(
                      title: Text("Qty"),
                      content: Text("Choose the Qty"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),)
                      ],
                    );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      //========== Qty button ===============
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],
          ),
          //===================== Buy Button Row =======================
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 2.0,
                  child: Text("কল করুন "),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("বিস্তারিত"),
            subtitle: Text("White single-breasted blazer, has a notched lapel, a full button placket, long sleeves, three welt pockets, a double-vented back hem\n"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Name",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_details_name),)
              
            ],
          ),
              Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Brand",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Cats Eye"),)
              
            ],
          ),
              Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Condition",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Good Conditions"),)
              
            ],
          )

        ],
      ),
    );
  }
}
