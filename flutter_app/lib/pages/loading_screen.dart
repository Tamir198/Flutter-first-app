
import 'package:flutter/material.dart';
import 'package:flutterapp/network/getTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  

  void setTime() async {
    HandleTimeData handleTimeData = HandleTimeData(
        locationName: 'israel',
        countryFlag: 'image',
        url: "Asia/Jerusalem"
    );
    await handleTimeData.getTimeData();

    //Pass data to the home age with time date, replace the route and not push another route to the stack
    //the argument part is how you send information between routs
    Navigator.pushNamed(context, '/Home',arguments: {
      "locationName": handleTimeData.locationName,
      "countryFlag": handleTimeData.countryFlag,
      "time": handleTimeData.time,
      "isDayTime" : handleTimeData.isDayTime
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
      backgroundColor: Colors.black26,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 200.0,
        ),

      ),

    );
  }
}
