/*
Write a Dart class Car with:
1. a private variable _speed
2. a method setSpeed(int value)
3. a method getSpeed()
*/

class Car {
  int _speed = 0;
  int get speed => _speed;
  set speed(int value) {
    setSpeed(value);
  }

  void setSpeed(int speed) {
    if (speed <= 0) {
      print("Speed Can't Be Zero Or Negative.");
    } else {
      _speed = speed;
    }
  }

  int getSpeed() {
    return speed;
  }
}

void main() {
  Car car = Car();
  car.speed = 100;
  print(car.speed);

  Student ss = Student();
  ss.name = "Rajan";
  ss.Marks = 55.3;

  ATM atm = ATM();
  atm.deposit(1200);
  atm.withdraw(222);
  atm.withdraw(1300);

  Employee emp = Employee(1, 4500);
  emp.setSalary = 20000;
  emp.bonus(3000);
}

/*
Create a Student class with:
private variables _name and _marks
a setter that does not allow negative marks
a getter to display marks
*/
class Student {
  String _name = '';
  double _marks = 0.0;

  String get Name => _name;
  double get Marks => _marks;

  set name(String name) {
    if (name.isEmpty) {
      print("Name Can't Be Empty...");
    } else {
      _name = name;
    }
  }

  set Marks(double Marks) {
    if (Marks < 0) {
      print("Marks Can't Be Negative.");
    } else {
      _marks = Marks;
    }
  }
}

/*
Write a Dart program where:
a private variable _balance is initialized
deposit and withdraw methods update the balance safely
*/

class ATM {
  double _balance = 0;
  double get balance => _balance;
  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount < 0 || amount > _balance) {
      print("Withdraw Amount $amount Can't Be Don't.");
    } else {
      _balance -= amount;
      print("Successfully Withdraw the '\$$amount' amount.");
    }
  }
}

/*
Design a class Employee such that:
employee ID is read-only
salary cannot be negative
bonus can be added only if salary > 30,000
*/

class Employee {
  final int _id;
  double _salary;
  int get id => _id;
  double get salary => _salary;
  Employee(this._id, this._salary);

  set setSalary(double salary) {
    if (salary < 0) {
      print("Salary Can't Be Negative");
    } else {
      _salary = salary;
    }
  }

  void bonus(double bonus) {
    if (_salary < 30000) {
      print(
        "SORRY, You Can't Get Bonus Because Your Salary $_salary Is Less Than 30,000.",
      );
    } else {
      _salary += bonus;
      print("Bonus of $bonus added. New salary: $_salary");
    }
  }
}
