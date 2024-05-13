void main(List<String> args) {
  var absolutePath = '/path/to/file.txt';
  var absoluteUri = Uri.file(absolutePath);
  print(absoluteUri);
   var relativePath = 'path/to/another/file.txt';
  var relativeUri = Uri.file(relativePath);
  print(relativeUri);
}