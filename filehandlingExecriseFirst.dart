import 'dart:io';

void main() async {
  /*
  1. Create and Write to a File
  Write a Dart program that:
  Creates a text file named notes.txt
  Writes the text "Learning file handling in Dart" into the file
  Saves the file in the current project directory
*/
  File file = File('notes.txt');
  file.createSync();
  print("File Named \"notes.txt\" Has Been Created Successfully.");
  file.writeAsStringSync("Learning file handling in Dart");
  print(
    "Successfully Entered This \"Learning file handling in Dart\" Inside The File Named \"notes.txt\".",
  );

  /*
  2. Read Data from a File
  Write a Dart program that:
  Reads the contents of notes.txt
  Prints the file content to the console
  Handles the case where the file does not exist
  */
  var content = file.readAsStringSync();
  print("The Content Inside The File Named \"notes.txt\" Is:");
  print(content);

  /*
  3. Append Data to an Existing File
  Write a Dart program that:
  Appends the text "File handling is important." to notes.txt
  Ensures the previous content is not overwritten
  */
  var contents = "File handling is important.";
  file.writeAsStringSync(contents, mode: FileMode.append);
  print(
    "Successfully Written This \"File handling is important.\" To The File Named \"notes.txt\".",
  );

  /*
  4. Count Lines and Words in a File
  Write a Dart program that:
  Reads a text file named data.txt
  Counts and prints:
  Total number of lines
  Total number of words in the file
  */
  // Check if file exists
  if (!await file.exists()) {
    print('File does not exist.');
    return;
  }
  // Read entire file as a string
  String content2 = await file.readAsString();
  List<String> lines = content2.split('\n');
  int lineCount = lines.length;

  // Count words
  List<String> words = content2
      .split(RegExp(r'\s+'))
      .where((w) => w.isNotEmpty)
      .toList();
  int wordCount = words.length;

  print('Total lines: $lineCount');
  print('Total words: $wordCount');

/*
  5. Copy File Content to Another File
  Write a Dart program that:
  Reads content from source.txt
  Copies the content into a new file named backup.txt
  Creates backup.txt if it does not exist
*/
  File sourceFile = File('source.txt');
  File backupFile = File('backup.txt');

  // Check if source file exists
  if (!await sourceFile.exists()) {
    print('Source file does not exist.');
    return;
  }

  // Read content from source file
  String sourceContent = await sourceFile.readAsString();

  // Write content to backup file
  await backupFile.writeAsString(sourceContent);
  print('Content copied to backup.txt successfully.');
}
