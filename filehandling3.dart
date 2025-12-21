import 'dart:io';

void main() async {
  final file = File('example.txt');

  try {
    // 1. Asynchronous write/read
    await file.writeAsString('Updated content for 2025');
    String data = await file.readAsString();
    print('File Content: $data');

    // 2. Metadata check within the try block
    if (file.existsSync()) {
      print('Path: ${file.path}');
      print('Size: ${file.lengthSync()} bytes');
    } else {
      print('File does not exist yet.');
    }
  } on FileSystemException catch (e) {
    // Catching specific I/O errors (e.g., permission denied)
    print('File System Error: ${e.message}');
  } catch (e, s) {
    // General fallback for any other unexpected errors
    print('Unexpected error: $e');
    print('Stack trace: $s');
  } finally {
    print('File operation attempt complete.'); // Always runs
  }
}
