void main(List<String> args) {
  List<String> words = ['apple', 'banana', 'cherry'];
  String res = words.join('\n').toUpperCase();
  print(res);

  List<int> sum = [1, 2, 3, 4, 5, 6];
  var res2 = sum.join(' ');
  print(res2);

  List<List<int>> sumry = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  String res3 = sumry.expand((element) => element).join('-').toUpperCase();
  print(res3);

    List<int> numbers = [1, 2, 3, 4, 5];

  String sentence = numbers.map((number) => number.toString()).join(' ');
  print("Sentence from numbers: $sentence");
}
