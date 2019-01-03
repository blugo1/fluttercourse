import 'package:flutter/material.dart';

import './events.dart';
import './event_control.dart';

class EventManager extends StatefulWidget {
  final Map<String, String> startingEvent;

  EventManager({this.startingEvent});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<EventManager> {
  final List<Map<String, String>> _events = [];

  @override
  void initState() {
    if(widget.startingEvent != null){
      _events.add(widget.startingEvent);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(EventManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _events.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
      _events.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: EventControl(_addProduct),
        ),
        Expanded(child:Events(_events, deleteProduct: _deleteProduct))
      ],
    );
  }
}
