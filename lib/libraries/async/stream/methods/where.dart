void main(List<String> args) {
  var stream = Stream.periodic(Duration(seconds: 1), (index) => index).take(6);
  var res = stream.where((event) => event.isEven);
  res.listen((event) {
    print(event);
  });

  Stream<String> words =
      Stream.fromIterable(['apple', 'banana', 'cherry', 'date', 'elderberry','alcha']);

  Stream<String> filteredStream = words.where((element) => element.length>5);

  filteredStream.listen((data) {
    print('Filtered string: $data');
  });
}
