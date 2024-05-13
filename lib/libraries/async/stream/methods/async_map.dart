void main(List<String> args) {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var res = stream.asyncMap((event) async {
    await Future.delayed(Duration(seconds: 1));
    return 'NUmber: $event';
  });
  res.listen((data) {
    print('Processed data: $data');
  });

}
