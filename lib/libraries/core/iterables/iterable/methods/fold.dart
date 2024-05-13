void main(List<String> args) {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6];
  var sum =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  print(sum);
  Iterable<String> words = ['Hello', ' ', 'World', ' ! '];
  var res = words.fold('', (previousValue, element) => previousValue + element);
  print(res);

  var list = [
    [1, 2],
    [3, 4],
    [5, 6],
  ];
  var sum2 = list
      .fold([], (previousValue, element) => previousValue + element).toList();
  print(sum2);

  var numbers2 = List.generate(6, (index) => index +1)
      .fold(1, (previousValue, element) => previousValue * element);
  print(numbers2);
}
