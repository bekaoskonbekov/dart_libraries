void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5};
  int sum = numbers.reduce((value, element) => value + element);
  print(sum);

  Set<String> words = {'a', 'b', 'c', 'd'};
  String res = words.reduce((value, element) => '$value $element');
  print(res);
}
