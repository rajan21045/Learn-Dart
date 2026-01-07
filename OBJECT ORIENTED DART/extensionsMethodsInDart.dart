/*
Basic Syntax
extension ExtensionName on Type {
  // new methods or getters
}
1. ExtensionName: Any valid identifier
2. Type: The class you want to extend
*/

//Simple Example (String)
extension StringExtensions on String {
  void reverePrint() {
    print(this.split('').reversed.join());
  }
}

//Example with int
extension IsEven on int {
  void checkeven() {
    if (this % 2 == 0) {
      print("$this is even");
    } else {
      print("$this is odd");
    }
  }
}

//Example with List
extension ListSum on List<int> {
  int sum() {
    int total = 0;
    for (var num in this) {
      total += num;
    }
    return total;
  }
}

//Extension with Parameters
extension GreetingExtension on String {
  void greet(String greeting) {
    print("$this, $greeting!");
  }
}

// Usage
void main() {
  String name = "Father";
  print("Original String: $name");
  name.reverePrint(); // Output: rehtaF
  print("\n");

  int number = 10;
  print("Original Number: $number");
  number.checkeven(); // Output: 10 is even
  print("\n");

  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.sum(); // Output: 15
  print("Sum of List: ${numbers.sum()}");
  print("\n");

  String user = "Rajan";
  user.greet("Hello"); // Rajan, Hello!
  print("\n");
}
