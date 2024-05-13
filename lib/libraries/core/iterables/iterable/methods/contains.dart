void main(List<String> args) {
  Iterable numbers = [1, 2, 3, 4, 5, 6];
  bool sum = numbers.contains(3);
  Iterable words = {'apple', 'banana'};
  bool res = words.contains('apple');
  print(sum);
  print(res);
}
