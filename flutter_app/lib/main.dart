import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/loading_screen.dart';
import 'pages/choose_location_screen.dart';

//MaterialApp root widget to enable me blank screen + working with material design things
void main() => runApp(MaterialApp(
    home: Home(),
));

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
