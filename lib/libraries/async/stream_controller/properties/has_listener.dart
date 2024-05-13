import 'dart:async';

void main() {
  var controller = StreamController<int>();

  print('Before adding listener: ${controller.hasListener}');

  controller.stream.listen(
    (data) {
      print('Received data: $data');
    },
    onDone: () {
      print('Stream is closed');
    },
  );

  print('After adding listener: ${controller.hasListener}');

  controller.close();

  print('After closing: ${controller.hasListener}');
}
