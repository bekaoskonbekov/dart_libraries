void main(List<String> args) {
  Iterable<int> numbers = { 2,  4,  6, };
  var sum = numbers.every((element) => element % 2 == 0);
  print(sum);
  Iterable<String> words = ['apple', 'banana', 'orange'];
  var res = words.every((element) => element.length > 5);
  print(res);
}
