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
    //this gives me the data from last page (the loading page) and if is not empty
    //it gt data from choose location screen so I wont rebuild it
    information = information.isNotEmpty? information : ModalRoute.of(context).settings.arguments;
    print('info $information');
    bool isDay = information['isDayTime'];
    String backgroundImage = isDay ? 'day.jfif' : 'night.jfif';
    Color backgroundColor = isDay ? Colors.cyan : Colors.black;
    Color textColor = Colors.cyan[600];

    return Scaffold(
      backgroundColor: backgroundColor,
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$backgroundImage'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: <Widget>[
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  information['locationName'],
                  style: TextStyle(fontSize: 30.00, letterSpacing: 2.0, color : textColor),
                )
              ],
            ),
            SizedBox(height: 40.0),
            Text(
              information['time'],
              style: TextStyle(fontSize: 60.00, letterSpacing: 2.0, color : textColor),
            ),
            SizedBox(height: 40.0),
            FlatButton.icon(
              onPressed:  () async {
                //this is async with await because the widget tree is not rebuilding when
                //returning from the choose location screen (the screen was already on the stack)
                //so I save the result in variable
                dynamic result = await Navigator.pushNamed(context, '/Location');
                setState(() {
                  //Overriding data on the information with a new map (the map data cam from choose location screen)
                  information = {
                    'time': result['time'],
                    'locationName': result['locationName'],
                    'countryFlag': result['countryFlag'],
                    'isDayTime': result['isDayTime']
                  };
                });
              },
              icon: Icon(Icons.location_on),
              label: Text("Change location"),
              textColor: textColor,
            ),
          ],
        ),
      ),
    ));
  }
}
