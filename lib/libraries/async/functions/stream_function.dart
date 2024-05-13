import 'dart:async';
import 'dart:math';

void main(List<String> args) {
  // generateNumber().listen((event) {
  //   print(event);
  // });
  // evenNumber().listen((event) {
  //   print(event);
  // });
  // randomNumber(5).listen((event) {
  //   print(event);
  // });
  generateTimer(1, 5).listen((event) {
    print(event);
  });
}

Stream generateNumber() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

Stream evenNumber() async* {
  for (var i = 0; i <= 10; i += 2) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream randomNumber(int count) async* {
  var random = Random();
  for (var i = 0; i < count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextInt(100);
  }
}

Stream generateTimer(int interval, int count) {
  var controller = StreamController();
  var counter = 0;

  void tick(Timer timer) {
    controller.add(counter++);
    if (counter == count) {
      timer.cancel();
      controller.close();
    }
  }

  Timer.periodic(Duration(seconds: interval), tick);
  return controller.stream;
}
