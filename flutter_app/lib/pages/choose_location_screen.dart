import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[850],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.blue[350],
      ),
      body: Text("second screen (choose location)"),
    );
  }
}
