void main(List<String> args) {
  String str = '123';
  int? res = int.tryParse(str);
  print(res);

  String str2 = 'abs';
  int? res2 = int.tryParse(str2);
  int re3 = int.parse(str2);
  print(re3);

  print(res2);
}
