void main(List<String> args)async {
  var stream = Stream.fromIterable(['H', 'e', 'l', 'l', 'o']);
  String res =await stream.join(' ');
  print(res);
}
