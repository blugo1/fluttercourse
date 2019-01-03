import 'package:flutter/material.dart';

import '../event_manager.dart';

class EventsPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Event List"),
        ),
        body: EventManager(),
      );
    }
}