Map countryCapitals = {
  'Tanzania':'Dodoma',
  'Kenya':'Nairobi',
  'Congo':'Kinshasa'
};

Map nameAge = {
  'Ree':35,
  'Rene':32,
  'Ariel': 2,
  'Isaack':1
};

Map employees = {345: {"name": "Donald Smith", "Department": "Accounting", "Salary": 1000},
  220: {"name": "Mark Anderson", "Department": "Sales", "Salary": 950},
  572: {"name": "Elizabeth Brahmen", "Department": "Marketing", "Salary": 975}};

void main() {
  var _agelist = nameAge.values.toList();
  var _namelist = nameAge.keys.toList();
  print(nameAge[1]);
  print(_namelist);
  print(_agelist);
  print(employees[345]);

  Map productPrice = {"Gum": 0.95, "Soda": 1.05, "Chips": 1.99};
  double gumPrice = productPrice["Gum"]; // gumPrice is now 0.95
  print(productPrice);
  print('gum price is : $gumPrice');

  productPrice["Cookie"] = 0.50; // a new key/value pair added to productPrice
  productPrice["Soda"] = gumPrice; // the value for the key "Soda" is now 0.95
  print(productPrice);

}


