import 'package:flutter/material.dart';

import './events.dart';
import './event_control.dart';

class EventManager extends StatelessWidget {

  final List<Map<String, String>> events;
  final Function addEvent;
  final Function deleteEvent;

  EventManager(this.events, this.addEvent, this.deleteEvent);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: EventControl(addEvent),
        ),
        Expanded(child:Events(events, deleteProduct: deleteEvent))
      ],
    );
  }
}
