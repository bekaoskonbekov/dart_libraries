void main(List<String> args) {
  var words = {'apple': 5, 'banana': 3, 'orange': 7};
  words.update('apple', (value) => value+2);
  print(words);
}
