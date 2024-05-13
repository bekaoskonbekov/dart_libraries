void main(List<String> args) async {
  var list = List.generate(2, (index) => index++);
  await Future.forEach(list, (element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  });

  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };
  ages.forEach((key, value) async {
    await Future.delayed(Duration(seconds: 4));
    print("$key: $value");
  });

  var words = ['apple', 'orange', 'banana'];
  await Future.forEach(words, (element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  });

  var names = ['Alice', 'Bob', 'Charlie'];
  var nameLength = names.map((e) => e.length);
  await Future.forEach(nameLength, (element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  });

  int count = 0;
  list.forEach((element) {
    count += element;
  });
  print(count);
}
