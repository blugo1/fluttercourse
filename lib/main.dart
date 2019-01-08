import 'package:flutter/material.dart';

//import './pages/auth_page.dart';
import './pages/event_admin.dart';
import './pages/events_page.dart';
import './pages/event_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _events = [];

  void _addEvent(Map<String, String> product) {
    setState(() {
      _events.add(product);
    });
  }

  void _deleteEvent(int index) {
    setState(() {
      _events.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.redAccent),
      //home: AuthPage(),
      routes: {
        '/': (BuildContext context) =>
            EventsPage(_events, _addEvent, _deleteEvent),
        '/admin': (BuildContext context) => EventsPageAdmin(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                EventPage(_events[index]['title'], _events[index]['image']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        //Fallback
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                EventsPage(_events, _addEvent, _deleteEvent));
      },
    );
  }
}
