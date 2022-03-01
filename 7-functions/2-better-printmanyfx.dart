import 'dart:io';


printMany(String forPrinting, int numberOfPrints) {
  print("Enter number of prints: ");
  String namba = stdin.readLineSync()!;
  numberOfPrints = int.parse(namba);

  for (int i=0; i < numberOfPrints; i++){
    print(forPrinting);
  }
}

void sayHey(String name){
  print("Hello, $name");
}

luckyNumber(){
  return 7;
  print("this won't be printed");
}

main(){
 printMany("Msifu Bwana", 2);
 sayHey("Papii");
 luckyNumber();
}