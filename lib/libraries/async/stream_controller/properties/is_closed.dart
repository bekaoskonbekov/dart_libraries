import 'dart:async';

void main() {
  var controller = StreamController<int>();

  print('Before closing: ${controller.isClosed}');

  controller.stream.listen(
    (data) {
      print('Received data: $data');
    },
    onDone: () {
      print('Stream is closed');
    },
  );

  controller.close();

  print('After closing: ${controller.isClosed}');
}
