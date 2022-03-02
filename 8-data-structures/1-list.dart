

void main() {
  String n = 'tai';
  List cars=['Toyota', 'BMW', 'MERCEDES'];
  var wanyama=['simba','chui','tembo',n];
  wanyama.add('mbuzi');
  wanyama.remove('chui');

  print(cars);
  print(cars.reversed);
  print(wanyama);

  print('---------------');

  List greetings = ['mamboo','niaje','howdy','hi','sup'];

//  for (int i = 0; i < greetings.length; i++) { // notice the < operator here...
//    print(greetings[i]);
//  }

  for (String greeting in greetings) { // greeting will refer to each element of greetings
    print(greeting);
  }
  print('---------------');
print('generic lists below');

  List<int> myNums = [0, 1, 1, 2, 3, 5, 8, 13]; // recognize this sequence?
  List<String> myStrings = ["strawberry", "lavender", "aqua", "violet"];

  print(myNums);
  print(myStrings);

}

