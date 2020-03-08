import 'package:http/http.dart';
import 'dart:convert';

class HandleTimeData {
  String locationName;
  String time;
  String countryFlag;
  String url;

  //this is called named parameters
  HandleTimeData({this.locationName, this.countryFlag, this.url});



  //return void in the future - only when the async function is done
  Future<void> getTimeData() async {

    try {
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");

      Map timeMap = jsonDecode(response.body);
      String dateTime = timeMap['datetime'];
      //time different for different locations
      String offset = timeMap['utc_offset'].substring(1, 3);

      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(hours: int.parse(offset)));

      time = currentTime.toString();

    } catch(e) {
      time = "Something went wrong getting time";
    }

  }
}
