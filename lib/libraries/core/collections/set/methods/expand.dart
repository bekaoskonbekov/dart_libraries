void main(List<String> args) {
  Set<Set<int>> numbers = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
  };
  var sum = numbers.expand((element) => element).toList();
  print(sum);
  Set<Set<String>> str = {
    {'apple', 'banana', 'cherry'},
    {'date', 'fig'},
    {'grape', 'kiwi', 'lemon'}
  };
  var res = str.expand((element) => element);
  print(res);
}
