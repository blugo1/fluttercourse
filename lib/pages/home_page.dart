import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Super Food List"),
        ),
        body: ProductManager(),
      );
    }
}