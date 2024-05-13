void main(List<String> args) {
  Set<String> words = {'a', 'b', 'c', 'd'};
  var res = words.fold('', (previousValue, element) => previousValue + element);
  print(res);

  Set<int> numbers = {1, 2, 3, 4, 5};
  int sum =
      numbers.fold(1, (previousValue, element) => previousValue * element);
  print(sum);

  var numberSet = {10, 20, 30, 15, 25};
  var maxElement = numberSet.fold(
      0,
      (previousValue, element) =>
          element > previousValue ? element : previousValue);
  print(maxElement);

  var stringSet = {'apple', 'banana', 'orange'};
  var joinedString = stringSet.fold(
      '',
      (previousValue, element) =>
          previousValue.isEmpty ? element : '$previousValue, $element');
  print(joinedString);
  print(calculateFactorial(5)); // Output: 120 (5!)
  
}

int calculateFactorial(int n) {
  return {1, ...List<int>.generate(n, (index) => index + 1)}
      .fold(1, (prev, elem) => prev * elem);
}
