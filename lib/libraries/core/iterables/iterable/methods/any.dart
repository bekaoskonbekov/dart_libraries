void main(List<String> args) {
  Iterable<int> numbers = [1, 2, 3, 4, 5];
  bool sum = numbers.any((element) => element % 2 == 0);
  print(sum);
  Iterable words = {'apple', 'banana', 'orange'};
  bool res = words.any((element) => element);
  print(res);
}
