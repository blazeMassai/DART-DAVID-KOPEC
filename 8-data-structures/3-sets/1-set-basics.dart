//sets dont contain repeated values
//Unlike a List, the default
//implementation of a Set in Dart does not maintain any particular order. Therefore, its elements do not have indexes.

//Items are added to a Set using the methods add() and addAll(), which add one item or multiple items at once
//(addAll() takes a List as an argument and adds all of the elements of the List to the Set). Items are removed from a
//Set using the remove() method. If you try to add an item to a Set that already exists in it (established by comparison
//with the == operator), then the new item will not be added. A Set can be created empty, or it can be created from a
//List, using the from() factory method



void main() {
  Set blankset = new Set();
  Set elementals = new Set.from(['wind', 'water','fire','earth']);
  print('elements set: $elementals');
  elementals.add("fire"); // not an error, but does nothing since "fire" already in elementals
  elementals.addAll(["thunder", "lightning"]); // adds both "thunder" and "lightning" to the Set
  elementals.remove("water"); // "water" is gone
  print('water is gone in this set, thunder and lightning is added: $elementals');


  //Surprise, surprise, Sets can also specify at creation what type of elements they will contain. Since elements in
//Sets do not have indexes, we need to iterate through Sets using a for-in-loop. The Set method intersection() will
//return a Set of elements that are in both the Set it is applied to and the Set supplied to the method as an argument.

  Set<String> jerryColors = new Set.from(["blue", "red", "green"]);
  Set<String> maryColors = new Set.from(["red", "green", "yellow"]);
  Set<String> bothColors = jerryColors.intersection(maryColors); // contains "red" and "green"

  print('Jerry colors are: $jerryColors');
  print('Mary colors are: $maryColors');

  for (String color in bothColors) {
    print('the intersection of colors is: $color');
  }

//  When a List is converted to a Set, the new Set will drop any duplicate elements in the List, because all of the
//  elements in a Set must be unique. (That’s its useful property, remember?) Therefore, the containsDuplicates()
//  function from the Birthday Paradox program can be significantly simplified using Sets. Instead of actually comparing
//  all of the elements in the List in question, we can just convert the List to a Set and see if the length of the Set is
//  shorter than the length of the List. If it is, then we know that at least one element of the List was removed during the
//  conversion process because it was a duplicate.

}

