import 'dart:io';

Map<String, int> records = {};
Map<String, int> phonenumber = {};
List<int> lists = [];
List<int> lists1 = [];

void main() {
  //1. Write a Dart program to manage student records using a map and functions (add, display).
  studentRecord();
  //2. Write a Dart program to implement a simple menu-driven program using lists and functions.
  menu();
  //3. Write a Dart program to count word frequency in a string using a map.
   // Input string
  String text = "I love Dart and I love programming";
  // Convert string into a list of words
  List<String> words = text.split(" ");
  // Create a map to store word frequency
  Map<String, int> wordCount = {};
  // Loop through each word
  for (String word in words) {
    if (wordCount.containsKey(word)) {
      // If word already exists, increase count
      wordCount[word] = wordCount[word]! + 1;
    } else {
      // If word does not exist, add it with count 1
      wordCount[word] = 1;
    }
  }
  // Display the word frequency
  print("Word Frequency:");
  wordCount.forEach((key, value) {
    print("$key : $value");
  });


  // 4. Write a Dart program to create a phonebook using map and functions.
  phonebook();
  // 5. Write a Dart program to remove duplicate elements from a list using a set and function.
  duplication();
}

void studentRecord() {
  while (true) {
    print("\n===== Student Records =====");
    print("1. Add Student");
    print("2. Display Students");
    print("3. Exit");
    stdout.write("Enter your choice: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addStudent();
        break;

      case 2:
        displayStudents();
        break;

      case 3:
        print("Thank you! Exiting program.");
        return;

      default:
        print("Invalid choice! Please enter 1, 2, or 3.");
    }
  }
}

void addStudent() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!.trim();

  stdout.write("Enter marks: ");
  int marks = int.parse(stdin.readLineSync()!);

  records[name] = marks;
  print("Student record added successfully.");
}

void displayStudents() {
  if (records.isEmpty) {
    print("No student records available.");
  } else {
    print("\n--- Student List ---");
    records.forEach((name, marks) {
      print("Name: $name | Marks: $marks");
    });
  }
}

menu() {
  while (true) {
    print("\n===== Menu Bar =====");
    print("1. Add To Menu");
    print("2. Display Menu");
    print("3. Exit");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter The Number: ");
        int num = int.parse(stdin.readLineSync()!);
        lists.add(num);
        break;
      case 2:
        lists.forEach((number) {
          print(number);
        });
        break;
      case 3:
        print("Thank you! Exiting program.");
        return;

      default:
        print("Invalid choice! Please enter 1, 2, or 3.");
    }
  }
}

phonebook() {
  while (true) {
    print("\n===== PhoneBook Records =====");
    print("1. Add Phone Number");
    print("2. Display Phone Number");
    print("3. Exit");
    stdout.write("Enter your choice: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addPhoneNumbers();
        break;

      case 2:
        displayPhoneNumbers();
        break;

      case 3:
        print("Thank you! Exiting program.");
        return;

      default:
        print("Invalid choice! Please enter 1, 2, or 3.");
    }
  }
}

void addPhoneNumbers() {
  stdout.write("Enter Person Name: ");
  String name = stdin.readLineSync()!.trim();

  stdout.write("Enter Phone Number: ");
  int phone = int.parse(stdin.readLineSync()!);

  phonenumber[name] = phone;
  print("$name's record added successfully.");
}

void displayPhoneNumbers() {
  if (phonenumber.isEmpty) {
    print("No Records Available.");
  } else {
    print("\n--- Phone Number List ---");
    phonenumber.forEach((name, number) {
      print("Name: $name | Phone Number: $number");
    });
  }
}

duplication() {
  while (true) {
    print("\n===== List =====");
    print("1. Add");
    print("2. Display");
    print("3. Remove Duplication");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        addNumbers();
        break;

      case 2:
        displayNumbers();
        break;

      case 3:
        removeDuplicate();
        break;

      case 4:
        print("Thank you! Exiting program.");
        return;

      default:
        print("Invalid choice! Please enter 1, 2, or 3.");
    }
  }
}

void addNumbers() {
  stdout.write("Enter The Number: ");
  int num = int.parse(stdin.readLineSync()!);
  lists1.add(num);
}

void displayNumbers() {
  lists1.forEach((number) {
    print(number);
  });
}

void removeDuplicate() {
  Set<int> sets1 = lists1.toSet();
  List<int> uniqueNumbers = sets1.toList();
  print(uniqueNumbers);
}
