void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  Iterator<int> number = numbers.iterator;
  while (number.moveNext()) {
     int numberCur = number.current;
  print(numberCur); 
  }
  List<String> fruits = ['apple', 'banana', 'orange', 'mango'];
  Iterator<String> iterator = fruits.iterator;
  while (iterator.moveNext()) {
    String fruit = iterator.current.toUpperCase();
    print("Current fruit: $fruit");
  }
}
