import 'package:flutter/material.dart';

import 'featured_card.dart';

class FeaturedProducts extends StatefulWidget {
  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    const double h=230;
    return Container(
        height: h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (_, index) {
              return FeaturedCard(
                name: 'Winter Blazer',
                price: 50.99,
                picture: '',
              );
            }));
  }
}