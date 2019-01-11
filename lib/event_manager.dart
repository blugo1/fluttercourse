import 'package:flutter/material.dart';

import './events.dart';
class EventManager extends StatelessWidget {

  final List<Map<String, dynamic>> events;

  EventManager(this.events);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child:Events(events))
      ],
    );
  }
}
