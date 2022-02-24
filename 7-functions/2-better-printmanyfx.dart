import 'dart:io';


printMany(String forPrinting, int numberOfPrints) {
  print("Enter number of prints: ");
  String namba = stdin.readLineSync()!;
  numberOfPrints = int.parse(namba);

  for (int i=0; i < numberOfPrints; i++){
    print(forPrinting);
  }
}

main(){
 printMany("Msifu Bwana", 2);
}