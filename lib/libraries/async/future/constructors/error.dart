void main(List<String> args) {
  var fError = Future.error('Error !!!!!');
  fError.catchError((error) => print(error));
}
