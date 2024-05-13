void main(List<String> args) {
  print('start');
  var future = Future.sync(() {
    return 42;
  });
  future.then(
    (value) {
      Future.delayed(
          Duration(seconds: 4), () => print('Value returned $value'));
    },
  );
  print('end');
}
