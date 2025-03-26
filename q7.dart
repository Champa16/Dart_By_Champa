import 'dart:io';

void main() {
  File file = File('students.csv');

  // Write to CSV
  file.writeAsStringSync('Name,Age,Address\n');
  file.writeAsStringSync('John,20,New York\n', mode: FileMode.append);
  file.writeAsStringSync('Jane,22,California\n', mode: FileMode.append);
  print("Student data written to students.csv");

  // Read from CSV
  String content = file.readAsStringSync();
  print("Student Data:\n$content");
}
