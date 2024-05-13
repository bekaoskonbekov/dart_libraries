void main(List<String> args) {
  List<int> sum = [1, 2, 3, 4, 5, 6];
  var number = sum.map((e) => e * 2);
  print(number);

  List<String> words = ['apple', 'banana', 'cherry'];
  var word = words.map((e) => e.toUpperCase());
  print(word);
  word.forEach((element) {
    element.toUpperCase();
    print(element);
  });
  var res2 = words.map((e) => e.contains('a')).toList();
  print(res2);
}
