void main() {
  /*
In the Dart programming language, a constructor is a special method that is called when an object of a class is created. Constructors are used to initialize the object's instance variables and perform any other setup that is required before the object is used.

There are several types of constructors in Dart, including default constructors, named constructors, and parameterized constructors.

A default constructor is a constructor that takes no arguments and does not have a name. It is automatically provided by the compiler if you do not define any constructors for your class. 
*/
  //Creating Default Constructor
  var obj = A();
  //The default constructor has no arguments.
  //If you do not define any constructor, Dart provides a default constructor automatically.

  //If you pass arguments to the constructor, you are using a parameterized constructor.
  var obj2 = A1(12, "Rajan");

  //Use a named constructor to implement multiple constructors for a class.
  var obj3 = B.myNamedConstructor(12, "Rajan");
  var objs = B.myNamedConstructor2();
}

class A {
  // Default Constructor
  A() {
    print("This is a Default Constructor");
  }
}

class A1 {
  A1(int age, String name) {
    print("This is a Parameterized Constructor");
    print("Age: $age");
    print("Name: $name");
  }
}

class B {
  B.myNamedConstructor(int age, String name) {
    print("This is a Named Constructor");
    print("Age: $age");
    print("Name: $name");
  }
  B.myNamedConstructor2() {
    print("This is another Named Constructor with no parameters");
  }
}