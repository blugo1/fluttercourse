import 'package:flutter/material.dart';

import './event_create.dart';
import './event_list.dart';

class EventsPageAdmin extends StatelessWidget {

  final Function addEvent;
  final Function deleteEvent;

  EventsPageAdmin(this.addEvent, this.deleteEvent);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  AppBar(
                    automaticallyImplyLeading: false,
                    title: Text('Choose'),
                  ),
                  ListTile(
                    title: Text('All Events'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  )
                ],
              ),
            ),
            appBar: AppBar(
              elevation: 0.0,
              title: Text('Manage Events'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.create),
                    text: 'Create Event',
                  ),
                  Tab(icon: Icon(Icons.list), text: 'My Events')
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[EventCreatePage(addEvent), EventListPage()],
            )));
  }
}
