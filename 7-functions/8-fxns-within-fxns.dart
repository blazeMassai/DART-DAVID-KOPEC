void talkAbout(String toShout, shoutFunc) {
  print(shoutFunc(toShout));
}
void main() {
  String exclame(String toExclame) => toExclame + "!";
  String manyTalk(String toMany) {
    String allTogether = "";
    for (int i = 0; i < 10; i++) {
      allTogether = allTogether + toMany; // keep concatenating toMany onto the end of itself
    }
    return allTogether;
  }
  talkAbout("Hello", exclame);
  talkAbout("Ajee", manyTalk);
  talkAbout("Wow", (String s) => s.toUpperCase()); // a function with no title!?
}