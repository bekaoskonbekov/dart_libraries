void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  List<int> result = List.of(numbers);
  print(result);

   List<int> originalList = [1, 2, 3, 4, 5];
  List<double> newList = List.of(originalList.map((e) => e.toDouble()));
  print("New list with doubles: $newList");

  Set<int> numberSet = {1, 2, 3, 4, 5};
  List<int> numberList = List.of(numberSet);
  print("Number list: $numberList");

   String text = "Hello World!";
  List<String> charList = List.of(text.split(' '));
  print("Character list: $charList");
}
