import 'package:flutter/material.dart';

import './event_admin.dart';
import '../event_manager.dart';

class EventsPage extends StatelessWidget {
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EventsPageAdmin()));
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
        child: EventManager(),
      ),
    );
  }
}
