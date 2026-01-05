import 'dart:io';
/*
In Dart, a Map stores data as key–value pairs. You can add data to a Map in several standard ways, depending on whether the map is empty, already initialized, or needs conditional updates.
Below is a concise and practical guide.
*/

void main() {
  Map<String, int> marks = {};
  //1. Creating a Map and Adding Data
  //Using map literal
  marks['Math'] = 45;
  print(marks);

  // 2. Adding Data to an Existing Map
  // Using square bracket syntax (most common)
  Map<String, String> student = {'name': 'Rajan'};
  student['course'] = 'BCA';
  student['semester'] = '4th';
  print(student);
  //If the key already exists, its value will be updated.

  // 3. Using addAll() to Insert Multiple Entries
  Map<String, int> scores = {'English': 70};
  scores.addAll({'Math': 80, 'Computer': 95});
  print(scores);

  // 4. Using putIfAbsent()
  // Adds the key only if it does not already exist.
  Map<String, String> user = {'username': 'admin'};
  user.putIfAbsent('password', () => '12345');
  print(user);
  //If 'password' already exists, it will not be overwritten.

  //5. Adding Data Dynamically (User Input Example)
  Map<String, String> data = {};
  print('Enter key:');
  String key = stdin.readLineSync()!;
  print('Enter value:');
  String value = stdin.readLineSync()!;
  data[key] = value;
  print(data);

  // 6. Map with Different Data Types
  Map<String, dynamic> donor = {};
  donor['name'] = 'Amit';
  donor['age'] = 22;
  donor['bloodGroup'] = 'O+';
  donor['isAvailable'] = true;
  print(donor);

  // 7. Adding Objects or Lists to a Map
  Map<String, List<String>> courses = {};
  courses['BCA'] = ['Java', 'DSA', 'DBMS'];
}
