// void main(List<String> args) {
//   List<int> numbers = [1, 2, 3, 4, 5, 6];
//   bool number = numbers.any((element) => element % 2 == 0);
//   print(number);
// }

void main(List<String> args) {
  List<String> words = ['apple', 'banana', 'orange', 'mango'];
  bool word = words.any((element) => element.contains('na'));
  print(word);
}
