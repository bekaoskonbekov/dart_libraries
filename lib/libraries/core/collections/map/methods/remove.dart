void main(List<String> args) {
  var words = {'apple': 5, 'banana': 3, 'orange': 7};
  words.remove('apple');
  print(words);
  words.removeWhere((key, value) => value <= 3);
  print(words);
}
