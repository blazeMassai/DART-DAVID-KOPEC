//An abstract class is a class that cannot be instantiated. Its purpose in life is to serve as a superclass for other classes.
//For example, if A is an abstract class that B inherits from, we cannot create A objects, but we can create B objects.
//Abstract classes are declared with the abstract keyword

abstract class Animal{
  int legs=2;
  int wings=2;
  String blood='warm or cold';
}

class Eagle extends Animal{
  void Talons()=>print('Eagles got very sharp talons');
}

class Lion extends Animal{
  void Claws()=>print('Lions got deadly killer claws');
}

void main() {
  Eagle e=Eagle();
  Lion l=Lion();
  e.legs=2;
  l.legs=4;
  e.blood='warm';
  print('the eagle got '+ e.legs.toString() +  ' and they are '+ e.blood);
  
}