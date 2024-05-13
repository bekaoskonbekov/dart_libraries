void main(List<String> args) {
  int number = -10;
  var sig = number.sign;
  print(sig);
  if (number > 0) {
    print("$number is positive");
  } else if (number < 0) {
    print("$number is negative");
  } else {
    print("$number is zero");
  }
  if (number == 0) {
    print('$number is zero.');
  } else if (number > 0) {
    print('$number is positive.');
  } else {
    print('$number is negative.');
  }
}
