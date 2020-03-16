import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/home_screen.dart';
import 'pages/loading_screen.dart';
import 'pages/choose_location_screen.dart';

//MaterialApp root widget to enable me blank screen + working with material design things

void main() {
  //For debug
  //debugPaintSizeEnabled = true;
  runApp(MyMain());
}

class MyMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          //in flutter this is hwo you navigate screens
          '/': (context) => LoadingScreen(),
          '/Home': (context) => Home(),
          '/Location': (context) => ChooseLocation()
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor:  Colors.blue,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.black12,
            ),
            bodyText2: TextStyle(
              color: Colors.blueGrey,
            ),
            //todo check how to save strings in here as colors
          ),
        ),
    );
  }
}

