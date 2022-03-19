import 'dart:math';

class Dice {
  int _sides = 6;
  int _numofdice = 2;
  List<int> _values = [];
  int get maximumValue => sides * numofdice;
  int get numofdice => _numofdice;
  int get sides => _sides;
  /// total is the sum of [_values]
  int get total => _values.fold(0, (first, second) => first + second);
  /// constructs a new Dice object
  Dice(this._sides, this._numofdice);
  /// generate random values for [_values]
  void roll() {
    List<int> newValues = [];
    Random rand = new Random();
    for (int i = 0; i < numofdice; i++) {
      newValues.add(rand.nextInt(sides) + 1); // number from 1 to sides
    }
    _values = newValues;
  }
  /// print the values of the dice
  printDice() => print(_values);
}

void main() {

  Dice a = Dice(12,3);
  a._sides = 7;
  a._numofdice = 3;

  a.roll();
  print(a.printDice());


}