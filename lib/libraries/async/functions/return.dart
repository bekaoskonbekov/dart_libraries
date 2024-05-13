void main(List<String> args) {
  var res = getEvenNumber(1, 10);
  print(res);
  print(max());
  print(sumList([10, 12, 8]));
  print(reversString('hello'));
}

List getEvenNumber(int start, int end) {
  var evenNumber = [];
  for (var i = start; i <= end; i++) {
    if (i % 2 == 0) {
      evenNumber.add(i);
    }
  }
  return evenNumber;
}

int max() {
  int a = 5;
  int b = 2;
  return a > b ? a : b;
}

int sumList(List<int> numbers) {
  int sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum;
}

String reversString(String str) {
  return str.split('').join('').toUpperCase();
}
