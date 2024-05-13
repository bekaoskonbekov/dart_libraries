void main(List<String> args) async{
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  var sum =await stream.any((element) => element % 2 == 0);
  print(sum);
}
