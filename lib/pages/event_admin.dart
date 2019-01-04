import 'package:flutter/material.dart';

import './events_page.dart';
import './event_create.dart';
import './event_list.dart';

class EventsPageAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> EventsPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Manage Events'),
        bottom: TabBar(tabs: <Widget>[
          Tab(
          icon: Icon(Icons.create),
          text: 'Create Event',),
          Tab(
          icon: Icon(Icons.list),
          text: 'My Events')
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
          EventCreatePage(),
          EventListPage()
        ],
      )
    ));
  }
}
