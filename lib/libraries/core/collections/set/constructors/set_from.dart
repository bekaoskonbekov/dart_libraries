void main(List<String> args) {
  List<String> words = ['banana', 'apple', 'orange'];
  var res = Set.from(words.map((e) => e.toUpperCase()));
  print(res);
}
