void main(List<String> args) {
  var delayedFuture = Future.delayed(Duration(seconds: 2), () {
    return 42;
  });
  delayedFuture.then((value) => print(value));

  Future.delayed(Duration(seconds: 2), () {
    return 42;
  }).then((value) {
    print('VAlue returned by ythe first future $value');
    return Future.delayed(Duration(seconds: 1), () {
      print("Second futire compated 1 second");
      return value * 2;
    }).then((value) => print("Value returned by the second future $value"));
  });

  Future.delayed(Duration(seconds: 4), () {
    var words =
        List.generate(6, (index) => index).forEach((element) => print(element));
  }).then((value) => print(value)).catchError((error) => print("Error $error"));
   
   
   
   
    print('Start');

  void repeatTask(int count) {
    if (count <= 0) return;
    Future.delayed(Duration(seconds: 1), () {
      print('Task executed, $count left');
      repeatTask(count - 1);
    });
  }

  repeatTask(5);
}
