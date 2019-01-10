import 'package:flutter/material.dart';

import './pages/event_page.dart';

class Events extends StatelessWidget {
  final List<Map<String, dynamic>> events;

  //Constructor
  Events(this.events);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(events[index]['image']),
          Text(events[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                            context, '/product/' + index.toString())
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard =
        Center(child: Text("No events found, please add some"));

    if (events.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: events.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
