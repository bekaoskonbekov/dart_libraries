void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  Iterable<int> sum = numbers.where((element) => element % 2 == 0);
  print(sum);
  List<String> words = ['apple', 'banana', 'orange', 'cherry'];
  Iterable<String> result = words.where((element) => element.length > 5);
  print(result);

  Iterable<String> res = words.where((element) => element.contains('a'));
  print(res);

  List<Map<String, dynamic>> products = [
    {'name': 'Apple', 'price': 2.5},
    {'name': 'Banana', 'price': 1.8},
    {'name': 'Orange', 'price': 3.0},
    {'name': 'Grape', 'price': 2.2},
    {'name': 'Kiwi', 'price': 2.7},
  ];
  Iterable<Map<String, dynamic>> expensiveProducts = products.where((product) => product['price'] > 2.3);
  print("Expensive products: $expensiveProducts");
}
