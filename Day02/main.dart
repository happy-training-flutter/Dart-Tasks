import 'dart:io';

void main() {
    Map<String, String> contacts = {};
    bool running = true;

    print("--- CLI Contact Manager ---");

    while (running) {
        print("\n1. Add Contact | 2. Delete Contact | 3. View List | 4. Exit");
        stdout.write("Choose an option: ");
        String? choice = stdin.readLineSync();

        switch (choice) {
            case '1':
                stdout.write("Enter Name: ");
                String name = stdin.readLineSync() ?? "";
                stdout.write("Enter Number: ");
                String number = stdin.readLineSync() ?? "";

                if (name.isNotEmpty && number.isNotEmpty) {
                    contacts[name] = number;
                    print("Contact added!");
                }
            break;

            case '2':
                stdout.write("Enter Name to delete: ");
                String name = stdin.readLineSync() ?? "";
                if (contacts.containsKey(name)) {
                    contacts.remove(name);
                    print("Contact deleted.");
                } else {
                    print("Name not found.");
                }
            break;

            case '3':
                print("\n--- Contact List ---");
                if (contacts.isEmpty) {
                    print("Your list is empty.");
                } else {
                    contacts.forEach((name, number) {
                    print("$name: $number");
                    });
                }
            break;

            case '4':
                running = false;
                print("Goodbye!");
            break;

            default:
                print("Invalid choice, try again.");
        }
    }
}
