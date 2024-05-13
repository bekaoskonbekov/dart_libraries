void main(List<String> args) async {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  var sum = await stream.firstWhere((element) => element.isEven);
  print(sum);
  var sum2 = await stream.firstWhere((element) => element > 3);
  print(sum2);

  var words = Stream.fromIterable(['apple', 'banana', 'orange', 'armut','bank']);
  var res =await words.firstWhere((element) => element.startsWith('b'));
  print(res);

    Stream<Person> stream2 = Stream.fromIterable([
    Person('Alice', 25),
    Person('Bob', 30),
    Person('Charlie', 20),
    Person('David', 35),
  ]);

  Person firstAdult = await stream2.firstWhere((person) => person.age >= 18 && person.age <= 30);
  print('First adult between 18 and 30: ${firstAdult.name}');
}

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}
