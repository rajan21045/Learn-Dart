// Defination of operators in Dart
// an operator is the special symbol that tells the computer to perform specific arithmetice or logical manipulations.
// It contructs an expression & operates on data or variables.
// There are Unary Operators, Binary Operators, Ternary Operators based on the number of operands.
// Based on the functionality, there are Arithmetic, Assignment, Comparison, Logical, Bitwise operators etc.

void main() {
  //1.  Arithmetic Operators
  int a = 10, b = 5, c = 7;
  print("Arithmetic Operators:");

  print("Addition");
  print(a + b + c);
  // Output: 22

  print("Subtraction");
  print(a - b);
  // Output: 5

  print("Multiplication");
  print(a * b);
  // Output: 50

  print("Division");
  print(a / b);
  // Output: 2.0

  print("Integer Division");
  print(a ~/ b);
  // Output: 2

  print("Modulus");
  print(a % b);
  // Output: 0

  // 2. Relational Operators
  // Compare values or boolean expressions.
  // Always return boolean values (true or false).
  print("\n");
  print("\nRelational Operators:");
  print("10 > 5: ${10 > 5}"); // true
  print("10 > 10: ${10 > 10}"); // false
  print("10 >= 10: ${10 >= 10}"); // true
  print("10 < 5: ${10 < 5}"); // false
  print("10 < 50 : ${10 < 50}"); // true
  print("10 == 10: ${10 == 10}"); // true
  print("10 == 5 : ${10 == 5}"); // false
  print("10 != 5 : ${10 != 5}"); // true
  print("10 != 10 : ${10 != 10}"); // false

  // 3. Logical Operators
  print("\n");
  // Join two or more conditions.
  // Allows to build complex conditions.
  print("Logical Operators:");
  var aa = 10 > 5 && 20 < 50;
  var bb = 10 > 50 || 5 < 10;
  var cc = 100 > 200 && 50 < 55;

  var x = true;
  var y = !x;

  print("aa: $aa"); // true
  print("bb: $bb"); // true
  print("cc: $cc"); // false
  print("xx: $x"); // true
  print("yy: $y"); // false

  // 4. Assignment Operators
  print("\n");
  //Assign values on right side to variable on left side.
  print("Assignment Operators:");
  int n = 12;
  print("n: $n");
  int m = 33;
  print("m: $m");
  n += 2;
  print("n after n+=2: $n");
  m -= 2;
  print("m after m-=2: $m");
  n *= 2;
  print("n after n*=2: $n");
  m ~/= 3;
  print("m after m~/=3: $m");
  m %= 4;
  print("m after m%=4: $m");

  // 5. Increment and Decrement Operators
  print("\n");
  print("Increment and Decrement Operators:");
  // Increment Operator (++)
  // Increases the value of a variable by 1.
  // Can be used in two forms: Prefix (++var) and Postfix (var++).
  // Decrement Operator (--)
  // Decreases the value of a variable by 1.
  // Can be used in two forms: Prefix (--var) and Postfix (var--).

  int p = 5;
  int q = p++; // Postfix increment
  // q is assigned the value of p (5), then p is incremented to 6
  print("p after p++: $p"); // 6
  print("q assigned p++ value: $q"); // 5
  int r = ++p; // Prefix increment
  // p is incremented to 7, then r is assigned the value of p (7)
  print("p after ++p: $p"); // 7
  print("r assigned ++p value: $r"); // 7

  // 6. Bitwise Operators
  print("\n");
  print("Bitwise Operators:");
  // Operate on each bits of  values.
  // symbols and their meanings:
  // &  : AND
  // |  : OR
  // ^  : XOR
  // ~  : Ones Complement
  // << : Left Shift
  // >> : Right Shift
  int d = 10;
  int e = 12;
  int f = d & e; // AND
  print("d & e: $f"); // 8
  // 1010 & 1100 = 1000
  //   8
  int g = d | e; // OR
  print("d | e: $g"); // 14
  // 1010 | 1100 = 1110
  //   14

  int h = d ^ e; // XOR
  print("d ^ e: $h"); // 6
  // 1010 ^ 1100 = 0110
  //   6
  int i = d << 2; // Left Shift
  print("d << 2: $i"); // 40
  // 1010 << 2 = 101000
  int j = e >> 2; // Right Shift
  print("e >> 2: $j"); // 3

  // 7. Conditional (Ternary) Operator
  print("\n");
  print("Conditional (Ternary) Operator:");
  // combination of two symbols: ? and :
  // Decision making operator
  // it is also known as Ternary operator because it works with three operands.
  // syntax:
  // variable = (condition) ? expression1 : expression2
  int age;
  age = (21 > 18) ? 21 : 10;
  print("Age Is: $age"); // 21
  // If the condition is true, age is assigned 21; otherwise, it would be assigned 10.

  // 8. Type Test Operators
  print("\n");
  print("Type Test Operators:");
  // Used to check the type of a variable or object.
  // symbols and their meanings:
  // is     : Returns true if the object is of the specified type.
  // is!    : Returns true if the object is not of the specified type.
  // as     : Used for typecasting.

// 8. Type Test Operators
print("\n");
print("Type Test Operators:");

var value = 100;
print("value is int: ${value is int}"); // true
print("value is! String: ${value is! String}"); // true

var str = "Hello, Dart!";
print("str is! String: ${str is! String}"); // false
print("str is String: ${str is String}"); // true

double mm = value.toDouble();
print("value as double: $mm"); // 100.0

}
