import 'package:flutter/material.dart';

//MaterialApp root widget to enable me blank screen + working with material design things
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('First app'),
      centerTitle: true,
      backgroundColor: Colors.blue,

    ),
    body: Center(
      //Center widget center everything that inside his
      child: Text(
        "Text in body",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.blue


        )

      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {  },
      child: Text("Click?"),
      backgroundColor: Colors.red[700],
    ),

  )
));

