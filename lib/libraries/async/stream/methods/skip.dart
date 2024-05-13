void main(List<String> args) {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var res = stream.skip(3);
  res.listen((event) {
    print(event);
  });

  var words = Stream.fromIterable(['banana', 'apple', 'orange']);
  var sum = words.skip(1);
  sum.listen((event) {
    print(event);
  });
}
