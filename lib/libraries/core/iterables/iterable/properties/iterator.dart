void main(List<String> args) {
  Iterable numbers = [1, 2, 3, 45, 6];
  var sum = numbers.iterator;
  while (sum.moveNext()) {
    print(sum.current);
  }
  
}
