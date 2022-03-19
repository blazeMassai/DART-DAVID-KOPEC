import 'dart:math';

import 'dart:math';

class Dice {
  int _sides=6;
  int numofdice=2;
  List<int> _values=[4,6];

  //getter and setters
  int get maximumValue=> sides*numofdice;

  int get sides=>_sides;

  set sides(int s){
    if(s<6){
      _sides=4;
    }else{
      _sides=s;
    }
  }

  //constructors
  Dice(int ns, int nd){
    sides=ns;
    numofdice=nd;
  }
  
  //method to generate random values
  roll(){
    List<int> newValues = [];
    Random rand = new Random();
    for(int i=0; i< numofdice; i++){
      newValues.add(rand.nextInt(sides)+1); //number from 1 to sides
    }
    _values=newValues;
  }

  //print the values of dice
  printDice() => print(_values);



}

void main() {

  Dice a = Dice(12,3);
  a.sides = 7;
  a.numofdice = 3;

  a.roll();
  print(a.printDice());


}