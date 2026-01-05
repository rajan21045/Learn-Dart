import 'dart:io';

void main() {
  // 1. Write a Dart program to create a list of integers and pass it to a function to find the sum of all elements.
  passing();
  //2. Write a Dart program to store employee details using a map and display them using a function.
  employeeDetails();
}

List<int> summ = [];
Map<int, Map<String, dynamic>> empDetail = {};

// Function Of Question Number First
void passing() {
  while (true) {
    print("-------------------");
    stdout.write("Welcome!!!\n");
    print("-------------------");
    print(
      "Menu Are:\n1.Add To List\n2.Find The Sum of Elements\n3.Display The Numbers\n4.Exit",
    );
    stdout.write("Enter Your Choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        addToList();
        break;
      case 2:
        sumOfList();
        break;
      case 3:
        display();
        break;
      case 4:
        print("Exiting The Program.............");
        return;
      default:
        print("Please Enter 1, 2, 3.");
    }
  }
}

// This Is The Function To Add The Integer Number
void addToList() {
  print("Enter The Element(ONLY ONE): ");
  int element = int.parse(stdin.readLineSync()!);
  summ.add(element);
}

// This Is The Function To Sum The Integer Number
void sumOfList() {
  int sum = 0;
  for (int i = 0; i < summ.length; i++) {
    sum += summ[i];
  }
  print("The Sum Of All Elements Is: $sum");
}

// This Is The Function To Display The Integer Number
void display() {
  print("The Elements Of List Are In Sorted Form: ");
  summ.sort();
  summ.forEach((numbers) {
    print(numbers);
  });
}

void employeeDetails() {
  while (true) {
    print("-------------------");
    stdout.write("Welcome!!!\n");
    print("-------------------");
    print(
      "Menu Are:\n1. Add The Employee Details\n2. Display The Employee Details\n3.Exit",
    );
    stdout.write("Enter Your Choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        addEmployeeDetails();
        break;
      case 2:
        displayEmployeeDetail();
        break;
      case 3:
        print("Exiting The Program.............");
        return;
      default:
        print("Please Enter 1, 2, 3.");
    }
  }
}

void addEmployeeDetails() {
  print('How many employees do you want to enter?');
  int? count = int.tryParse(stdin.readLineSync()!);
  if (count == null) {
    print('Invalid number. Exiting...');
    return;
  }
  for (int i = 0; i < count; i++) {
    print('\nEntering details for Employee ${i + 1}:');

    print('Enter Employee ID:');
    int id = int.parse(stdin.readLineSync()!);

    print('Enter Name:');
    String name = stdin.readLineSync()!;

    print('Enter Department:');
    String dept = stdin.readLineSync()!;

    print('Enter Salary:');
    double salary = double.parse(stdin.readLineSync()!);
    empDetail[id] = {'Name': name, 'Department': dept, 'Salary': salary};
  }
}

void displayEmployeeDetail() {
  if (empDetail.isEmpty) {
    print('\nNo employee records found.');
    return;
  }

  print('\n--- Final Employee Records ---');
  print('------------------------------');
  print("Displaying The Detail Of Employees: ");
  empDetail.forEach((id, details) {
    print(
      "Id: $id, Name: ${details['Name']}, Department: ${details['Department']}, Salary: ${details['Salary']}\n",
    );
  });
}
