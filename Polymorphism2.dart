class Calculator {
  int add(int a, [int b = 0, int c = 0]) {
    return a + b + c;
  }
}

void main() {
  Calculator c = Calculator();
  print(c.add(5));        // 5
  print(c.add(5, 3));     // 8
  print(c.add(5, 3, 2));  // 10
}
