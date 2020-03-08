import 'package:flutter/material.dart';
import 'package:flutterapp/network/getTime.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  String time;

  void setTime() async {
    HandleTimeData handleTimeData = HandleTimeData(
        locationName: 'israel',
        countryFlag: 'image',
        url: "Asia/Jerusalem");
    await handleTimeData.getTimeData();


    //after i got time from api set the string
    setState(() {
      time = handleTimeData.time;
      print("hey hey hey    $time" );
    });
  }


  @override
  void initState() {
    super.initState();
    setTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("$time"),

    );
  }
}
