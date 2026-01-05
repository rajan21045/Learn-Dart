/*
1. File Handling in Dart (Overview)
File handling in Dart is used to:
1. Create files
2.Read from files
3. Write to files
4. Append data to files
5. Delete files

Dart provides file-handling support through the dart:io library.
Note: dart:io works in Dart VM, Flutter (mobile/desktop), but not in web applications.
*/

// 2. Import Required Library
import 'dart:io';

void main() {
  // 3. Creating a File
  File file = File("test.txt");
  file.createSync();
  print('File created successfully');
  /*
1. createSync() creates the file synchronously.
2. Use create() for asynchronous creation.
*/

  // 4. Writing to a File
  // (a) Write String to File (Overwrite)
  file.writeAsStringSync('Hello Dart');
  print("Text Is Successfully Written.");
  // This overwrites existing content.

  // (b) Append Data to a File
  file.writeAsStringSync("\nRajan Is Learning Dart.", mode: FileMode.append);

  // 5. Reading from a File
  // (a) Read Entire File as String
  String content = file.readAsStringSync();
  print(content);

  // (b) Read File Line by Line
  List<String> lists = file.readAsLinesSync();
  for (var line in lists) {
    print(line);
  }
}
