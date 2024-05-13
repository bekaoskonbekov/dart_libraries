void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  var sum = numbers.every((element) => element % 2 == 0);
  print(sum);

  Set<String> words = {"A", 'B', "C", "D"};
  var res = words.every((element) => element.length < 1);
  print(res);

}
