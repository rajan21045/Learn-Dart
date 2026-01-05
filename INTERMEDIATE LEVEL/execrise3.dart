void main() {
  //1. List Practice Questions (Ordered Collection)
  //Basic

  //1. Create a List<int> with 10 numbers and print all elements.
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(num);

  //2. Add an element to a list and remove an element by value.
  num.add(12);
  num.addAll([3, 1]);
  num.removeAt(0);
  num.remove(3);
  print(num);

  // 3. Find the length of a list without using a hard-coded number.
  print("The Length of List Named \"num\" Is ${num.length}");

  // 4. Access the first, last, and middle element of a list.
  print("The First Element of List Named \"num\" Is ${num.first}");
  print("The Last Element of List Named \"num\" Is ${num.last}");
  int middleIndex = num.length ~/ 2;
  print("The Last Element of List Named \"num\" Is ${num[middleIndex]}");

  //5. Check whether a given element exists in a list.
  int check = 12;
  bool exits = num.contains(check);
  print("Do Element $check Exits: $exits");

  //Intermediate
  //6. Sort a list of integers in ascending and descending order.
  num.sort();
  print("The Sorted Or Ascending List Is $num");
  List<int> num1 = num.reversed
      .toList(); //// reversed returns an Iterable, so use .toList() to get a new List
  print("The Reverse Or Descending List Is $num1");

  //7. Reverse a list without using the built-in reversed method.
  List<int> reversedNumber = [];
  for (int i = num.length - 1; i >= 0; i--) {
    reversedNumber.add(num[i]);
  }
  print(
    "The Reversed List Without Using The Built-In Reversed Method Is $reversedNumber",
  );

  //8. Find the largest and smallest element in a list.
  int smallest = num.first;
  int largest = num.last;
  print("The Smallest Element In A List Is $smallest");
  print("The Largest Element In A List Is $largest");

  if (num.isEmpty) {
    print('The list is empty.');
    return;
  }
  int smallest1 = num[0];
  int largest1 = num[0];
  for (int i = 1; i < num.length; i++) {
    if (num[i] < smallest1) {
      smallest1 = num[i];
    }
    if (num[i] > largest1) {
      largest1 = num[i];
    }
  }

  print('Smallest element: $smallest1'); // Output: Smallest element: 1
  print('Largest element: $largest1'); // Output: Largest element: 12

  //9. Remove duplicate elements from a list.
  List<int> numbers = [1, 2, 2, 3, 4, 5, 6, 4];
  List<int> copyNumber = numbers.toSet().toList();
  print("The List With Duplicate Element Is $numbers");
  print("The List Without Duplicate Element Is $copyNumber");


   List<int> numbers1 = [5, 6, 7];

  List<String> stringList = [];

  for (int n in numbers1) {
    stringList.add(n.toString());
  }

  print("The String List of Int List Is $stringList");
}
