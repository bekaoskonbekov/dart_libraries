void main(List<String> args) {
  int a = 10;
  int b = 2;
  int result = a.compareTo(b);
  print(result);
  if (result > 0) {
    print("$a is greater than $b");
  } else if (result < 0) {
    print("$a less than $b");
  } else {
    print("$a is equal to $b");
  }
}
