void main(List<String> args) async {
  var numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  int sum = await numbers.fold(0, (previous, element) => element + previous);
  print(sum);
  var words = Stream.fromIterable(['Hello', ' ', 'World', '!!!']);
  String res = await words.fold('', (previous, element) => previous + element);
  print(res);

  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 9, 9]);
  var sum2 =await stream.fold(
      0, (previous, element) => previous > element ? previous : element);
  print(sum2);
}
