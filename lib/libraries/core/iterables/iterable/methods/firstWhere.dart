void main(List<String> args) {
  var words = ['apple', 'banana', 'orange'];
  var res = words.firstWhere((element) => element.startsWith('a'));
  print(res);
  var res2 = words.firstWhere((element) => element.length > 5);
  print(res2);

  var numbers = {1, 2, 3, 4, 5, 6};
  int sum = numbers.firstWhere((element) => element % 2 == 0);
  print(sum);
}
