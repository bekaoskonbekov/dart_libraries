void main(List<String> args) {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  print('path');
  print(uri.path);
  print('port');
  print(uri.port);
  print('scheme');
  print(uri.scheme);
  print('query');
  print(uri.query);
  print('host');
  print(uri.host);
  print('userInfo');
  print(uri.userInfo);

  print(uri.queryParameters);
}
