void repeat(String word, [int? repetitions]) {
  if(repetitions != null) {
    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
  }else {
      print(word);
      }
}

void repeat2(String word, [int repetitions = 2]) {

    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
}

void repeat3(String word, [int repetitions = 1, String exclamation = ""]) {
  for (int i = 0; i < repetitions; i++) {
    print(word + exclamation); // the + operator can concatenate strings
  }
}

void main() {
  repeat('believer', 5);
  repeat2('chanzo');
  repeat3("Dog"); // legal
  repeat3("Dog", 2, "!"); // legal
  repeat3("Dog", 2); // legal
//  repeat3("Dog", "!"); // ILLEGAL
//  repeat3("Dog", "!", 2); // ILLEGAL
}