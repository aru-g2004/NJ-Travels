import 'dart:math';

class CL{
  static List<int> RL(String s, int length) {
    int Catlength = 0;
    List<int> randomlist = [];

    if (s.contains("Beach")) {
      Catlength = 14;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Family")) {
      Catlength = 12;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Food")) {
      Catlength = 12;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Music")) {
      Catlength = 9;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Nature")) {
      Catlength = 28;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Shopping")) {
      Catlength = 6;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Sports")) {
      Catlength = 10;
      randomlist = InsideMethod(length, Catlength);
    } else if (s.contains("Thrill")) {
      Catlength = 11;
      randomlist = InsideMethod(length, Catlength);
    } else {
      randomlist = InsideMethod(length, 7);
    }

    return randomlist;
  }

  static List<int> InsideMethod(int length, int catlength) {
    Random random = new Random();
    List<int> L = [];
    L.length = length;

    for (int i = 0; i <= catlength; i++) {
      L.add(i);
      // random number from categroy length

    }

    L.shuffle();

    int remove = catlength - L.length;

    for (int i = 0; i < remove; i++) {
      L.removeAt(i);
    }

    return L;
  }
}
