import 'package:ecommerce/Widgets/Horizontal_categories.dart';

import 'package:ecommerce/Widgets/featured_products.dart';
import 'package:ecommerce/Widgets/product_card.dart';
import 'package:ecommerce/Widgets/search.dart';
import 'package:ecommerce/screens/carts.dart';
import 'package:ecommerce/screens/product_details.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VirTuex",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25.0),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
        iconTheme: IconThemeData(color: Colors.black54),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Manthan Gupta"),
              accountEmail: Text("manthangupta109@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent.shade100),
            ),
            InkWell(
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
            InkWell(
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.greenAccent.shade700,
                ),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              onTap: () {},
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blueGrey,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "What Are You Shopping for ?",
                  style: TextStyle(fontSize: 30.0, color: Colors.black26),
                ),
              ),
            ),
            Search(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Featured Products'),
                  ),
                )
              ],
            ),
            FeaturedProducts(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Categories'),
                  ),
                )
              ],
            ),
            Categories(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Recent Products'),
                  ),
                )
              ],
            ),
            InkWell(
              child: ProductCard(
                brand: 'SantosBrand',
                name: 'Lux Blazer',
                price: 24.00,
                onSale: true,
                picture: '',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
            InkWell(
              child: ProductCard(
                brand: 'SantosBrand',
                name: 'Lux Blazer',
                price: 24.00,
                onSale: true,
                picture: '',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
            InkWell(
              child: ProductCard(
                brand: 'SantosBrand',
                name: 'Lux Blazer',
                price: 24.00,
                onSale: true,
                picture: '',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
            InkWell(
              child: ProductCard(
                brand: 'SantosBrand',
                name: 'Lux Blazer',
                price: 24.00,
                onSale: true,
                picture: '',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
            InkWell(
              child: ProductCard(
                brand: 'SantosBrand',
                name: 'Lux Blazer',
                price: 24.00,
                onSale: true,
                picture: '',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductDetails()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
