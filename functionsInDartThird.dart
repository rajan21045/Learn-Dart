/*
Positional vs Named Parameters (Dart)

Think of ordering food 
1️. Positional Parameters
“Order matters”

You give things in a fixed order.

🍔 Real-life example
You say:
  “Burger, Coke”

If you say:
  “Coke, Burger” ❌
  That’s wrong order.

*/

  void addNumbers(int a, int b) {
  print(a + b);
}

/*
📌 Important
  1. Order is very important
  2. Cannot skip values
  3. Hard to read when many parameters
*/
void main(){

addNumbers(10, 20); // ✅ correct
addNumbers(20, 10); // ❌ different meaning



orderPizza(size: "Large", topping: "Cheese");
orderPizza(topping: "Cheese", size: "Large"); // ✅ order doesn’t matter
orderPizza(size: "Medium"); // topping is optional
}

/*
2️. Named Parameters
🧠 “Name matters, not order”

You tell what is what using names.
🍕 Real-life example

You say:
  “Size: Large, Topping: Cheese”

or:
  “Topping: Cheese, Size: Large”

Both are ✅ correct.
*/

void orderPizza({required String size, String topping = "No Topping"}) {
  print("Size: $size");
  print("Topping: $topping");
}

/* One-Line Answer
Positional parameters depend on order, whereas named parameters use parameter names and order does not matter. Named parameters improve readability and allow optional and required values. */