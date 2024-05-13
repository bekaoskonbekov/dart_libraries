import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';

void main(List<String> args) async {
  // generateNumber(4).listen((event) {
  //   print(event);
  // });
  // generateRandom(Duration(seconds: 1)).listen((event) {
  //   print(event);
  // });
  // generateIncrement(4, 5).listen((event) {
  //   print(event);
  // });
  // fetchData().listen((event) {
  //   print(event);
  // }, onDone: () => print('REsponse completed'));

  // generateDate(Duration(seconds: 2)).listen((event) {
  //   print(event);
  // });
  // userInput().listen((event) {
  //   print('User: $event');
  // });
  // File file = File('example.txt');
  // readFile(file).listen((event) {
  //   print(event);
  // });

  //  final database = await openDatabase('example.db');
  //   queryDatabase(database, 'SELECT * FROM table').listen((results) {
  //       print(results);
  //   });

  // var numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  // var res = await sumStream(numbers);
  // print(res);
  countStream(10).listen((event) {
    print(event);
  });
}

Stream generateNumber(int count) async* {
  for (var i = 0; i < count; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream generateRandom(Duration interval) async* {
  var random = Random();
  while (true) {
    yield random.nextInt(10);
    await Future.delayed(interval);
  }
}

Stream generateIncrement(int start, int end) async* {
  int value = start;
  while (true) {
    yield start;
    value += end;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream fetchData() async* {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  if (response.statusCode == 200) {
    yield response.body;
  } else {
    throw Exception('Failed to fetch data');
  }
}

Stream generateDate(Duration interval) async* {
  while (true) {
    yield DateTime.now();
    await Future.delayed(interval);
  }
}

Stream<String> userInput() {
  final controller = StreamController<String>();
  stdin.transform(utf8.decoder).transform(const LineSplitter()).listen((line) {
    controller.add(line);
  });
  return controller.stream;
}

Stream readFile(File file) {
  return file.openRead().transform(utf8.decoder).transform(LineSplitter());
}

Stream<List<Map<String, dynamic>>> queryDatabase(
    Database database, String sql) {
  final controller = StreamController<List<Map<String, dynamic>>>();

  database.query(sql).then((results) {
    controller.add(results);
    controller.close();
  });

  return controller.stream;
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  String name = 'Peter';
  for (int i = 1; i <= to; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 6) {
      print(name);
      throw 'Null';
    } else {
      yield i;
    }
  }
}
