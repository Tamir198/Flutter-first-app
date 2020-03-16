import '../network/getTime.dart';

class FakeLocations{

  List<HandleTimeData> fakeLocation(){

    List<HandleTimeData> locations = [HandleTimeData(url: 'Europe/London', locationName: 'London', countryFlag: 'uk.png'),
      HandleTimeData(url: 'Europe/Berlin', locationName: 'Athens', countryFlag: 'greece.png'),
      HandleTimeData(url: 'Africa/Cairo', locationName: 'Cairo', countryFlag: 'egypt.png'),
      HandleTimeData(url: 'Africa/Nairobi', locationName: 'Nairobi', countryFlag: 'kenya.png'),
      HandleTimeData(url: 'America/Chicago', locationName: 'Chicago', countryFlag: 'usa.png'),
      HandleTimeData(url: 'America/New_York', locationName: 'New York', countryFlag: 'usa.png'),
      HandleTimeData(url: 'Asia/Seoul', locationName: 'Seoul', countryFlag: 'south_korea.png'),
      HandleTimeData(url: 'Asia/Jakarta', locationName: 'Jakarta', countryFlag: 'indonesia.png'),
    ];

    return locations;
  }

}