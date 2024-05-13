import 'dart:io';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  readFile().then((value) => print("End"));
  fetchUserData()
      .then((value) {
        return processUserData();
      })
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print('End Completed'));
  fetchData().then((value) => print('Fetching Data'));
  calculate(19, 8).then((value) => print('Sum: $value'));
}

Future readFile() async {
  var readFile = File('example.txt');
  await readFile.writeAsString('Hello Dart');
  var file = await readFile.readAsString();
  print('File content: $file');
}

Future fetchUserData() async {
  await Future.delayed(Duration(seconds: 1), () => 1);
  print("User data fetched");
}

Future processUserData() async {
  await Future.delayed(Duration(seconds: 2), () => 2);
  print('Process user Data');
}

Future fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  print('Fetch DAta: ${response.body}');
}

Future<int> calculate(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  return a + b;
}
