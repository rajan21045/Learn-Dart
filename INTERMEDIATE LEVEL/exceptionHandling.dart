// ===============================
// Exception Handling in Dart
// ===============================

/*
  An exception is a runtime error that occurs during program execution.
  When an exception occurs, the normal flow of the program is interrupted,
  and the program may terminate abnormally if the exception is not handled.

  To avoid program termination, Dart provides exception handling using:
  - try
  - on
  - catch
  - finally

  All built-in exceptions in Dart extend the Exception class.
*/

void main() {

  // --------------------------------------------------
  // Example 1: Using try–on block
  // --------------------------------------------------

  // A string that does NOT contain a valid integer value
  String geek = "GeeksForGeeks";

  try {
    // Attempting to convert a non-numeric string into an integer
    // This will throw a FormatException
    int result = int.parse(geek);

    // This line will NOT execute because an exception occurs above
    print(result);
  }
  // 'on' is used when we know the exact type of exception
  on FormatException {
    // Handles only FormatException
    print('Error!! \nCan\'t act as input is not an integer.');
  }

  /*
    Output:
    Error!!
    Can't act as input is not an integer.
  */

  // --------------------------------------------------
  // Example 2: Using try–catch block
  // --------------------------------------------------

  // Another non-numeric string
  String name = "Rajan Poudel";

  try {
    // This will again throw a FormatException
    int num = int.parse(name);
    print(num);
  }
  // 'catch' catches ALL types of exceptions
  catch (e) {
    // 'e' stores the exception object
    print(e);
  }

  /*
    Advantage of catch:
    - Useful when the exact exception type is unknown
    - Can log or display the exception message
  */

  // --------------------------------------------------
  // Example 3: Using try–catch–finally block
  // --------------------------------------------------

  int num2 = 45;

  try {
    // Integer division by zero causes an exception
    // ~/ is integer division operator in Dart
    int a = num2 ~/ 0;

    // This line will not execute
    print(a);
  }
  catch (e) {
    // Catches the division by zero exception
    print(e);
  }
  finally {
    /*
      The finally block ALWAYS executes:
      - Whether an exception occurs or not
      - Used for cleanup operations (closing files, releasing resources)
    */
    print("This Is The \"Finally\" Code Part");
  }
}
