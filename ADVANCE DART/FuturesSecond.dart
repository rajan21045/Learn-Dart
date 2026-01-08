void main () async{
  print("Loading...");
  String value = await fetchData();
  print(value);
}


Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hello, User";
  });
}
