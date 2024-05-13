void main(List<String> args) {
  var future = Future.delayed(Duration(seconds: 1), () => 21);
  future.then((value) => print(value));
}
