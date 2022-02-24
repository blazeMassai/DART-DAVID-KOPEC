import 'dart:io';
String surname = "George";
int numberOfPrints = 0;

printMany(String forPrinting){
  for ( int i = 0; i<numberOfPrints; i++){
    print(forPrinting);
  }
}

hello(String name){
  print("hello $name $surname");
}

main(){
  hello("Allen");
  print("Enter number of prints: ");
  String namba = stdin.readLineSync()!;
  numberOfPrints = int.parse(namba);
  printMany("I will not overuse top-level variables");
}