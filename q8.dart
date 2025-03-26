import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\nTo-Do List:");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option: ");
    
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Enter a task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");

    } else if (choice == '2') {
      stdout.write("Enter task number to remove: ");
      int index = int.parse(stdin.readLineSync()!) - 1;
      if (index >= 0 && index < tasks.length) {
        print("Removed: ${tasks.removeAt(index)}");
      } else {
        print("Invalid task number!");
      }

    } else if (choice == '3') {
      print("\nYour To-Do List:");
      if (tasks.isEmpty) {
        print("No tasks found!");
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }

    } else if (choice == '4') {
      print("Exiting...");
      break;

    } else {
      print("Invalid choice! Try again.");
    }
  }
}
