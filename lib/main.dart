import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.redAccent),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Super Food List"),
        ),
        body: ProductManager(),
      ),
    );
  }
}
