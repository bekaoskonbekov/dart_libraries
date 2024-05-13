void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5};
  Iterator<int> iter = numbers.iterator;

  while (iter.moveNext()) {
    print(iter.current);
  }

  Set<int> sum = {10, 20, 30};
  for (var element in sum) {
    print(element);
  }
}
