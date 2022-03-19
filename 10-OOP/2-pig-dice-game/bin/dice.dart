
part of pig;

class Dice {
  int _sides = 6;
  int _numberOfDice = 2;
  List<int> _values = [];

  int get maximumValue => sides * numberOfDice;
  int get numberOfDice => _numberOfDice;
  int get sides => _sides;
  /// total is the sum of [_values]
  int get total => _values.fold(0, (first, second) => first + second);
  /// constructs a new Dice object
  Dice(this._sides, this._numberOfDice);
  /// generate random values for [_values]
  void roll() {
    List<int> newValues = [];
    Random rand = new Random();
    for (int i = 0; i < numberOfDice; i++) {
      newValues.add(rand.nextInt(sides) + 1); // number from 1 to sides
    }
    _values = newValues;
  }
  /// print the values of the dice
  void printDice() => print(_values);
}