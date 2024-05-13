void main(List<String> args) {
  Set<String> fruits = {'apple', 'banana', 'cherry'};
  bool res = fruits.contains('apple');
  print(res);

  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  bool sum = numbers.containsAll([1, 9]);
  print(sum);
}
