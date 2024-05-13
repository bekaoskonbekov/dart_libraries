// void main(List<String> args) {
//   List<List<int>> numbers = [
//     [1, 2, 3],
//     [4, 5, 6],
//     [7, 8, 9]
//   ];
//   var expan = numbers.expand((element) => element).toList();
//   print(expan);

//   List<int> numbers2 = [1, 2, 3, 4, 5, 6];
//   var dissipate = numbers2.expand((element) => [element, element]).toList();
//   print(dissipate);
// }

// void main(List<String> args) {
//   List<List<String>> str = [
//     ['apple', 'banana', 'cherry'],
//     ['date', 'fig'],
//     ['grape', 'kiwi', 'lemon']
//   ];

//   List<String> flattedList = str.expand((element) => element).toList();
//   print(flattedList);
// }

// void main() {
//   List<int> list1 = [1, 2, 3];
//   List<int> list2 = [4, 5,6];

//   // Generate combinations of elements from list1 and list2
//   List<List<int>> combinations = list1.expand((x) => list2.map((y) => [x, y])).toList();

//   print("Combinations: $combinations");
// }
void main() {
  String text = "hello";

  // Split the string into individual characters
  List<String> characters = text.split(',').expand((char) => [char]).toList();

  print("Characters: $characters");
}
