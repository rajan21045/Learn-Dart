import 'dart:io';

void main() {
  /*
  A List is an ordered collection of elements.
  Elements are stored in sequence.
  Duplicates are allowed.
  Each element has an index (starts from 0).
  */

  //1.1 Creating a List
  List<String> Namee = ['Rajan', 'Ashok', 'Prabin'];
  print(Namee); // printing

  // 1.2 Accessing Elements
  print(Namee[2]);
  print(Namee[1]);

  // 1.3 Modifying a List
  Namee.add('Anuj'); // add one element
  Namee.addAll(['Sasin', 'Abin']); // add multiple elements
  Namee.remove('Ashok'); // remove by value
  Namee.removeAt(1); // remove by index

  Namee.sort(); // sorting the list
  print(Namee); // printing the list
  print(Namee.reversed); //printing the list in reverse order

  print(Namee);

  //1.4 Common List Properties
  print(Namee.length); // printing the length of the list named Namee
  print(Namee.first); //printing the first value of list
  print(Namee.last); //printing the last value of list
  print(Namee.isEmpty); // printing if the list is empty or not

  // 1.5 Common List Properties
  for (String name in Namee) {
    print(name);
  }

  List<int> numbers = [10, 20, 30, 40];
  print(numbers); // printing the list named numbers

  /*
  1.6 When to Use List
  You need order
  You allow duplicate values
  You need index-based access
  */
  stdout.write("Enter the size of list: ");
  int size = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the name to entered in list: ");
  var i = 0;
  List<String> Name = [];
  for (i = 0; i < size; i++) {
    String? nameInput = stdin.readLineSync();
    if (nameInput != null) {
      Name.add(nameInput);
    }
  }
  print(Name);
}
