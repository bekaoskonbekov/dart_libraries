// void main(List<String> args) {
//   String str = "Hello, world";
//   String res = str.replaceAll('world', 'replace');
//   print(res);
// }

// void main(List<String> args) {
//   String str = "The quick brown fox jups over the lazy dog";
//   String res = str.replaceAll(RegExp(r'[e]'), '*');
//   print(res);
// }

void main(List<String> args) {
  String mapped = 'Lorem ipsum dolor sit amer';
  String str =
      mapped.replaceAllMapped('ipsum', (match) => match.group(0)!.toUpperCase());
  print(str);
}
