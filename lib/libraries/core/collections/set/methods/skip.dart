void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 6, 7};
  var sum = numbers.skip(2);
  print(sum);
  Set<String> words = {'Hello', 'World'};
  var res = words.skip(1);
  print(res);

  Set<int> skipNumbers = {1, 2, 3, 4, 5, 6};
  var sum2 = skipNumbers.skipWhile((value) => value<3);
  print(sum2);
}
