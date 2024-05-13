void main() {
  var uriString = 'https://example.com/path?query=1';
  var uri = Uri.tryParse(uriString);

  if (uri != null) {
    print('Scheme: ${uri.scheme}');
    print('Host: ${uri.host}');
    print('Path: ${uri.path}');
    print('Query: ${uri.query}');
  } else {
    print('Invalid URI string');
  }
}