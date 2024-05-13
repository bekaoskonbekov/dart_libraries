void main(List<String> args) {
  List<int> numbers = [1, 2, 4, 3, 5, 6, 9, 8];
  numbers.shuffle();
  numbers.sort();
  print(numbers);

  List<String> fruits = ['c', 'b', 'a', 'g', 'r'];
  fruits.sort();
  print("Sorted fruits: $fruits");
}
