class Animal{
  late String name;
  late String habitat;
  String? nutrition;
  List<String>? features;
}

void main() {
  Animal d = new Animal();
  d.name = "eagle";
  d.habitat='mountains';
  d.nutrition='carnivorous';
  d.features=['talons','sharp beak','flying high'];
  print('the ' +d.name + ' lives in ' + d.habitat);
}