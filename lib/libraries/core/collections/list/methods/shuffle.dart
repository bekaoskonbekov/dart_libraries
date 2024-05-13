import 'dart:math';

void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.shuffle();
  print(numbers);
   List<String> words = ['apple', 'banana', 'orange', 'grape', 'kiwi'];
  words.shuffle();
  print("Shuffled list of words: $words");


   List<int> number = [1, 2, 3, 4, 5];
  Random random = Random(42); // Seed with a fixed value for reproducibility
  number.shuffle(random);
  print("Shuffled list using custom random number generator: $numbers");
}
