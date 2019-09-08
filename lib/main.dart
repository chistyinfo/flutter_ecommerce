import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecommerce/components/horizontal.dart';
import 'package:flutter_ecommerce/components/product.dart';
import 'package:flutter_ecommerce/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Slider of carousel libray
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/blazer1.jpeg'),
          AssetImage('images/blazer2.jpeg'),
          AssetImage('images/accessories.png'),
          AssetImage('images/dress.png')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 4.0,
        dotColor: Colors.black,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.purpleAccent,
        title: Text('ফুলেল'),
        
        //Tab icon
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Drawer header
            UserAccountsDrawerHeader(
              accountName: Text('chisty'),
              accountEmail: Text('chistyinfo@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text(' হোম পেইজ'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              //Drawer body
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //Image Slider
          image_carousel,
          Padding(padding: const EdgeInsets.all(2.0),
          child: Text('ক্যাটাগরি '),),
          //Horizontal class is called here
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(4.0),
          child: Text('আমাদের সেবা সমূহ '),),
          //Grid view
          Container(
            height: 300.0,
            //Product class is called here
            child: Products(),
          )
        ],
      ),
    );
  }
}
