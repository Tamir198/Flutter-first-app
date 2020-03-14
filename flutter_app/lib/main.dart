import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/loading_screen.dart';
import 'pages/choose_location_screen.dart';

//MaterialApp root widget to enable me blank screen + working with material design things
void main() =>
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          //in flutter this is hwo you navigate screens
          '/': (context) => LoadingScreen(),
          '/Home': (context) => Home(),
          '/Location': (context) => ChooseLocation()
        }

    ));

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
