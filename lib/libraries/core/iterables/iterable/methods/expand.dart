void main(List<String> args) {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6];
  var sum = numbers.expand((element) => [element, element * 2]);
  print(sum);
  var list = ['a', 'b', 'c'];
  var list2 = [1, 2, 3];
  var res = list.expand((element) => list2.map((e) => '$element$e'));
  print(res);
}
