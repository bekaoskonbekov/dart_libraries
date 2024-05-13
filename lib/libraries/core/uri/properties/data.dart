void main(List<String> args) {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var data = uri.data;
  var segment = uri.path;
  print(segment);
  print(data);
}
