import 'dart:io';
/*
  1. Class in Dart
  A class is a blueprint that defines properties (variables) and methods (functions) that an object will have.
  Syntax
  class ClassName {
  // properties
  // methods
}

2. Object in Dart
An object is an instance of a class. It represents a real-world entity and is used to access class members.
Syntax
ClassName objectName = ClassName();
*/

//3. Simple Example of Class and Object
class Person {
  String name = '';
  int age = 0;
  void display() {
    print("Name Is $name and Age Is $age");
  }
}

void main() {
  stdout.write("\nHello\n");
  print("Enter Name: ");
  String name = stdin.readLineSync()!;
  print("Enter The Age: ");
  int age = int.parse(stdin.readLineSync()!);

  Person obj = Person();
  obj.age = 20;
  obj.name = "Rajan Poudel";
  obj.display();

  Student stu = Student(name, age);
  stu.show();
}
/*
Output
Name Is Rajan Poudel And Age Is 20
*/

/*
  4. Using Constructor in Class
  A constructor is a special method used to initialize objects.

  Default Constructor
  class Person {
    Person() {
      print("Constructor called");
    }
  }

  void main() {
    Person p = Person();
  }


*/
class Student {
  String first_name;
  int age;
  Student(this.first_name, this.age);

  void show() {
    print(first_name);
    print(age);
  }
}
