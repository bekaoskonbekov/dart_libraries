void main(List<String> args) {
  List<int> sum = [1, 2, 3, 4, 5,6];
  int res = sum.indexWhere((element) => element % 2 == 0);
  print(res);
}
