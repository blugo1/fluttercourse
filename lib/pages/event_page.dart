import 'package:flutter/material.dart';
import 'dart:async';

class EventPage extends StatelessWidget {
  final String title;
  final String imageURL;

  EventPage(this.title, this.imageURL);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action cannot be undone."),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("Continue"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print("Back button pressed");
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              title: Text(title),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageURL),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      "Lorem ipsum dolor sit amet, eam perpetua scriptorem te, eu duo tempor nostrud. Duis illud definitiones ut vix, nam dicat facete consulatu id. Id prima reque senserit vix, persequeris instructior an quo. Te mel oporteat pertinax salutatus. Praesent consulatu an sit, cu elitr ceteros oporteat qui, pro ne eius soluta."),
                ),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text("Back"),
                      onPressed: () => _showWarningDialog(context),
                    ))
              ],
            )));
  }
}
