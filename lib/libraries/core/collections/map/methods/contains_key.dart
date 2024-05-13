void main(List<String> args) {
  var words = {'apple': 5, 'banana': 3, 'orange': 7};
  var res = words.containsKey('apple');
  var sum = words.containsValue(3);
  print(sum);
  print(res);
}
