//Mixins are another way of appending the attributes of one class onto another without using inheritance. Unlike classes
//that implement interfaces, classes that use mixins do not need to redefine the behavior in the original class that they
//are mixing in. The keyword with is used to indicate that a class uses a mixin. A class that is providing a mixin must Have no declared constructors, Not be a subclass of anything other than Object (no extends), Make no calls using super

class TimeStamp {
  DateTime creationTime = new DateTime.now();
  void printTimeStamp() {
    print(creationTime);
  }
}

abstract class Patient {
  String name;
  Patient(this.name);
}
class NewBorn extends Patient with TimeStamp {
  NewBorn(String name) : super(name);
}
class Mother extends Patient {
  Mother(String name) : super(name);
}
void main() {
  NewBorn nb = NewBorn("John Doe");
  Mother m = Mother("Jane Doe");
  nb.printTimeStamp();
  print(m.name);
}