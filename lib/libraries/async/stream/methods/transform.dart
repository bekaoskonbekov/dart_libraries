import 'dart:async';

void main() {
  var words = Stream.fromIterable(['apple', 'banana', 'orange']);

  // var res = words.map((event) => event.toUpperCase());
  // res.listen((event) {
  //   print(event);
  // });
  var res = words.transform(
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data + data);
      },
      handleError: (error, stackTrace, sink) => print(error),
      handleDone: (sink) => print('Exalent work'),
    ),
  );
  res.listen(
    (event) {
      print(event);
    },
    onError: (error) => print('Error: $error'),
    onDone: () => print("Compated work"),
  );
}
