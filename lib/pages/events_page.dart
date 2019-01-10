import 'package:flutter/material.dart';


import '../event_manager.dart';

class EventsPage extends StatelessWidget {

  final List<Map<String, dynamic>> products;

  EventsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Events'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Event List"),
      ),
      body: Center(
        child: EventManager(products),
      ),
    );
  }
}
