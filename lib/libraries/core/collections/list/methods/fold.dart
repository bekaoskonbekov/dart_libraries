void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5];
  int product =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  print(product);
  List<String> words = ['apple', 'mongo', 'cherry', 'banana'];
  String res = words.fold(
      '',
      (previousValue, element) =>
          previousValue.isEmpty ? element : '$previousValue $element');
  var res2 = words.fold('', (val, el) => el.length > val.length ? el : val);
  print(res2);
  print(res);
}
