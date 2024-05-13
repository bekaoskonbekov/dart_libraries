// void main(List<String> args) {
//   List<String> fruits = ['apple', 'banana', 'orange'];
//   fruits.add('cherry');
//   print(fruits);
//   List<int> numbers = [1, 2, 3, 4, 5, 6];
//   numbers.add(8);
//   print(numbers);
// }

void main(List<String> args) {
  List<String> fruits = ['apple', 'banana', 'cherry'];
  fruits.addAll(['orange', 'potato']);
  print(fruits.map((e) => e.toUpperCase()));
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  numbers.addAll([7, 8]);
  print(numbers);
}
