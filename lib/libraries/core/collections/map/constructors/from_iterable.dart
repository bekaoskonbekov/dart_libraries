void main(List<String> args) {
  var list = ['apple', ' orange', 'banana'];
  List<int> numbers = [1, 2, 3];
  var res = Map.fromIterable(list ,value: (element) => element.length,);
  print(res);

var words = ['apple', 'banana', 'orange'];
var wordMap = Map.fromIterable(words.where((word) => word.length > 5),
    key: (word) => word.substring(0, 1),
    value: (word) => word.length);
print(wordMap);

var keys = ['apple', 'banana', 'orange'];
var values = [5, 3, 7];

var fruitMap = Map.fromIterables(keys, values);

print(fruitMap);
}
