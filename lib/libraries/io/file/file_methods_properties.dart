import 'dart:io';

void main(List<String> args) async {
  var file = File('example.txt');
  var res = await file.create();
  var res2 =await res.writeAsString('Hello World Flutter');
  print(res2);
}
