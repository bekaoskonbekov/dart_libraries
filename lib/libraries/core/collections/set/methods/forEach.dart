void main(List<String> args) {
  Set<int> numbers = {1, 2, 3, 4, 5};
  numbers.forEach((element) {
    print(element);
  });

  Set<String> words = {'apple', 'banana', 'orange'};
  words.forEach((element) {
    print(element);
  });
  var mySet = {10, 20, 30};

mySet.forEach((element) {
  if (element % 2 == 0) {
    print('$element is even');
  } else {
    print('$element is odd');
  }
});

var fruits = {'apple', 'banana', 'orange'};

var index = 1;
fruits.forEach((element) {
  print('Element at index $index: $element');
  index++;
});

 var set = {1, 2, 3, 4, 5};

  Future.forEach(set, (element) async {
    await Future.delayed(Duration(seconds: 1));
    print(element);
  });
}
