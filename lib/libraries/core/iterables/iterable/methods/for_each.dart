void main(List<String> args) {
  Iterable numbers = [1, 2, 3, 4, 5];
  numbers.forEach((element) {
    print(element * 2);
  });
  var words = ['apple', 'banana', 'orange'];
  words.asMap().forEach((index, words) {
    print('$index: $words');
  });
  var message = 'Hello, World!';
message.runes.forEach((rune) {
  var character = String.fromCharCode(rune);
  print(character); // Print each character of the string
});
}
