void main(List<String> args) {
  Set<int> numbers = {1, 2, 4, 5, 6, 7};
  Iterable sum = numbers.where((element) => element.isEven);
  print(sum);
  Set<String> words = {'apple', 'potato', 'banana', 'orange', 'cherry', 'do'};
  Iterable res = words.where((element) => element.contains('app'));
  print(res);
}
