void main(List<String> args) {
  List<String> friuts = ['apple', 'banana', 'orange'];
  var fruitMap = friuts.asMap();
  for (var i = 0; i < fruitMap.length; i++) {
    print(fruitMap[i]);
  }
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  var numberMap = numbers.asMap();
  numberMap.forEach((index, value) {
    if (index % 2 == 0) {
      numbers[index] = value * 2; print(index);
    }
  });
 
}
