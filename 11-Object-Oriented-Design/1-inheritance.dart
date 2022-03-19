//Dart’s inheritance model is known as single inheritance (as opposed to multiple inheritance). In short, this means
//that you can only include one other class after the extends keyword.

class WritingInstrument{
  int lifeRemaining=100;
  String color='black';

  void write(String what){
    if(lifeRemaining<0){
      return;
    }
    print(what);
    lifeRemaining--;
  }
}

class Pen extends WritingInstrument{
  void explode(){
    print("Ink everywhere");
    lifeRemaining=0;
  }
}

class Pencil extends WritingInstrument{
  int eraserLife=100;

  void erase(String toErase){
    if(eraserLife<0){
      return;
    }
    print('Removed $toErase');
    eraserLife--;
  }
}

void main(){
  Pen p = Pen();
  p.color='blue';
  p.write('peni yangu inaandika vizuri');
  Pencil ps = Pencil();
  p.explode();
  ps.write('Penseli ya kishua');

  WritingInstrument w=WritingInstrument();
  print(w is Pencil);
  print(w is Pen);
}