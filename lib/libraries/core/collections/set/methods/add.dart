void main(List<String> args) {
  Set<String> words = {"car", 'bus', 'fly'};
  words.add('Hello');
  print(words);

  words.addAll(['A', 'B', "C"]);
  print(words);

  Set<int> numbers = {1, 2, 3, 4, 5};
  numbers.add(6);
  print(numbers);
  numbers.addAll([7, 8, 9]);

  print(numbers);
}
