// void main(List<String> args) {
//   var res = greet('Peter', 13);
//   print(res);
//   print(numbers(10, 5));
//   number(10, 3);
//   printMessage('Hello', 3);
//   print(max(10, 4));
//   print(calculate([2, 3, 45, 6, 6]));
//   print(sortNumber([2, 6, 54, 4, 6, 7, 95, 43]));
//   print(exponent());
// }

// String greet(String name, int age) {
//   return '$age $name';
// }

// int numbers(int a, int b) {
//   return a + b;
// }

// void number(int a, int b) {
//   print('$a $b');
// }

// void printMessage(String message, [int time = 1]) {
//   for (var i = 0; i < time; i++) {
//     print(message);
//   }
// }

// int max(int a, int b) {
//   return a > b ? a : b;
// }

// double calculate(List<int> numbers) {
//   var sum = 0;
//   for (var number in numbers) {
//     sum += number;
//   }
//   return sum / numbers.length;
// }

// List sortNumber(List<int> numbers) {
//   numbers.sort();
//   return numbers;
// }

// double exponent() {
//   double base = 10;
//   double expo = 3;
//   return base * expo;
// }

//*************************************************** */

// void main(List<String> args) {
//   greet(name: 'Peter', hello: 'Hiiii');
//   print(formatDate(day: 12, month: 12, year: 2024));
//   message(message: 'Hello Dart');
//   print(calculateArea(width: 18, height: 4));
//   var person1 = Person(name: 'Peter', age: 18);
//   person1.userInfo();
//   sendEmail(
//       recipient: 'example@example.com',
//       subject: 'Hello',
//       body: 'This is a test email');
// }

// void greet({required String name, String hello = 'Hello'}) {
//   print('$hello $name');
// }

// String formatDate({required int day, required int month, required int year}) {
//   return '$day/$month/$year';
// }

// void message({required String message, int time = 2}) {
//   for (var i = 0; i < time; i++) {
//     print(message);
//   }
// }

// double calculateArea({required double width, required double height}) {
//   return width * height;
// }

// class Person {
//   final String name;
//   final int age;

//   Person({required this.name, required this.age});

//   void userInfo() {
//     print("Name: $name, Age: $age");
//   }
// }

// void sendEmail(
//     {required String recipient,
//     required String subject,
//     required String body}) {
//   print('To: $recipient');
//   print('Subject: $subject');
//   print('Body: $body');
// }

//************************************************************ */

// class Person {
//   final String name;
//   final int? age;
//   final String? gender;
//   Person(this.name, [this.age, this.gender]);

//   void displayName() {
//     print(
//         'Name: $name, Age: ${age ?? 'not specified'}, Gender: ${gender ?? 'Not found Gender'}');
//   }
// }

// void main(List<String> args) {
//   printMessage('Hello', 2);
//   print(calculateVolume(23));
//   print(calculateVolume(12, 12));
//   print(calculateVolume(13, 3, 4));

//   Person person = Person('Alice');
//   person.displayName();
//   Person person2 = Person('Peter', 23, 'male');
//   person2.displayName();

//   var res = formateDate(12);
//   var res2 = formateDate(13, 12, 2024);
//   print(res);
//   print(res2);
// }

// void printMessage(String message, [int time = 1]) {
//   for (var i = 0; i < time; i++) {
//     print(message);
//   }
// }

// double calculateVolume(double height, [double width = 10, double length = 3]) {
//   return length * width * height;
// }

// String formateDate(int day, [int? month, int? year]) {
//   return '$day/${month ?? 'Not found month'}/${year ?? 'Not found year'}';
// }

// **********************************************************

// void main(List<String> args) {
//   greet('Peter');
//   greet("Alice", hello: 'Hello');
//   printMessage('Hello', time: 3);
//   fetchData('https://api.example.com/data');
//   fetchData('https://api.example.com/data',method: 'POST',headers: 'HEADERS');
// }

// void greet(String name, {String? hello}) {
//   print('$name ${hello ?? ''}');
// }

// void printMessage(String name, {int time = 1}) {
//   for (var i = 0; i < time; i++) {
//     print(name);
//   }
// }

// void fetchData(String url,
//     {String method = 'GET', String headers = 'Bearer token'}) {
//   print('Fetching data: $url using $method method');
//   if (headers != null) {
//     print('Header: $headers');
//   }
// }

// *************************************************************

// void main(List<String> args) {
//   greet(String name) {
//     print("Hello $name");
//   }

//   greet('Alice');

//   add(int a, int b) => a + b;
//   print(add(10, 2));

// for (var i = 0; i < 3; i++) {
//   var x = i * 2;
//   print('$i: $x');
// }
// for (var i = 0; i < 3; i++) {
//   var x = i * 2;
//   for (var j = 0; i < 2; j++) {
//     var y = i + 1;
//     print('$i$j: $x$y');
//   }
// }
// }

// void main(List<String> args) {
// var closure = otherFunc();
// closure();

// var addTo = add(10);
// print(addTo(3));

// var sum = counter();
// print(sum());

//   var time = addTimer();
//   print(time());
// }

// Function otherFunc() {
//   var other = 10;
//   return () {
//     print('Other num $other');
//   };
// }

// Function add(int x) {
//   return (int y) {
//     return x + y;
//   };
// }

// Function counter() {
//   int count = 0;
//   return () {
//     return ++count;
//   };
// }

// Function addTimer() {
//   var count = 0;
//   return () {
//    return Timer.periodic(Duration(seconds: 1), (timer) {
//       print('Count: ${count++}');
//       if (count == 5) {
//         timer.cancel();
//       }
//     });
// //   };
// // }

// typedef double Operation(double a, double b);

// Operation makeOper(String oper) {
//   switch (oper) {
//     case '+':
//       return (a, b) => a + b;
//     case '-':
//       return (a, b) => a - b;
//     case '/':
//       return (a, b) => a / b;
//     case '*':
//       return (a, b) => a * b;
//     default:
//       throw Exception('Invalid operator');
//   }
// }

// void main(List<String> args) {
//   var res = makeOper('+');
//   print(res(5, 4));
//   var res2 = makeOper('-');
//   print(res2(4, 4));
//   var res3 = makeOper('/');
//   print(res3(3, 4));
//   var res4 = makeOper('*');
//   print(res4(3, 4));
// }

// void main(List<String> args) {
//   Future<String> fetchData() async {
//     await Future.delayed(Duration(milliseconds: 200));
//     return 'Data from API';
//   }

//   void proccesData(String data) {
//     print('Data: $data');
//   }

//   void processDataAndFetch() {
//     fetchData().then((value) => print(value));
//   }

//   processDataAndFetch();
// }

//************************************ */

// import 'dart:math';

// void main() {
//   countUpTo(8).forEach((element) {
//     print("index: $element");
//   });
//   var list = generateRandomNumber(5, 66).toList();
//   print('Index: $list');

//   var startDAte = DateTime(2022, 01, 12);
//   var endDate = DateTime(2022, 01, 20);
//   generateDate(startDAte, endDate).forEach((element) {
//     print(element);
//   });
// }

// Iterable<int> countUpTo(int n) sync* {
//   for (int i = 1; i <= n; i++) {
//     yield i;
//   }
// }

// Iterable<int> generateRandomNumber(int count, int max) sync* {
//   var random = Random();
//   for (var i = 0; i < count; i++) {
//     yield random.nextInt(max);
//   }
// }

// Iterable<DateTime> generateDate(DateTime start, DateTime end) sync* {
//   var date = start;
//   while (date.isBefore(end)) {
//     yield date;
//     date = date.add(Duration(days: 1));
//   }
// }

// import 'dart:math';

// void main(List<String> args) async {
// asyncMain(10).listen((event) {
//   print(event);
// });
// generateRandom(10, 100).listen((event) {
//   print(event);
// });
// countDown(10).listen((int event) {
//   print(event);
// });

// fetchData().listen((event) {
//   print(event);
// });

//   totalPage(5).listen((event) {
//     print(event);
//   });
// }

// Stream<int> asyncMain(int n) async* {
//   for (var i = 0; i < n; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// Stream<int> generateRandom(int count, int max) async* {
//   final random = Random();
//   for (var i = 0; i < count; i++) {
//     await Future.delayed(Duration(milliseconds: 200));
//     yield random.nextInt(max);
//   }
// }

// Stream<int> countDown(int from) async* {
//   for (var i = from; i >= 0; i--) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// Stream<String> fetchData() async* {
//   final data = ['one', 'two', 'three', 'four', 'five'];
//   for (var element in data) {
//     await Future.delayed(Duration(seconds: 1));
//     yield element;
//   }
// }

// Stream<int> totalPage(int page) async* {
//   for (var totalPage = 1; totalPage < page; totalPage++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield totalPage;
//   }
// }

// external int native(int a, int b);
// void main(List<String> args) {
//   int res = native(5, 3);
//   print(res);
// }

// Future<Map<String, dynamic>> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return {
//     'id': 1,
//     'name': 'Peter',
//     'email': 'Peter@example.com',
//   };
// }

// Future<void> processData(Map userData) async {
//   await Future.delayed(Duration(seconds: 1));
//   print('UserID: ${userData['id']}');
//   print('NAme: ${userData['name']}');
//   print('Email: ${userData['email']}');
// }

// void main(List<String> args) {
//   fetchAndProccessData();
// }

// Future<void> fetchAndProccessData() async {
//   try {
//     Map<String, dynamic> userData = await fetchData();
//     print('User data fetched successfully');

//     await processData(userData);
//     print('User data processed successfully');
//   } catch (e) {
//     print(e);
//   }
// }

// Future<int> fetchData1() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 42;
// }

// Future<String> fetchData2() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Hello World';
// }

// void main(List<String> args) async {
//   var data1 = await fetchData1();
//   print(data1);
//   var data2 = await fetchData2();
//   print(data2);

//   var res =await Future.wait([fetchData1(), fetchData2()]);
//   print(res);
// }

// import 'dart:math';

// Future<int> fetchDataFromSource1() async {
//   await Future.delayed(Duration(seconds: 3));
//   if (Random().nextInt(2) == 0) {
//     throw Exception('Failed to fetch data from source 1');
//   }
//   return 42;
// }

// Future<String> fetchDataFromSource2() async {
//   await Future.delayed(Duration(seconds: 2));
//   if (Random().nextInt(10) < 3) {
//     throw Exception('Failed to fetch data from source 2');
//   }
//   return 'Hello';
// }

// Future<void> processData(int data1, String data2) async {
//   await Future.delayed(Duration(seconds: 1));
//   print('Processed data: $data1, $data2');
// }

// Future<List<dynamic>> fetchFromMultipleSourcesWithRetry() async {
//   const maxRetries = 3;
//   for (int i = 0; i < maxRetries; i++) {
//     try {
//       print('Fetching data from multiple sources (Attempt ${i + 1})...');
//       var result = await Future.wait([
//         fetchDataFromSource1().timeout(Duration(seconds: 4)),
//         fetchDataFromSource2().timeout(Duration(seconds: 3))
//       ]);
//       print('Data fetched from multiple sources');
//       return result;
//     } catch (error) {
//       print('Error fetching data from multiple sources (Attempt ${i + 1}): $error');
//       if (i < maxRetries - 1) {
//         print('Retrying...');
//         await Future.delayed(Duration(seconds: 2));
//       } else {
//         rethrow;
//       }
//     }
//   }
//   throw Exception('Failed to fetch data from multiple sources after $maxRetries attempts');
// }

// Future<void> fetchAndProcessData() async {
//   try {
//     var fetchedData = await fetchFromMultipleSourcesWithRetry();
//     print('Processing data...');
//     await processData(fetchedData[0], fetchedData[1]);
//     print('Data processed successfully');
//   } catch (error) {
//     print('Error fetching or processing data: $error');
//   }
// }

// void main() {
//   fetchAndProcessData();
// }

// import 'dart:async';

// Future<void> processData() async {
//   List<int> values = [1, 2, 3, 4, 5];
//   await Future.forEach(values, (element) async {
//     await Future.delayed(Duration(seconds: 1));
//     print('Processed $element');
//   });
// }

// void main() async {
//   await processData();
// }

// Future<int> fetchData() {
//   return Future.delayed(Duration(seconds: 3), () => 42);
// }

// Future<void> processData(int data) {
//   return Future.delayed(Duration(seconds: 1), () {
//     print('Data: $data');
//   });
// }

// Future<int> calculate(int a, int b) async {
//   await Future.delayed(Duration(seconds: 2));
//   return a + b;
// }

// // Future<void> process() async {
// //   var res = await calculate(2, 5);
// //   print(res);
// // }

// void main(List<String> args) async {
//   await fetchData().then((value) {
//     return processData(value);
//   });
//   await calculate(3, 4).then((value) => print(value));
// }

// Future<int> userId() async {
//   return Future.delayed(Duration(seconds: 1), () => 1);
// }

// Future<Map> userName(int userId) async {
//   await Future.delayed(Duration(seconds: 2));
//   Map<String, dynamic> map = {
//     'userId': 2,
//     'userName': 'Peter',
//   };
//   return map;
// }

// void main(List<String> args) async {
//   var user = await userId();
//   print(user);
//   var name = await userName(user);
//   print(name);
// // }
// import 'dart:async';

// // Simulate fetching user details asynchronously using the provided user IDs
// Future<List<Map<String, dynamic>>> fetchUserDetails(List<int> userIds) async {
//   try {
//     // Limit the number of concurrent requests to 5
//     var futures = <Future<Map<String, dynamic>>>[];
//     for (var userId in userIds) {
//       futures.add(fetchUserDetailsForSingleUser(userId));
//     }
//     return Future.wait(futures);
//   } catch (e) {
//     // Handle any errors gracefully
//     throw Exception('Failed to fetch user details: $e');
//   }
// }

// // Simulate fetching user details for a single user asynchronously
// Future<Map<String, dynamic>> fetchUserDetailsForSingleUser(int userId) async {
//   await Future.delayed(Duration(seconds: 3)); // Simulated delay
//   return {
//     'userId': userId,
//     'name': 'User $userId',
//     'age': 30 + userId,
//     'email': 'user$userId@example.com',
//   }; // Simulated user details
// }

// void main() async {
//   try {
//     // List of user IDs
//     List<int> userIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//     // Fetch user details for all user IDs
//     var userDetailsList = await fetchUserDetails(userIds);

//     // Print user details for each user
//     userDetailsList.forEach((userDetails) {
//       print('User details fetched: $userDetails');
//     });
//   } catch (e) {
//     // Handle errors gracefully
//     print('Error: $e');
//   }
// }


Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 8), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}