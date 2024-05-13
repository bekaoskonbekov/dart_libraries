void main(List<String> args) {
  Set<String> words = {'f','af','as', 'c', 'd'};
  var res = words.firstWhere((element) => element.startsWith('a'));
  print(res);
}
