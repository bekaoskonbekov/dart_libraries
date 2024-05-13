void main(List<String> args) {
  add(int a, int b) => a + b;
  print(add(10, 30));
  var word = () {
    return print('Hello World');
  };
  word();
  var message = () {
    var name = 'Alice';
    return 'Hello $name';
  };
  print(message());
  var greet = (String name, [String greeting = 'Hello']) {
    return print('$greeting $name');
  };
  greet('Alice');
  greet('Peter', 'HIIII');

  var multipy = (int a, int b) {
    return a * b;
  };
  print(multipy(19, 9));

  var calculate = (int a, double b) {
    if (a.isEven) {
      return a * b;
    } else {
      return a / b;
    }
  };
  print(calculate(9, 6));
  print(calculate(10, 6));
}
