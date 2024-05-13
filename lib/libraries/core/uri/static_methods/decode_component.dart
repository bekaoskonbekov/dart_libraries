void main(List<String> args) {
  var uri = 'Hello%2C%20world%21';
  var res = Uri.decodeComponent(uri);
  print(res);
  var encodedString = 'https://example.com/path%20with%20spaces?query=1%2C2%2C3#fragment%20with%20%23';
  var decodedString = Uri.decodeFull(encodedString);
  print(decodedString); 
}
