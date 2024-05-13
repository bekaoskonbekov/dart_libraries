void main(List<String> args) {
  List<String> words = ['apple', 'orange', 'banana'];
  words.insert(1, 'mongo');
  print(words);
  words.insertAll(0, ['cherry', 'potato']);
  print(words);
}
