void main() {
  //BASICS
  int x=5;
  x++;
  var make="Toyota";
  String neno;
  neno = "5";
  int y= 6;
  double z=7.4;
  double ans = y + z;
  List birds = ['eagle', 'hawk', 'owl'];
  Map usafiri = {"dsm-mza":"zuberi","mby-dsm":"NF", "dsm-ara":"BM"};
  print("The maker is: " +make);
  print(ans);
  print(birds[1]);
  print(usafiri["dsm-mza"]);
  print(x);

  print("===========  below is a raw string  =========");
  String myrawStr = r"Here are \ not \special backlashes\";
  print(myrawStr);


  //CONTROL STRUCTURE
  print("===below is control structures====");
  int joto = 40;
  if (joto > 75) {
    print("It's very hot leo");
  } else {
    print("It ain't that hot today");
  }

  //BOOLEAN
  bool b  = false;
  if (!b) {
    print("kweli");
  }else {
    print("sio kweli");
  }

  //SWITCH CASE
  var favAnimal = "cow";

  switch(favAnimal) {
    case "dog":
      print("Bark");
      break;
    case "cat":
      print("meow");
      break;
    case "cow":
      print("Moow");
      break;
    default:
      print("dats a new species");
  }

  int digit =9;

  switch (digit) {
    case 0:
      print("Zero");
      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
      print("Odd");
      break;
    case 2:
    case 4:
    case 6:
    case 8:
      print("Even");
      break;
    default:
      print("Not a Digit");
  }

  //LOOPS
  int beerOnTheWall = 9;

  while (beerOnTheWall > 0) {
    print("$beerOnTheWall bottles of beer on the wall,$beerOnTheWall bottles of beer. Take one down, pass it around, ${beerOnTheWall -1} bottles of beer on the wall remain");
    beerOnTheWall--;
  }

  int total = 0;
  for (int count = 1; count <= 10; count++) {
    total = total + count;
  }
  print("The sum of the numbers 1 through 10 is: $total");

}



