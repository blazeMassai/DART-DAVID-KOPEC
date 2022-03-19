import 'dart:math';

import 'dart:math';

class Dice {
  int _sides=6;
  int numofdice=2;
  List<int> _values=[4,6];

  int get maximumValue=> sides*numofdice;

  int get sides=>_sides;

  set sides(int s){
    if(s<6){
      _sides=4;
    }else{
      _sides=s;
    }
  }

}

void main() {

  Dice a = Dice();
  print(a.sides);
  print(a.maximumValue);
  a.sides = 7;
  a.numofdice = 3;

}