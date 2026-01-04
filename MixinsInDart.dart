/*
What is a Mixin in Dart?
A mixin is a way to reuse a class’s functionality in multiple class hierarchies without using inheritance.
  1. It allows you to add methods and properties to a class.
  2. It solves the problem of multiple inheritance, which Dart does not support.
  3. You can apply multiple mixins to a single class.
Think of a mixin as a behavior provider, not a full-fledged class.

Why Use Mixins?
Dart allows a class to extend only one superclass:
  class Child extends Parent {}
But what if you want to reuse features from multiple sources?
That is where mixins are used.


Basic Syntax
Defining a Mixin
mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

Using a Mixin
class User with Logger {}
void main() {
  User u = User();
  u.log("User created");
}

Rules of Mixins
1. Mixins cannot have constructors.
2. They can have variables and methods.
3. Use with to apply a mixin.
4. Multiple mixins are applied left to right.
5. Mixins are not instantiated directly.

Common Flutter Use Cases
1. Code reuse across widgets
2. TickerProviderStateMixin for animations
3. Form validation logic
4. Logging and analytics

Example (Flutter):
class MyPage extends State<MyWidget>
    with SingleTickerProviderStateMixin {
}

When Should You Use Mixins?
Use mixins when:
1. You want to share behavior across unrelated classes
2. You do not need object construction
3. You want cleaner, more modular code

Avoid mixins when:
1. A clear parent-child relationship exists
2. You need constructors or deep state management

*/


mixin Logger {
  void log(String Message) {
    print("Log Message: $Message");
  }
}
mixin Validator {
  bool isValidNames(String Name) {
    return Name.isNotEmpty;
  }
}

class Student with Logger, Validator {}

/* 
Using on Keyword (Constraint)
You can restrict a mixin so it can only be used on specific classes.
*/
class Animal{
  void eat(){
    print("Animal is Eating...");
  }
}

mixin Fly on Animal{
  void fly(){
    print("Flying in the Sky...");
  }
}
class Bird extends Animal with Fly{}
//The Fly mixin requires the class to be an Animal.

//Mixin with Properties
mixin Counter {
  int count = 0;

  void increment() {
    count++;
  }
}

class App with Counter {}

void main() {

  Student ss = new Student();
  String name = "Rajan";
  ss.log("Form Loaded");
  print(ss.isValidNames(name));

  Bird bb = new Bird();
  bb.eat();
  bb.fly();

  App a = App();
  a.increment();
  print(a.count); 
}
