// Importing dart:collection to use HashSet
import 'dart:collection';

void main() {

  // Creating a Set without specifying a type (dynamic Set)
  Set name1 = {'Rajan', 'Amit', 'Ujjwal', 'Prabin'};
  print(name1);

  // Creating a Set with generic type String (recommended approach)
  Set<String> name2 = {'Abin', 'Ashok', 'Anuj', 'Prabin', 'Sasin', 'Shishir'};
  print(name2);

  // Creating an empty Set using constructor
  Set set1 = new Set();
  set1.add("Bruce");   // Adding first element
  set1.add("Gotham");  // Adding second element
  print(set1);

  // Adding elements to an existing Set
  name2.add('Hari');
  name2.add('Rahul');
  name2.add('Milan');
  print(name2);

  // Printing runtime type of each Set
  print(name1.runtimeType);
  print(name2.runtimeType);
  print(set1.runtimeType);

  // Iterating through Set elements using for-each loop
  for (String i in name1) {
    print(i);
  }

  // Creating a constant Set (immutable)
  Set set11 = const {1, 123, 22, 3};
  print(set11);

  // Demonstrating Set methods
  Set num = {1, 22, 56, 73, 43};

  // Adding a single element
  num.add(12);
  print(num);

  // Adding multiple elements at once
  num.addAll([55, 33, 90, 20, 10, 5]);
  print(num);

  // Removing an element
  num.remove(22);
  print(num);

  // Printing length of the Set
  print("The Length of Set Name \"num\" Is ${num.length}");

  // Printing runtime type
  print("The Run Time Type of Set Name \"num\" Is ${num.runtimeType}");

  // Checking if Set is empty or not
  print(num.isEmpty);
  print(num.isNotEmpty);

  // Removing all elements from the Set
  num.clear();
  print(num);

  // Creating a HashSet (unordered hash-table-based Set)
  // Requires dart:collection import
  Set a = HashSet();
  a.addAll([10, 28, 42, 78, 83]);
  print(a);
}
