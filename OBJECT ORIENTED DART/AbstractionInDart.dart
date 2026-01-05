// Overriding Abstract Methods
abstract class GG {
  // Abstract methods (must be implemented by subclasses)
  void say();
  void write();
}

// Creating a subclass that implements the abstract methods
class A extends GG {
  // Overriding the abstract method 'say'
  @override
  void say() {
    print("Yo Geeks!");
  }

  // Overriding the abstract method 'write'
  @override
  void write() {
    print("Welcome to GeeksforGeeks");
  }
}

void main() {
  // Creating an instance of the subclass
  A g = A();

  // Calling the implemented methods
  g.say();
  g.write();

  Geek1 g1 = Geek1();
  g1.geek_info();

  Geek2 g2 = Geek2();
  g2.geek_info();
  /*
  Output: 
  Yo Geek!!
  Geeks For Geeks

  Explanation of the above Program: 
  First, we declare an abstract class Gfg and create an abstract method geek_info inside it. After that, we extend the Gfg class to the second class and override the methods say() and write(), which result in their respective output.
      Note: It is not mandatory to override the method when there is only one class extending the abstract class, because override is used to change the pre-defined code and as in the above case, nothing is defined inside the method so the above code will work just fine without override.

  @override increases code readability and avoids errors in big codebases but doesn't give an error if you don't write it as dart implicitly overrides the variable or methods. It just gives a warning now.
  Overriding abstract method of an abstract class in two different classes
  */
}

abstract class GFG {
  void geek_info();
}

class Geek1 extends GFG {
  @override
  void geek_info() {
    print("Geek1 is a good platform");
  }
}

class Geek2 extends GFG {
  @override
  void geek_info() {
    print("Geek2 is a good platform");
  }
}


/*
Additional Information
1. The new Keyword
As per the latest version of Dart, the new keyword is optional and need not be written. Every time you instantiate a class, a new instance is created automatically. 
This makes the code cleaner and less verbose.
2. The @override Annotation
The @override annotation increases code readability and helps avoid errors in large codebases. While Dart implicitly overrides the variables or methods, the @override annotation provides a clear indication of the overridden methods or variables. 
If you don't use the @override annotation, Dart will still override the methods or variables but will give a warning instead of an error.

Conclusion
Abstract classes in Dart serve as a foundation for object-oriented programming by defining common behaviors that subclasses must implement. They enforce a structured approach while allowing for flexibility in how these behaviors are realized. The use of the @override annotation improves code readability and helps prevent errors in larger projects. 
Additionally, the new keyword is now optional, which makes the instantiation of objects more concise. A solid understanding of abstract classes leads to better software design, enhanced reusability, and improved maintainability in Dart applications.
*/