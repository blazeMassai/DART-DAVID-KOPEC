//When it is said that a programming language supports functions as so-called first-class citizens, it means four things.
//•	 Functions can be referred to by their name in the program.
//•	 Functions can be passed as arguments to other functions.
//•	 A function can be returned as the result (return value) of another function.
//•	 Functions can be included in data structures.

void talkAbout(String toShout, hii_ni_fxn) {
  print(hii_ni_fxn(toShout));
}
String exclame(String toExclame) => toExclame + "!";
String manyTalk(String toMany) {
  String allTogether = "";
  for (int i = 0; i < 5; i++) {
    allTogether = allTogether + toMany; // keep concatenating onto the end of allTogether
  }
  return allTogether;
}
void main() {
  talkAbout("Hello", exclame);
  talkAbout("Woza", manyTalk);
}