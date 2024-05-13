import 'dart:io';

void main(List<String> args) async {
  var myDir = 'C:\\My Files\\path';
  Directory(myDir).create().then(
        (value) => print('Direct success'),
      );
}
