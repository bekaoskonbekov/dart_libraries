void main(List<String> args) {
  var future1 = Future.delayed(Duration(seconds: 2), () => 21);
  var future2 = Future.delayed(Duration(seconds: 3), () => 22);
  Future.any([future1, future2]).then((value) {
    print(value);
  }).catchError((error) => print(error));
}
