import 'dart:io';

void main() {
  //  Basic Questions

  //q1. Even or Odd: Write a program that takes an integer as input and uses an if-else statement to determine if it is even or odd.

  stdout.write("Enter The Number To Check: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print("The Number ($num) Is Even.");
  } else {
    print("The Number ($num) Is Odd.");
  }

  //q2. Positive, Negative, or Zero: Write a program to check whether a number is positive, negative, or zero using if-else-if statements.
  stdout.write("Enter The Number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  if (num1 > 0) {
    print("The Number ($num1) Is Postivie Number.");
  } else if (num < 0) {
    print("The Number ($num1) Is Negative.");
  } else if (num1 == 0) {
    print("The Number ($num1) Is Equal To Zero.");
  }

  //q3. Print Your Name Multiple Times: Write a program to print your name 100 times using a for loop.
  for (int i = 1; i <= 100; i++) {
    print("Rajan Poudel");
  }

  //q4. Sum of Natural Numbers: Write a program to calculate the sum of the first 'n' natural numbers using a while loop.
  stdout.write("Enter The Number Upto Find The Sum: ");
  int n1 = int.parse(stdin.readLineSync()!);
  int i = 1, sum = 0;
  while (i <= n1) {
    sum += i;
    i++;
  }
  print(sum);

  // Intermediate Questions
  //q5. Multiplication Table: Write a program that generates and prints the multiplication table for a number (e.g., 5) using a loop.
  stdout.write("Enter The Number To Multification: ");
  int n2 = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$n2 * $i is ${n2 * i}");
  }

  //q6. Simple Calculator: Create a simple calculator program that performs addition, subtraction, multiplication, and division based on user input and if conditions or a switch statement.
  print("Menu Are:");
  print("1.Addition\2.Subtraction\n3.Multiplication\n4.Division");
  stdout.write("Enter The Choice To Perform (1-4): ");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      stdout.write("Enter First Number: ");
      int a = int.parse(stdin.readLineSync()!);
      int b = int.parse(stdin.readLineSync()!);
      int sum = a + b;
      print("The Sum of $a and $b is $sum.");
      break;
    case 2:
      stdout.write("Enter First Number: ");
      int a = int.parse(stdin.readLineSync()!);
      int b = int.parse(stdin.readLineSync()!);
      int sub = a - b;
      print("The Subtraction of $a and $b is $sub.");
      break;
    case 3:
      stdout.write("Enter First Number: ");
      int a = int.parse(stdin.readLineSync()!);
      int b = int.parse(stdin.readLineSync()!);
      int mul = a * b;
      print("The Multiplication of $a and $b is $mul.");
      break;
    case 4:
      stdout.write("Enter First Number: ");
      int a = int.parse(stdin.readLineSync()!);
      int b = int.parse(stdin.readLineSync()!);
      double div = a / b;
      print("The Division of $a and $b is $div.");
      break;
    default:
      print("Please Enter The Number Between 1 And 4.");
  }

  //q7. Skip a Number in a Sequence: Write a program to print numbers from 1 to 100, but skip a specific number (e.g., 41) using a for loop and the continue statement.
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    }
    print(i);
  }

  //q8. Filter Even Elements in a List: Given a list of integers a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100], write Dart code that creates a new list containing only the even elements from the original list using a loop and an if condition.
  List<int> aa = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> bb = [];
  int size = aa.length;
  for (int i = 0; i < size; i++) {
    if (aa[i] % 2 == 0) {
      bb.add(aa[i]);
    }
  }
}
