void main(List<String> args) {
   Stream<int> emptyStream = Stream<int>.empty();

  emptyStream.listen(
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