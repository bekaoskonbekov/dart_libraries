void main(List<String> args) {
  // Map<String, dynamic> words = {'apple': 2, 'orange': 4, 'banana': 6};
  // var res = words.entries;
  // for (var element in res) {
  //   print('Key: ${element.key} Value: ${element.value}');
  // }
  var myMap = {'apple': 5, 'banana': 3, 'orange': 7};

myMap.entries.forEach((entry) {
  print('Key: ${entry.key}, Value: ${entry.value}');
});
}
