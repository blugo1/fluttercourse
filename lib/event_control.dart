import 'package:flutter/material.dart';

class EventControl extends StatelessWidget {  

  final Function addEvent;

  EventControl(this.addEvent);

  @override
    Widget build(BuildContext context) {
    return  RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addEvent({"title": "Event Title", "image": "assets/event.jpg"});
            },
            child: Text("Add Event", style: TextStyle(color: Colors.white)),
          );
    }
}