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
    print('info $information');

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 80.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                information['locationName'],
                style: TextStyle(
                  fontSize: 30.00,
                  letterSpacing: 2.0
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Text(
            information['time'],
            style: TextStyle(
                fontSize: 60.00,
                letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 40.0),
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Location');
              },
              icon: Icon(Icons.location_on),
              label: Text("Change location")),

        ],
      ),
    ));
  }
}
