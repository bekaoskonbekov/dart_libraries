import 'dart:async';

void main(List<String> args)async {
  var controller = StreamController();
  controller.stream.listen((event) {
    print(event);
  });

 await Future.delayed(Duration(seconds: 1), () => controller.sink.add('Hello'));
 await Future.delayed(Duration(seconds: 2), () => controller.sink.add('World'));
 await Future.delayed(Duration(seconds: 3), () => controller.sink.add('!!!'));
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add('Hello World');
  controller.sink.add({'name': 'John', 'age': 30});
  controller.sink.add({'name': 'Alice', 'age': 25});
  controller.close();
}
