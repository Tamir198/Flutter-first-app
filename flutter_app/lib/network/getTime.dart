import 'package:flutterapp/Utills/is_day.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class HandleTimeData {
  String locationName, time, countryFlag, url;
  bool isDayTime;

  //this is called named parameters
  HandleTimeData({this.locationName, this.countryFlag, this.url});

  //return void in the future - only when the async function is done
  void getTimeData() async {

    try {
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");

      Map timeMap = jsonDecode(response.body);
      String dateTime = timeMap['datetime'];
      //Saving the different offset according to the location
      String offset = timeMap['utc_offset'].substring(1, 3);


      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(hours: int.parse(offset)));

      isDayTime = IsDay().isDayTime(currentTime.hour);
      time = DateFormat.jm().format(currentTime);

    } catch(e) {
      time = "Something went wrong getting time";
    }
  }
}
