void main(List<String> args) {
  greate(name: 'Bib', greating: 'Hello');
  greet();
  greet(name: "Bob");
  greet(name: 'Alice', greeting: 'Hiiii');
  var generator =()=> DateTime.now().microsecondsSinceEpoch;
  printValue(getValue: generator, count: 3);
}

void greate({required String name, required String greating}) {
  print("$greating $name");
}

void greet({String name = 'Peter', String greeting = 'Hello'}) {
  print("$greeting $name");
}

void printValue({required int Function() getValue, required int count}) {
  for (var i = 0; i < count; i++) {
    print(getValue());
  }
}
