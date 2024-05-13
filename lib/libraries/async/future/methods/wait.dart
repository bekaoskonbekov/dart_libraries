void main(List<String> args) async {
  Future<int> future1 = Future.delayed(Duration(seconds: 2), () => 1);
  Future<int> future2 = Future.delayed(Duration(seconds: 3), () => 2);
  Future<int> future3 = Future.delayed(Duration(seconds: 1), () => 3);

  List<int> results = await Future.wait([future1, future2, future3]);
  await Future.forEach(results, (element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  });

}
