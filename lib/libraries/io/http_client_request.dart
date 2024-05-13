import 'dart:convert';
import 'dart:io';

Future<void> postData() async {
  final client = HttpClient();
  final url = Uri.parse('https://fakestoreapi.com/products');
  try {
    final request = await client.postUrl(url);
    final jsonData = {
      "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "price": 109.95,
      "description":
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "category": "men's clothing",
      "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    };
    final encodedJson = utf8.encode(json.encode(jsonData));
    request.add(encodedJson);
    final response = await request.close();
    final resBody = await response.transform(utf8.decoder).join();
    print("Response: $resBody");
  } catch (e) {
    print("Error: $e");
  } finally {
    client.close();
  }
}

void main(List<String> args) async {
  var client = HttpClient();
  var request = await client.postUrl(Uri.parse(''));
  request.add(utf8.encode('Data to sent'));
  var response = await request.close();

}
