void main(List<String> args) async {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7]);
  int res = await stream.reduce((previous, element) => previous + element);
  print(res);
  var words = Stream.fromIterable(['Hello', ' ', 'World', '!!!']);
  var res2 =await words.reduce((previous, element) => previous + element);
  print(res2);
}
