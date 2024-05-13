void main(List<String> args) {
  var words = {'orange': 7, 'grape': 4};
  var newEntries = [MapEntry('apple', 3), MapEntry('banana', 3)];
  words.addEntries(newEntries);
  print(words);
}
