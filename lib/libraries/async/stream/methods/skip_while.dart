void main(List<String> args) {
  // var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  // var sum = stream.skipWhile((element) => element < 4);
  // sum.listen((event) => print(event));

  // var periodic =
  //     Stream.periodic(Duration(seconds: 1), (index) => index).take(9);
  // var res = periodic.skipWhile((element) => element < 3);
  // res.listen((event) {
  //   print(event);
  // });

  var words =
      Stream.fromIterable(['banana', 'apple', 'orange', 'cherry', 'potato']);
  var res2 = words.skipWhile((element) => element.length>5);
  res2.listen((event) {
    print('Fruits: $event');
  });
}
