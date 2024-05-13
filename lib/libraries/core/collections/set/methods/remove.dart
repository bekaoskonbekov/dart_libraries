void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8};
  numbers.remove(2);
  print(numbers);
  numbers.removeAll([4, 6]);
  print(numbers);
  numbers.removeWhere((element) => element.isOdd);
  print(numbers);
}
