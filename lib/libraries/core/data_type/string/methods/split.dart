void main(List<String> args) {
  String str = "Hello World";
  final res = str.split(' ');
  print(res);

  String data = "    apple , banana , grape , orange , kiwi ";
  final fruits = data.split(',').map((e) => e.trim()).toList();
  print(fruits);
}
