void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  numbers.remove(3);
  print(numbers);
  numbers.removeAt(2);
  print(numbers);
  numbers.removeLast();
  print(numbers);
  numbers.removeWhere((element) => element >= 6);
  print(numbers);
}
