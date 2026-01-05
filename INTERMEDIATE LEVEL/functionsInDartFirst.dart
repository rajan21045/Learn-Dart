/*
1. What is a Function?

A function is a block of code that:
1. Performs a specific task
2. Runs only when it is called
3. Helps avoid repeating the same code again and again

Example (without function – bad practice)
print("Hello");
print("Hello");
print("Hello");

With a function (good practice)
void sayHello() {
  print("Hello");
}

Calling the function:
sayHello();
sayHello();
sayHello();

2. Basic Structure of a Function
returnType functionName(parameters) {
  // function body
  return value;
}

Parts explained:
1. returnType → what type of value the function returns (int, String, void, etc.)
2. functionName → name of the function
3. parameters → input values (optional)
4. return → output value (optional)
*/

/*
3. Function with No Return Value (void)
Use void when the function does not return anything.
*/
void greet() {
  print("Welcome to Dart!");
}

//4. Function with Return Value
int add(int a, int b) {
  return a + b;
}
/* 5. Function with Parameters

 Parameters allow passing values to a function.
 */

void printName(String name) {
  print("My name is $name");
}

void main() {
  //Calling:
  greet(); //ouutput: Welcome to Dart!

  //Calling:
  int result = add(2, 3);
  print(result); //output: 5

  //Calling:
  printName("Rajan"); //output: Rajan

  /* 6. Arrow Function (Short Syntax)
  For one-line functions, Dart provides arrow (=>) syntax.
    
  Normal function:
  int square(int n) {
    return n * n;
}
*/

  // Arrow function:
  int square(int n) => n * n;
  print(square(5));
}
