void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  var res = numbers.firstWhere(
    (element) => element % 2 == 0,
    orElse: () => -1,
  );
  print(res);
  List<String> words = ['apple', 'banana', 'orange', 'mango'];
  String res2 = words.firstWhere((element) => element.startsWith('ap'));
  print(res2);
}
