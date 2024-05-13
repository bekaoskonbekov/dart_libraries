void main(List<String> args) {
  var myMap = {'apple': 5, 'banana': 3, 'orange': 7};
  var res = myMap.keys.toList();
  var sum = myMap.values.toList();
  print(sum);
  print(res);
  myMap.forEach((key, value) {
    print('$key  $value');
  });
}
