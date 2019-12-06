import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          right: 20,
          child: Align(alignment: Alignment.topRight, child: InkWell(child: Icon(Icons.menu),onTap: (){},)),
        ),
        Positioned(
          top: 10,
          right: 60,
          child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Icon(Icons.shopping_cart),
                onTap: () {},
              )),
        ),
        Positioned(
          top: 10,
          right: 100,
          child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Icon(Icons.person),
                onTap: () {},
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'What Are\nYou Shopping For?',
            style: TextStyle(
                fontSize: 30,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
