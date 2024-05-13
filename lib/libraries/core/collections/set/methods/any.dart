void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4};
  bool res = numbers.any((element) => element > 5);
  print(res);

  Set<String> words = {"bus", "car", 'bmw'};
  bool result = words.any((element) => element.contains("c"));
  print(result);

  var emptySet = <int>{};
  bool hasElement = emptySet.any((element) => true);
  print(hasElement);
}
