
void main() {
  List<String> animalist1=['tembo','chui'];
  List<String> animalist2 = [...animalist1];

  List bmw,benz;
  bmw=['four wheels', 'right handed'];
  benz=bmw;
  print(animalist2);
  print(benz);
  benz.add('brembo brakes');
  print(bmw);
}