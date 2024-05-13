void main(List<String> args) {
  Set<int> numbers = {1, 2, 3};
  Set<double> res = numbers.cast<double>();
  print(res);

  var setOfStrings = {'a', 'b', 'c'};
var setOfObjects = setOfStrings.cast<Object>();

print(setOfObjects);

var setOfInst = {1, 2, 3};
var listOfInst = setOfInst.cast<int>().toList();

print(listOfInst);
}
