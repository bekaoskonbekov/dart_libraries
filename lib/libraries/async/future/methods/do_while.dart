import 'dart:async';

void main() async {
  print('Start');

  int total = 0;
  int page = 1;

  do {
    List<int> data = await fetchData(page);
    total += data.length;
    page++;
  } while (total < 100);

  print('Total data fetched: $total');
}

Future<List<int>> fetchData(int page) async {
  await Future.delayed(Duration(seconds: 1));
  print('Fetching data for page $page');
  return List.generate(10, (index) => index + (page * 10));
}