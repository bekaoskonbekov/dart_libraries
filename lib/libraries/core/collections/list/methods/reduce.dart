void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int sum = numbers.reduce((value, element) => value * element);
  print(sum);
  List<String> words = ['Hello', 'world', 'Dart'];
  String concatenatedString = words.reduce((previousValue, element) => previousValue + ' ' + element);
  print("Concatenated string: $concatenatedString");
   List<String> word = ['apple', 'banana', 'orange'];
  String concatenatedStrin = word.reduce((value, element) => '$value, $element');
  print("Concatenated string with commas: $concatenatedStrin");
List<List<int>> nestedLists = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8]
  ];
  List<int> flattenedList = nestedLists.reduce((value, element) => value + element);
  print("Flattened list: $flattenedList");
}
