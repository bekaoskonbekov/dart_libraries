// void main(List<String> args) {
//   // List<int> numbers = [1, 2, 3, 4, 5, 6];
//   // List<String> number = numbers.cast<String>();
//   // print(number);
//   List<Object> object = ['apple', 'banana', 'orange',42,true];
//   List<int> strings = object.cast<int>();
//   print(strings);
// }


class Animal {
  void makeSound() {
    print("Generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat()];

  // Cast from Animal to Dog
  List<Dog> dogs = animals.cast<Dog>();

  print("Casted dogs:");
  dogs.forEach((dog) {
    dog.makeSound(); // Calls overridden method of Dog class
  });
}
