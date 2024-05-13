void main(List<String> args) {
  Set<String> words = {'a', 'b', 'c', 'd'};
  var res = words.map((e) => e.length);
  print(res);

  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  var sum = numbers.map((e) => e + 2);
  print(sum);

  var mySet = {1, 2, 3, 4, 5};

  var mappedSet = mySet.map((element) {
    if (element.isOdd) {
      return 'Odd';
    } else {
      return 'Even';
    }
  });
  print(mappedSet);
}
