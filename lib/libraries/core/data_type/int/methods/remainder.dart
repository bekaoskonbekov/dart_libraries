void main(List<String> args) {
  int x = 10;
  int y = 3;
  int res = x.remainder(y);
  print(res);

  int negativeDividend = -10;
  int negativeDivisor = 3;

  int negativeRemainderResult = negativeDividend.remainder(negativeDivisor);
  print(
      'The remainder of $negativeDividend divided by $negativeDivisor is $negativeRemainderResult');
}
