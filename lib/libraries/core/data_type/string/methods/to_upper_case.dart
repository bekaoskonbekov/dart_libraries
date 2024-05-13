// void main(List<String> args) {
//   String str = 'hello world';
//   String tr2 = str.toUpperCase();
//   print(tr2);
// }
// void main(List<String> args) {
//   String str1 = 'hello';
//   String str2 = 'world';
//   String res = '$str1 $str2';
//   String combi = res.toUpperCase();
//   print(combi);
//   print("${res.toUpperCase()}");
// }
import 'dart:io';

void main(List<String> args) {
  stdout.write('hello world: ');
  String input = stdin.readLineSync()!;
  String str = input.toUpperCase();
  print("UpperCase Input $str");
}
