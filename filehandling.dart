import 'dart:io';

void main() {
  // creating a file object
  File cc = File("text.txt");
  // read file
  String content = cc.readAsStringSync();
  // print file
  print(content);
  //write file
  cc.writeAsStringSync("Rajan Poudel");
  print("File Written");
  //delete file
  cc.deleteSync();
  print("File Delete");
}
