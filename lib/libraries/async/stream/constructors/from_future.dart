import 'dart:async';

void main(List<String> args) {
  var future = Future.delayed(Duration(seconds: 1), () => 42);
  var stream = Stream.fromFuture(future);
  stream.listen((event) {
    print(event);
  });
  Future<int> words = Future<int>.error(Exception('An error occurred'));

  Stream<int> futureStream = Stream.fromFuture(words);

  futureStream.listen(
    (data) {
      print('Received data: $data');
    },
    onError: (error) {
      print('Error occurred: $error');
    },
    onDone: () {
      print('Stream completed');
    },
  );

  var futures = Future.value('Hello World!!!');
  var futureStreams = Stream.fromFuture(futures).transform(
    StreamTransformer.fromHandlers(
      handleData: (value, sink) {
        sink.add('Value: $value');
      },
    ),
  );

  futureStreams.listen(
    (data) {
      print('Received data: $data');
    },
    onError: (error) {
      print('Error occurred: $error');
    },
    onDone: () {
      print('Stream completed');
    },
  );
}
