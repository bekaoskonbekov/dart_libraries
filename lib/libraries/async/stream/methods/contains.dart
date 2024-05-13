void main(List<String> args) async {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var res = await stream.contains(3);
  print(res);

   await stream.drain();
  print('All elements drained from the stream.');
}
