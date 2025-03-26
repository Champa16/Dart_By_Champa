import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('John Doe');
  print("Name written to hello.txt");
}
