import 'dart:async';

void main(List<String> args) {
  var count = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    count++;
    print('Dart');
    if (count >= 5) {
      timer.cancel();
    }
  });

  Timer.periodic(Duration(seconds: 1), (timer) {
    var now = DateTime.now();
    print('Current now: $now');
    timer.cancel();
  });

  var counter = 10;
  Timer.periodic(Duration(seconds: 1), (timer) {
   print(counter); counter--;
    
    if (counter == 0) {
      timer.cancel();
    }
  });
}
