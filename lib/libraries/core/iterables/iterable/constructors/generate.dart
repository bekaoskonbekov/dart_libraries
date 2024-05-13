void main(List<String> args) {
  var numbers = Iterable.generate(5, (index) => index + 1)
      .toList()
      .where((element) => element % 2 == 0)
      .map((e) => e * 3);
  print(numbers);
}
