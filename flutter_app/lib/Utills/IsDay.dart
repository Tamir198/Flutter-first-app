
class IsDay{
  bool isDayTime(int hour){
    //Return true or false according to time of the day
    return (hour > 6 && hour < 19 ? true : false);
  }
}