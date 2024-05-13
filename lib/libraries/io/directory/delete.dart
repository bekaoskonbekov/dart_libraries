import 'dart:io';

void main(List<String> args) {
  var myDir = 'C:\\My Files\\path';
  Directory(myDir).delete().then(
        (value) => print('Success delete Direct'),
      );
}
