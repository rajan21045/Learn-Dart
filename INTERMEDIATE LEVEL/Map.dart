void main() {
  /*
  In Dart, a Map is a collection that stores data in unique key-value pairs, similar to dictionaries in other programming languages. Maps are dynamic and efficient for retrieving values using their associated keys. 
  
  Key Concepts
  1. Key-Value Pairs: Every value in a map must have a unique key. If you add an element with a key that already exists, the new value will replace the old one.
  2. Syntax: Maps are created using curly braces {} with colons : separating keys and values (e.g., 'key': value).
  3. Types: Keys and values can be of any data type, including strings, integers, or custom objects.
  4. Performance: Maps offer fast lookups (O(1) time complexity) when accessing values by their key, which is faster than iterating through a list (O(n) time complexity). 
  */


  // Map with type inference (String keys, int values)
  var inventory = {
    'name1': 'Rajan Poudel',
    'name2': 'Ashok Poudel',
    'name3': 'Dhruv Rathee',
  };

  print(
    inventory,
  ); // output: {name1: Rajan Poudel, name2: Ashok Poudel, name3: Dhruv Rathee}
  print(inventory[0]); //output: Null
  print(inventory['name1']); //output: Ashok Poudel

  inventory['brownie'] = '1'; //Add a new entry
  inventory['name1'] = 'Prabin Thapa'; //Update the value for 'name1'
  inventory.remove('name3'); // Removes the 'name3' entry

  // Explicitly typed Map
  Map<int, String> digitToWord = {1: 'one', 2: 'two', 3: 'three'};
  print(digitToWord); // Output: {1: one, 2: two, 3: three}

  /*
  Iterating Over a Map
  While you cannot iterate directly over a map using a standard for-in loop, you can iterate over its keys, values, or entries. 

*/

  //Using forEach:
  digitToWord.forEach((key, value) {
    print('$key -> $value');
  });

  //Using entries in a for-in loop:
  for (final entry in inventory.entries) {
    print('${entry.key} has ${entry.value} items');
  }
}
