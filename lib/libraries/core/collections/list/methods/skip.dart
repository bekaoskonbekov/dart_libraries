void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  Iterable<int> skippedNumbers = numbers.skip(3);
  print("Skipped numbers: $skippedNumbers");

  List<String> words = ['apple', 'banana', 'cherry', 'kiwi', 'mongo'];
  var res = words.skip(2);
  print(res);

  var res2 = numbers.skipWhile((value) => value.isEven).toList();
  print(res2);
}
