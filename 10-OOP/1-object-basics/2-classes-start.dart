class Animal{
  late String name;
  late String habitat;
  String? nutrition;
  List<String>? features;
}

void main() {
  Animal d = new Animal();
//  Animal d = Animal(); //this is equal to the above line
  d.name = "eagle";
  d.habitat='mountains';
  d.nutrition='carnivorous';
  d.features=['talons','sharp beak','flying high'];
  print('the ' +d.name + ' lives in ' + d.habitat);

  d.habitat = 'rocks';
  print('the ' +d.name + ' lived in ' + d.habitat);
  print(d.features);
  d.features?.add('large wings');
  print(d.features);
}