import 'dart:async';

void main(List<String> args) {
  var controller1 = StreamController();
  var controller2 = StreamController();
  controller1.stream.listen((event) {
    print(event);
  });
  controller2.stream.listen((event) {
    print(event);
  });
  controller1.addStream(controller2.stream);

  controller2.sink.add(1);
  controller2.sink.add(2);
  controller1.close();
  controller2.close();
}
