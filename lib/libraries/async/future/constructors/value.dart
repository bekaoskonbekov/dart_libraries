void main(List<String> args) {
  var future = Future.value(23);
  future.then((value) => print(value));
}
