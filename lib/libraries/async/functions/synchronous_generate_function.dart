import 'dart:math';

void main(List<String> args) {
  // generateEven(10).map((e) => e * 2).forEach((element) {
  //   print(element);
  // });
  // powerOf(2, 7).forEach((element) {
  //   print(element);
  // });
  // generateRandom(5).forEach((element) {
  //   print(element);
  // });

  // alphabetSequence().forEach((element) {
  //   print(element);
  // });
  // muptiplaceOf(10, 5).forEach((element) {
  //   print(element);
  // });
  collatzSequence(5).forEach((element) {
    print(element);
  });
}

Iterable generateEven(int max) sync* {
  for (var i = 0; i <= max; i++) {
    if (i % 2 == 0) {
      yield i;
    }
  }
}

Iterable powerOf(int base, int exponent) sync* {
  int result = 1;
  for (var i = 0; i <= exponent; i++) {
    yield result;
    result *= base;
  }
}

Iterable generateRandom(int count) sync* {
  var random = Random();
  for (var i = 0; i < count; i++) {
    yield random.nextInt(100);
  }
}

Iterable<String> alphabetSequence() sync* {
  for (int i = 'A'.codeUnitAt(0); i <= 'Z'.codeUnitAt(0); i++) {
    yield String.fromCharCode(i);
  }
}

Iterable muptiplaceOf(int number, int limit) sync* {
  for (var i = 0; i <= limit; i++) {
    yield i * number;
  }
}

Iterable<int> collatzSequence(int start) sync* {
  int current = start;
  while (current != 1) {
    yield current;
    if (current % 2 == 0) {
      current ~/= 2;
    } else {
      current = current * 3 + 1;
    }
  }
  yield 1;
}
