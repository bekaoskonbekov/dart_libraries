import 'dart:async';

void main() {
  var controller = StreamController<int>();

  controller.onPause = () {
    print('Stream subscription paused');
  };

  controller.stream.listen(
    (data) {
      print('Received data: $data');
    },
    onDone: () {
      print('Stream is closed');
    },
  );

  controller.sink.add(1);

  // Pause the stream subscription
  controller.onPause;

  controller.sink.add(2);

  controller.close();
}
