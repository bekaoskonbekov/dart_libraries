void main(List<String> args) async {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  int sum = 2;
  await stream.forEach((element) {
    sum *= element;
  });
  print(sum);
  var per = Stream.periodic(Duration.zero, (x) => x).take(6);
  await per.forEach((element) {
    if (element.isEven) {
      print(element);
    }
  });

  var list = List.generate(9, (index) => 'Index: $index');
  for (var element in list) {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  }
}
