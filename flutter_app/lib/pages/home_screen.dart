import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //a map to store the data revived from last page
  Map information = {};
  @override
  Widget build(BuildContext context) {
    //this gives me the data from last page (the loading page)
    information = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Location');
              },
              icon: Icon(Icons.location_on),
              label: Text("Change location"))
        ],
      ),
    ));
  }
}
