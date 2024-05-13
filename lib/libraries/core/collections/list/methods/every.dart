void main(List<String> args) {
  // List<int> numvers = [1, 2, 3, 4, 5, 6];
  // var number = numvers.every((element) => element % 2 == 0);
  // if (number) {
  //    print("All numbers are even.");
  // } else {
  //   print("Not all numbers are even.");
  // }

  List<String> words = ['apple', 'banana', 'orange'];
  bool word = words.every((element) => element.length > 4);
  print(word);

  List<int> numbers = [1, 2, 3, 4, 5, 6];
  bool number = numbers.every((element) => element > 0);
  print(number);
}
