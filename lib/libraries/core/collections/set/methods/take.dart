void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  var sum = numbers.take(7);
  print(sum);
  var sum2 = numbers.takeWhile((value) => value < 3);
  print(sum2);
  Set<String> words = {'apple','potato', 'banana', 'orange', 'cherry','do'};
  var res = words.take(3);
  print(res);
  var res2 = words.takeWhile((value) => value.length > 3);
  print(res2);
}
