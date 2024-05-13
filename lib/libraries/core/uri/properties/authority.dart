void main(List<String> args) {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com');
  var authority = uri.authority;
  print(authority);
  var url = Uri.parse('http://example.com/path');
  print(url.authority); // Output: example.com
}
