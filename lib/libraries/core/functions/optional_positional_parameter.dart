// void main(List<String> args) {
//   greet('Bob');
// }

// void greet(String name, [String greeting = 'Hello']) {
//   print("$greeting $name");
// }

void main(List<String> args) {
  printInfo('Alice');
  printInfo('Bob', 45, 'USa');
  printInfo('Peter', 34, 'Kanada');
  printMessage('Hee', 'bbb');
  displayName(name: 'Belke', password: 'bshdy');
  displayDetail('Belek', 23, country: 'USA');
  print(greet('Belek', 33, title: 'true'));
  print(greet2('Belek', 34));
  print(greet2("Peter", 32, ' Box'));
}

void printInfo(String name, [int age = 30, String country = 'unknown']) {
  return print('Name: $name Age: $age Country: $country');
}

void printMessage(String message, [String? suffix]) {
  print(
      'Message: ${message ?? 'No message provided'}${suffix != null ? ', Suffix: $suffix' : ''}');
}

void displayName({required String name, required String password}) {
  print('Name: $name  Pass: $password');
}

void displayDetail(String name, int age, {String country = 'usa'}) {
  print('Name: $name Age: $age');
  if (country != null) {
    print('Country: $country');
  }
}

String greet(String name, int age, {required String title}) {
  return 'Hello $title $name $age';
}

 greet2(String name, int age, [String? title]) {
  if (title != null) {
    return '';
  }
  return 'Hello $title $name $age';
}
