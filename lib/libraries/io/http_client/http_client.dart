import 'dart:convert';
import 'dart:io';
// Future<void> fetchData() async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   final client = HttpClient();
//   try {
//     final request = await client.getUrl(url);
//     final response = await request.close();
//     final responseBody = await response.transform(utf8.decoder).join();
//     final data = json.decode(responseBody);
//     if (response.statusCode == 200) {
//       print(data);
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

Future<void> postData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final client = HttpClient();
  try {
    final request = await client.postUrl(url);
    request.headers.set('Content-Type', 'application/json');
    final payload = {
      "userId": 11,
      "title": "quas fugiat ut perspiciatis vero provident",
      "body": "eum non blanditiis "
    };
    final jsonDecoded = json.encode(payload);
    request.write(jsonDecoded);
    final response = await request.close();
    final resBody = await response.transform(utf8.decoder).join();
    if (response.statusCode == 200) {
      print('Response: $resBody');
    }
  } catch (e) {
    print('Error1: $e');
  }
}

Future<void> postData2() async {
  final url = Uri.parse('https://fakestoreapi.com/products');
  final client = HttpClient();
  try {
    final request = await client.postUrl(url);
    request.headers.set('Content-Type', 'application/json');
    final jsonData = {
      "title": "Sample Product",
      "price": 10.99,
      "description": "This is a sample product description.",
      "category": "electronics",
      "image": "https://via.placeholder.com/150"
    };
    final jsonDecoded = json.encode(jsonData);
    request.write(jsonDecoded);
    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();
    if (response.statusCode == 200) {
      print("Body: $responseBody");
    }
  } catch (e) {
    print(e);
  }
}

Future<void> updateProduct() async {
  final url = Uri.parse('https://fakestoreapi.com/products/1');
  final httpClient = HttpClient();

  try {
    final request = await httpClient.putUrl(url);
    request.headers.set('Content-Type', 'application/json');

    final jsonData = {
      "title": "Updated Product",
      "price": 19.99,
      "description": "This is the updated product description.",
      "category": "electronics",
      "image": "https://via.placeholder.com/150"
    };

    final jsonEncoded = json.encode(jsonData);
    request.write(jsonEncoded);

    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();

    print('Response: $responseBody');
  } catch (e) {
    print('Error: $e');
  } finally {
    httpClient.close();
  }
}

Future<void> patchData() async {
  final url = Uri.parse('https://fakestoreapi.com/products/1');
  final httpClient = HttpClient();
  try {
    final request = await httpClient.patchUrl(url);
    request.headers.set('Content-Type', 'application/json');
    final jsonData = {
      'price': 15.99,
    };
    final jsonDecoded = json.encode(jsonData);
    request.write(jsonDecoded);
    final response = await request.close();
    final reBody = await response.transform(utf8.decoder).join();
    print(reBody);
  } catch (e) {
    print("Error: $e");
  }
}

void main(List<String> args) async {
  // await postData();
  // print("---------------------------");
  // await postData2();
  // print("---------------------------");
  // await updateProduct();
  // print("---------------------------");

  patchData();
}
