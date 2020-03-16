import 'package:flutter/material.dart';
import 'package:flutterapp/network/getTime.dart';
import 'package:flutterapp/Utills/moke_data.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<HandleTimeData> locations = FakeLocations().fakeLocation();

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
      backgroundColor: Theme.of(context).textTheme.bodyText1.color,
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Theme.of(context).textTheme.bodyText2.color,
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
