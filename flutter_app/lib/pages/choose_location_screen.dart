import 'package:flutter/material.dart';
import 'package:flutterapp/network/getTime.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<HandleTimeData> locations = [HandleTimeData(url: 'Europe/London', locationName: 'London', countryFlag: 'uk.png'),
    HandleTimeData(url: 'Europe/Berlin', locationName: 'Athens', countryFlag: 'greece.png'),
    HandleTimeData(url: 'Africa/Cairo', locationName: 'Cairo', countryFlag: 'egypt.png'),
    HandleTimeData(url: 'Africa/Nairobi', locationName: 'Nairobi', countryFlag: 'kenya.png'),
    HandleTimeData(url: 'America/Chicago', locationName: 'Chicago', countryFlag: 'usa.png'),
    HandleTimeData(url: 'America/New_York', locationName: 'New York', countryFlag: 'usa.png'),
    HandleTimeData(url: 'Asia/Seoul', locationName: 'Seoul', countryFlag: 'south_korea.png'),
    HandleTimeData(url: 'Asia/Jakarta', locationName: 'Jakarta', countryFlag: 'indonesia.png'),
  ];


  void updateTime(index) async{
    HandleTimeData handleTimeData = locations[index];
    await handleTimeData.getTimeData();

    //after I got my data return to the other screen with the chosen place to change its time
    Navigator.pop(context, {
      "locationName": handleTimeData.locationName,
      "countryFlag": handleTimeData.countryFlag,
      "time": handleTimeData.time,
      "isDayTime" : handleTimeData.isDayTime
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[850],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.blue[350],
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
            child: Card(
              child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].locationName),
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].countryFlag}'),
                  ),
              ),
            ),
          );
        },),
    );
  }
}
