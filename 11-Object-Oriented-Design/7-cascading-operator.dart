//The cascade operator, .., is not really specific to the topic of this chapter, . If we want to perform multiple operations on the same object, without having to retype the
//name of variable that refers to it multiple times, then the cascade operator is our ticket

void main() {

//  List fruits = <String>[];
//  fruits.length = 0;
//  fruits.add("lime");
//  fruits.add("orange");
//  fruits.shuffle();
// the above can be implemented as
  List fruits = <String>[];
        fruits
          ..length = 0
          ..add("lime")
          ..add("orange")
          ..shuffle();
}