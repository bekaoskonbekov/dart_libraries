void main(List<String> args) async {
  var stream = Stream.periodic(Duration(seconds: 1), (index) => index).take(9);
  var res = stream.map((event) => event);
  res.listen((event) {
    print(event);
  });
  var numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var sum = numbers.map((event) => event % 2 == 0);
  sum.listen((event) {
    print(event);
  });

    Stream<String> stream2 = Stream.fromIterable(['Alice:25', 'Bob:30', 'Charlie:35']);

  Stream<Person> personStream = stream2.map((str) {
    final parts = str.split(':');
    final name = parts[0];
    final age = int.parse(parts[1]);
    return Person(name, age);
  });

  personStream.listen((data) {
    print(data);
  });
}
class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  String toString() => 'Person(name: $name, age: $age)';
}