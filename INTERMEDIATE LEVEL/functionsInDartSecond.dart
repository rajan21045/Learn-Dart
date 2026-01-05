void main() {
  // 1. Example of parameterized function
  double mult = multiply(12.4, 11.1);
  print("The Multiplication of 12.4 And 11.1 Is $mult"); // output: 137.64

  double sum = add(10.2, 20.2);
  print("The Sum of 10.2 And 20.2 Is $sum"); // output: 30.4

  // 2. Example of Arrow Function
  int square(int n) => n * n;
  print("The Square of 5 Is ${square(5)}"); // output: 25

  int square2(int m) => m * m;
  print("The Square of 6 Is ${square2(6)}"); // output: 36

  // 3. Example of Optional Parameter Function

  // 3.1 Optional Positional Parameter Function
  eatIceCream("Chocolate");
  eatIceCream("Vanilla", "Sprinkles");
  eatIceCreams("Vanilla");

  // 3.2 Optional Named Parameter Function
  orderPizza(size: "Large", topping: "Cheese");
  orderPizza(size: "Medium");
}

// Function to multiply two numbers
double multiply(double num1, double num2) {
  return num1 * num2;
}

// Function to add two numbers
double add(double a, double b) {
  return a + b;
}

// 3.1 Optional Positional Parameter Function
void eatIceCream(String flavor, [String? topping]) {
  print("Ice cream flavor: $flavor");
  print("Topping: $topping");
}

void eatIceCreams(String flavor, [String topping = "No Topping"]) {
  print("Ice cream flavor: $flavor");
  print("Topping: $topping");
}

// 3.2 Optional Named Parameter Function (UPDATED)
void orderPizza({required String size, String topping = "No Topping"}) {
  print("Size: $size");
  print("Topping: $topping");
}
