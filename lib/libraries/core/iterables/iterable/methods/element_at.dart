void main(List<String> args) {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6];
  var sum = numbers.elementAt(3);
  print(sum);
  Iterable<String> words = {'apple', 'banana', 'orange'};
  var res = words.elementAt(2);
  print(res);
}
