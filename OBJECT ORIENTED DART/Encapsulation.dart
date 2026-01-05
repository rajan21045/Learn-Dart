/*

Encapsulation is a core principle of Object-Oriented Programming (OOP) and is fully supported in Dart. 
It focuses on bundling data (variables) and behavior (methods) together while restricting direct access to some parts of an object.

What is Encapsulation?
Encapsulation means:
1. Keeping class variables private
2. Providing controlled access through public methods (getters and setters)
This protects data from accidental modification and improves code maintainability.

  Why Encapsulation is Important
  1. Data security
  2. Prevents invalid data
  3. Improves maintainability
  4. Makes code easier to debug
  5. Follows clean OOP design


  Key Points to Remember (Exam-Oriented)
  1. Encapsulation = data hiding + controlled access
  2. Dart uses _ to make variables private
  3. Getters and setters provide safe access
  4. Privacy in Dart is library-based, not class-based
*/

void main() {
  BankAccount account = BankAccount();
  /*You cannot access _balance directly:
  account._balance; Error
  */
  account.deposit(10000);
  account.getBalance();

  Student student = Student();
  student.name = 'Alice';
  student.age = 20;
  print('Student Name: ${student.name}');
  print('Student Age: ${student.age}');

  Employee emp = Employee(1, 'Bob');
  emp.setName('Robert');
  emp.displayInfo();
}

/*
  How Encapsulation Works in Dart
  1. Private Variables (Using _)

  In Dart, privacy is at the library level.
  Any variable or method starting with _ is private.
*/
class BankAccount {
  double _balance = 0;
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  double getBalance() {
    return _balance;
  }
}

/*2. Getters and Setters (Recommended Way)
Dart provides built-in getter and setter syntax.
*/
class Student {
  String _name = '';
  int _age = 0;
  String get name => _name;
  set name(String value) {
    if (value.isEmpty) {
      print('Name cannot be empty.');
      return;
    } else {
      _name = value;
    }
  }

  int get age => _age;
  set age(int value) {
    if (value < 0) {
      print('Age cannot be negative.');
      return;
    } else {
      _age = value;
    }
  }
}

//3. Encapsulation Using Constructor
class Employee {
  final int _id;
  String _name = '';
  Employee(this._id, this._name);
  int get id => _id;
  String get name => _name;
  void setName(String name) {
    if (name.isEmpty) {
      print("Name cannot be empty.");
      return;
    } else {
      _name = name;
    }
  }

  void displayInfo() {
    print('Employee ID: $_id, Name: $_name');
  }
}
