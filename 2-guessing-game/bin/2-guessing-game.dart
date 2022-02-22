import 'dart:math';
import 'dart:io';

void main() {
  int guess;
  Random rand = new Random();//create a random number generator
  int answer = rand.nextInt(50); //gets a random answer from 0 to 99

  do {
    print("Enter your guess: ");
    String temp = stdin.readLineSync()!; //read in from keyboard, mshangao ni null safety check
    guess = int.parse(temp); //convert String to integer

    if (guess < answer){
      print("Too Low");
    } else if(guess > answer) {
      print("Too High");
    }
  } while (guess != answer);
  print("You got it!");
}
