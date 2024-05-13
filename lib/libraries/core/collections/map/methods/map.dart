void main(List<String> args) {
  var words = {'apple': 5, 'banana': 3, 'orange': 7};
  var res = words.map((key, value) => MapEntry(key.toUpperCase(), value*value));
  print(res);
}
