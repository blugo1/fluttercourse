import 'package:flutter/material.dart';

class EventCreatePage extends StatefulWidget {
  final Function addEvent;

  EventCreatePage(this.addEvent);

  @override
  State<StatefulWidget> createState() {
    return _EventCreatePageState();
  }
}

class _EventCreatePageState extends State<EventCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Event Title', icon: Icon(Icons.title)),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Event Ticket Price', icon: Icon(Icons.payment)),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Event Description',
                  icon: Icon(Icons.description)),
              maxLines: 4,
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': titleValue,
                  'price': priceValue,
                  'description': descriptionValue,
                  'image': 'assets/event.jpg'
                };
                widget.addEvent(product);
              },
            )
          ],
        ));
  }
}
