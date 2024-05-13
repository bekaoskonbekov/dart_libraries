// void main(List<String> args) {
//   String str1 = "Hello World";
//   bool res = str1.startsWith("Hello");
//   print(res);
// }

// import 'dart:io';

// void main(List<String> args) {
//   stdout.write('Enter a string:');
//   String input = stdin.readLineSync()!;
//   bool res = input.startsWith("A");
//   print(res);
// }

// void main(List<String> args) {
//   String str = "HEllo World Belke";
//   RegExp regex = RegExp(r'^[A-Z]');
//   bool input = str.startsWith(regex);
//   print(input);
// }

void main(List<String> args) {
  String str = "Hello World";
  List prefixes = ["World", "Hello ", "Hi"];
  for (var element in prefixes) {
    print("Start with $element : ${str.startsWith(element)}");
    print('Belek');
  }
}
