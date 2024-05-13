void main(List<String> args)async {
  var numbers = Stream.fromIterable([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
  var res =await numbers.expand((element) => element);
  res.listen((event) {
    print(event);
  });
}
