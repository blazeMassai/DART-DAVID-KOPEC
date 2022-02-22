import 'dart:io';

void main() {
  print('A: Convert Celcius to Fahrenheit\nB: Convert Fahrenheit to Celsius!');
  String selection;

  do {
    selection = stdin.readLineSync()!.toUpperCase(); //get uppercase input
  } while (selection != "A" && selection != "B");

  print("Enter the starting temperature: ");
  String inTemp = stdin.readLineSync()!;
  int temp = int.parse(inTemp);

  switch (selection) {
    case "A":
      print("$temp degrees of  Celsius is ${temp*.18 +32} degrees of Fahrenheit");
      break;
    case "B":
      print("$temp degrees of Fahrenheit is ${(temp-32) / 1.8} degrees of Celsius");
      break;
    default:
      break;
  }
}
