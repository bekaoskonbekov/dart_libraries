void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5, 6};
  List<int> sum = List.from(numbers);
  print(sum);

  String hello = 'Hello World';
  List<String> result = List.from(hello.toUpperCase().split(' '));
  print(result);

  Set<int> mySet = {3, 1, 4, 1, 5, 9, 2, 6, 5};

  List<int> reus = List.from(mySet.toList()..sort());
  print(reus);
}
