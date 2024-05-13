void main(List<String> args) async {
  // var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  // stream.listen((event) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print(event);
  // }).onError((error) {
  //   print('Error $error');
  // });
  var numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  numbers.listen(
    (data) {
      if (data == 3) {
        throw Exception('Error processing data: $data');
      }
      print('Data event: $data');
    },
    onError: (error) {
      print('Error event: $error');
      // Handle error here
    },
    onDone: () {
      print('Stream closed');
    },
  );
}
