void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var res = numbers.take(5);
  print(res);
  var res2 = numbers.takeWhile((value) => value.isEven);
  print(res2);
  List<String> words = ['apple', 'banana', 'orange', 'grape', 'kiwi'];
  Iterable<String> takenWords = words.take(2);
  print("Taken words: $takenWords");
  List<String> fruits = ['apple', 'banana', 'orange', 'grape', 'kiwi'];
  Iterable<String> takenfruits = words.takeWhile((word) => word.length < 6);
  print("Taken words: $takenfruits");
}
       