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
  String _titleValue = '';
  String _descriptionValue = '';
  double _priceValue = 0.0;
  bool _acceptTerms = false;

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
                  _titleValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Event Ticket Price', icon: Icon(Icons.payment)),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  _priceValue = double.parse(value);
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
                  _descriptionValue = value;
                });
              },
            ),
            SwitchListTile(
              value: _acceptTerms,
              onChanged: (bool value) {
                setState(() {
                  _acceptTerms = value;
                });
              },
              title: Text('Accept Terms'),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              child: Text('Submit'),
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': _titleValue,
                  'price': _priceValue,
                  'description': _descriptionValue,
                  'image': 'assets/event.jpg'
                };
                widget.addEvent(product);
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ));
  }
}
