void main(List<String> args) {
  Future.microtask(() => print('Microtask execude'));


    var counter = 0;

  void increment() {
    Future.microtask(() {
      counter++;
      print('Counter: $counter');
    });
  }

  increment();
  increment();
  increment();

}
