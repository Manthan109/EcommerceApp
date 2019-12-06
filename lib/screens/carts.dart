
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25.0),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
        iconTheme: IconThemeData(color: Colors.black54),
      ),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total : "),
                subtitle: Text("\$120"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Check Out",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
