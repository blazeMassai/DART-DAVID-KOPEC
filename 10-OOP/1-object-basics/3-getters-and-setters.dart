class Dice {
  int _sides=6;
  int numofdice=2;
  List<int> _values=[4,6];

  int get maximumValue=> sides*numofdice;

  int get sides=>_sides;

  set sides(int s){
    if(s<2){
      _sides=2;
    }else{
      _sides=s;
    }
  }
}