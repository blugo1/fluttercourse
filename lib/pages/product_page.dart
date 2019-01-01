import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Product Title"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Lorem ipsum dolor sit amet, eam perpetua scriptorem te, eu duo tempor nostrud. Duis illud definitiones ut vix, nam dicat facete consulatu id. Id prima reque senserit vix, persequeris instructior an quo. Te mel oporteat pertinax salutatus. Praesent consulatu an sit, cu elitr ceteros oporteat qui, pro ne eius soluta."),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text("Back"),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ));
  }
}
