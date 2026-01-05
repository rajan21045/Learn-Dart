void main() {
  // A simple string variable using double quotes
  // 'var' lets Dart automatically detect the data type (String here)
  var name = "Alice";
  print(name); // Prints: Alice
  print("\n"); // Prints a blank line (new line)

  // A string stored using single quotes
  // Dart allows both single ('') and double ("") quotes for strings
  var str = 'Hello, Dart!';
  print(str); // Prints: Hello, Dart!
  print("\n"); // Blank line for spacing

  // Multi-line string using triple single quotes
  // This is useful when the text spans multiple lines
  // Line breaks are preserved exactly as written
  var multiLine = '''This is
  a multi-line
  string.''';
  print(multiLine); // Prints multi-line string
  print("\n"); // Blank line

  // Multi-line string using triple double quotes
  // Works the same as triple single quotes
  // Choice depends on convenience or coding style
  var multiLineDouble = """This is
  a multi-line
  string with double quotes.""";
  print(multiLineDouble); // Prints multi-line string

  // Prints two blank lines for extra spacing
  print("\n\n");

  /*

  Dart provides a rich set of built-in methods and properties for string manipulation. Key operations include concatenation, searching, extracting substrings, and transforming cases, with the understanding that Dart strings are immutable, meaning all manipulation methods return a new string. 
  
  Key Concepts
    1. Immutability: Once a string is created, it cannot be changed. Operations like replaceAll() or substring() return a new string instance.
    2. String Interpolation: A concise way to embed expressions or variables within a string using ${expression} or $variable.
    3. StringBuffer: For performance-critical scenarios involving frequent, successive string modifications (like in a loop), the mutable StringBuffer class should be used for efficiency.
    4. Unicode Support: Dart strings are a sequence of UTF-16 code units. For operations involving user-perceived characters (grapheme clusters, especially emojis), the separate characters package should be used. 
  */

  // String Methods
  // Here are some of the most frequently used methods available in the core String class:
  print("String Methods in Dart:");
  String sample = "Dart Programming";
  // 1. Length
  // Property that returns the number of characters (UTF-16 code units) in the string.
  print(
    "The Length of The String \"$sample\" Using Length Property: ${sample.length}",
  );
  // 2. toLowerCase
  // convert all characters in this string to lowercase
  var name2 = "RAJAN";
  print(
    "The LowerCase of The String \"$name2\" Using toLowerCase() Method Is ${name2.toLowerCase()}",
  );
  // 3. toUpperCase
  // convert all characters in this string to uppercase
  var name3 = "rajan";
  print(
    "The UpperCase of The String \"$name3\" Using toUpperCase() Method Is ${name3.toUpperCase()}",
  );
  // 4. trim()
  // return the string without any leading and trailing whitespace
  var name4 = "   Rajan   ";
  print("The Trimmed String \"$name4\" Using trim() Method Is ${name4.trim()}");
  // 5. compareTo()
  // compare this object to another
  var str1 = "apple";
  var str2 = "banana";
  print(
    "The Comparison of The Strings \"$str1\" and \"$str2\" Using compareTo() Method Is ${str1.compareTo(str2)}",
  );
  // 6. split()
  // split the string at the specified separator and return a list of substrings
  var str3 = "Dart is fun";
  print(
    "The Split of The String \"$str3\" Using split() Method Is ${str3.split(" ")}",
  );
  var src = "This Is A String";
  print(
    "The Split of The String \"$src\" Using split() Method Is ${src.split("s")}",
  );
  // 7. substring()
  // return the substring from start index to end index
  var str4 = "Hello, Dart!";
  print(
    "The Substring of The String \"$str4\" from index 7 to 11 Using substring() Method Is ${str4.substring(7, 11)}",
  );
  var str5 = "";
  for (int i = str4.length - 1; i >= 0; i--) {
    str5 += str4.substring(i, i + 1);
  }
  print("The Reversed String of \"$str4\" Is: $str5");

  // 8. startsWith()
  // Checks if the string starts with a specified pattern (returns a boolean).
  print(
    "The Starts With of The String \"$str4\" Using startsWith() Method Is ${str4.startsWith("H")}",
  );

  // 9. endsWith()
  // Checks if the string ends with a specified pattern (returns a boolean).
  print(
    "The Ends With of The String \"$str4\" Using endsWith() Method Is ${str4.endsWith("!")}",
  );

  // 10. indexOf()
  // Returns the index of the first occurrence of a substring, or -1 if not found.
  print("hello".indexOf("lo")); // Output: 3

  // 11. replaceAll()
  // Replaces all occurrences of a pattern with a new string.
  print("milk milk".replaceAll("milk", "water")); // Output: water water

  // 12. contains()
  // Checks if the string contains a specified substring (returns a boolean).
  print("Dart".contains("art")); // Output: true
}
