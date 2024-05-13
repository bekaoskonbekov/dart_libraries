import 'dart:ui';

void main(List<String> args)async {
  List<int> sum = List.generate(6, (index) => index + 1);
  sum.forEach((element) => print(element));

  List<DateTime> nextSevenDays =
      List.generate(1, (index) => DateTime.now().add(Duration(days: index)));
  print("Next seven days: $nextSevenDays");

  List<List<int>> multiples = List.generate(5, (index) {
    return List.generate(5, (innerIndex) => (index + 1) * (innerIndex + 1));
  });

  print("Multiples: $multiples");

   List<Color> colors = List.generate(5, (index) => Color.fromRGBO(0, 0, 255, (index + 1) / 5));
  print("Colors: $colors");

   List<String> strings = List.generate(5, (index) => "Prefix${index + 1}");
  print("Strings: $strings");

  List<Future<int>> delayedFutures = List.generate(5, (index) => Future.delayed(Duration(seconds: index), () => index + 1));
  List<int> results = await Future.wait(delayedFutures);
  print("Results: $results");

   List<int> squaresOfEvenNumbers = List.generate(5, (index) => (index + 1) * 2, growable: true)
      .where((element) => element.isEven)
      .map((number) => number * number)
      .toList();

  print("Squares of even numbers: $squaresOfEvenNumbers");

   List<String> formattedStrings = List.generate(
    5,
    (index) => 'Item ${index + 1} - ${index % 2 == 0 ? 'Even' : 'Odd'}',
    growable: true,
  );

  print("Formatted strings: $formattedStrings");
}
