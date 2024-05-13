void main(List<String> args) async {
  var numbers = Stream.fromIterable([1, 2, 3, 4, 5]);
  var res = await numbers.length;
  var res2 =await numbers.first;
  print(res2);
  print(res);
  // var sum = Stream.periodic(Duration(seconds: 1), (index) => index);
  // var lang = await sum.length;
  // print(lang);
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var length = await stream.map((event) => event * 2).length;
  print(length);
  var error = Stream.error('Stream error');
  try {
    int length = await error.length;
    print('Length of the stream: $length');
  } catch (error) {
    print('Error occurred: $error');
  }
}
