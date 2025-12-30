import 'dart:io';
import 'dart:math';

void main() {
  //🔰 BASIC ERROR HANDLING (try–catch)
  //1. Write a program that divides two numbers and handles the error when the divisor is 0.
  int a = 12;
  int b = 0;
  try {
    int result = a ~/ b;
    print("Result: $result");
  } catch (e) {
    print("Error: Division by zero is not allowed.");
  }

  //2. Take an integer input from the user and handle the error if the user enters a string instead of a number.
  stdout.write("Enter an integer: ");
  String? input = stdin.readLineSync();
  try {
    int.parse(input!);
    print("You entered a valid integer: $input");
  } on FormatException {
    print("'$input' is a string.");
  }

  //3. Access an element from a list using an index entered by the user.
  //Handle the error if the index is out of range.
  List<int> index = [1, 23, 77, 43, 56];
  try {
    print("Index 1 Value Is: ${index[1]}");
    print("Index 1 Value Is: ${index[7]}");
  } on RangeError {
    print("Error: Index out of range.");
  }

  // 4. Convert a string to an integer using int.parse() and handle the error if conversion fails.
  String str = "123abc";
  try {
    int number = int.parse(str);
    print("Converted number: $number");
  } on FormatException {
    print("Error: Cannot convert '$str' to an integer.");
  }

  // 🟡 INTERMEDIATE LEVEL
  //5. Write a function getSquareRoot(int num) that:
  // Throws an error if the number is negative
  // Catches and prints a user-friendly message
  void getSquareRoot(int num) {
    try {
      if (num < 0) {
        throw Exception("Negative numbers do not have real square roots.");
      }
      double result = sqrt(num.toDouble());
      print("Square root of $num is $result");
    } catch (e) {
      print("Error: $e");
    }
  }

  getSquareRoot(5);

  // 6. Create a list of numbers and calculate the average.
  // Handle the error when the list is empty.
  try {
    if (index.isEmpty) {
      throw Exception("List Is Empty");
    } else {
      int sum = index.reduce((a, b) => a + b);
      double average = sum / index.length;
      print('The average is: $average');
    }
  } catch (e) {
    print("Error, List Is EMPTY");
  }
}
