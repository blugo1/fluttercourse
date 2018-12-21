import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  //Constructor
  Products([this.products = const[]]) {
    print("[Products Widget] Constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("[Products Widget] Build");

    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg', fit: BoxFit.fill),
                      Text(element),
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
