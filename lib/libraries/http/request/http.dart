// import 'dart:convert';

// import 'package:http/http.dart' as http;

// void main(List<String> args) async {
//   var url = Uri.parse('https://fakestoreapi.com/products');
//   // final response = await http.get(url);
//   // if (response.statusCode == 200) {
//   //   print(response.body);
//   // }

//   try {
//     var requestBody = jsonEncode({
//       'title': 'Test Product',
//       'price': 19.99,
//       'description': 'This is a test product.',
//       'category': 'electronics',
//       'image': 'https://example.com/test-product.jpg'
//     });
//     var response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: requestBody,
//     );
//     if (response.statusCode == 200) {
//       print('Success');
//       print('Created successfully ${response.body}');
//     } else {
//     print('Failed to create product. Status code: ${response.statusCode}');
//   }
//   } catch (e) {
//     print(e);
//   }
// }

// void main() async {
//   var url = Uri.parse('https://fakestoreapi.com/products/2');
//   try {
//     var updateData = jsonEncode({
//       'title': 'Updated Product Belek',
//       'price': 29.99,
//       'description': 'This is an updated description for the product.',
//       'category': 'electronics',
//       'image': 'https://example.com/updated-product.jpg'
//     });
//     var response = await http.put(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: updateData,
//     );
//     if (response.statusCode == 200) {
//       print('Reponse: ${response.body}');
//     } else {
//       print('Failed to update product. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// void main() async {
//   var url = Uri.parse('https://fakestoreapi.com/products/2');
//   try {
//     var updateData = jsonEncode({
//       'title': 'Dart Flutter',
//       'price': 29.99,
//     });
//     final response = await http.patch(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: updateData,
//     );
//     if (response.statusCode == 200) {
//       print("Response: ${response.body}");
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// void main(List<String> args) async {
//   var url = Uri.parse('https://fakestoreapi.com/products/1');
//   try {
//     final response = await http.delete(url);
//     if (response.statusCode == 200) {
//       print('Product deleted successfully.');
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// class ProductModels {
//   int? id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;

//   ProductModels(
//       {this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image});

//   factory ProductModels.fromJson(Map<String, dynamic> json) {
//     return ProductModels(
//       id: json['id'],
//       title: json['title'],
//       price: json['price'].toDouble(),
//       description: json['description'],
//       category: json['category'],
//       image: json['image'],
//     );
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'price': price,
//       'description': description,
//       'category': category,
//       'image': image,
//     };
//   }

//   static Future<List<ProductModels>> fetchProducts() async {
//     final url = Uri.parse('https://fakestoreapi.com/products');
//     List<ProductModels> products = [];
//     try {
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         List<dynamic> toList = jsonDecode(response.body);
//         toList.forEach((json) {
//           products.add(ProductModels.fromJson(json));
//         });
//       } else {
//         throw Exception('Field');
//       }
//     } catch (e) {}
//     return products;
//   }
// }

// Future<void> createProduct(ProductModels product) async {
//   var url = Uri.parse('https://fakestoreapi.com/products');
//   try {
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(product.toJson()),
//     );
//     if (response.statusCode == 200) {
//       print(response.body);
//     } else {
//       print('Failed to create product. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// Future<void> deleteProduct(int productId) async {
//   final url = Uri.parse('https://fakestoreapi.com/products/$productId');
//   try {
//     final response = await http.delete(url);
//     if (response.statusCode == 200) {
//       print("Successfully delete product");
//     } else {
//       print("Field product");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// Future<void> putData(ProductModels products) async {
//   final url = Uri.parse('https://fakestoreapi.com/products/${products.id}');
//   try {
//     final response = await http.put(url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode(products.toJson()));
//     if (response.statusCode == 200) {
//       print(response.body);
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// Future<void> pathcData(int productId, Map<String, dynamic> updateField) async {
//   final url = Uri.parse('https://fakestoreapi.com/products/$productId');
//   try {
//     final response = await http.patch(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(updateField),
//     );
//     if (response.statusCode == 200) {
//       print(response.body);
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// void main(List<String> args) async {
//   // List<ProductModels> products = await ProductModels.fetchProducts();
//   // print(products);
//   // products.forEach((product) {
//   //   print("ProductID: ${product.id} ProductTitle: ${product.price}");
//   // });
//   var newProduct = ProductModels(
//     title: 'New Product',
//     price: 19.99,
//     description: 'This is a new product.',
//     category: 'electronics',
//     image: 'https://example.com/new-product.jpg',
//   );
//   await createProduct(newProduct);
//   await deleteProduct(21);
//   var update = ProductModels(
//     id: 3, // Specify the ID of the product to be updated
//     title: 'Updated Product',
//     price: 29.99,
//     description: 'This is an updated product description.',
//     category: 'electronics',
//     image: 'https://example.com/updated-product.jpg',
//   );
//  await putData(update);

//   var updateFields = {
//     'title': 'Patched Product Title',
//     'description': 'This is a patched product description.',
//     'price': 32.1,
//     'name': 'Peter'
//   };
//  await pathcData(4, updateFields);
// }

// class PostModel {
//   final int id;
//   final int userId;
//   final String title;
//   final String body;

//   PostModel({
//     required this.id,
//     required this.userId,
//     required this.title,
//     required this.body,
//   });

//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//       id: json['id'],
//       userId: json['userId'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'userId': userId,
//       'title': title,
//       'body': body,
//     };
//   }
// }

// Future<void> getData() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

//   try {
//     final response = await http.get(url);
//     final jsonData = jsonDecode(response.body);
//     var post = PostModel.fromJson(jsonData);
//     if (response.statusCode == 200) {
//       print(post.id);
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// Future<List<PostModel>> getData2() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   var response = await http.get(url);
//   List<PostModel> posts = [];
//   if (response.statusCode == 200) {
//     var jsonData = jsonDecode(response.body);
//     for (var element in jsonData) {
//       var post = PostModel.fromJson(element);
//       posts.add(post);
//     }
//   }
//   return posts;
// }

// void main(List<String> args) async {
//   await getData();
//   var posts = await getData2();
//   posts.forEach((element)  {
//     print(element.id);
//   });
// }


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
    };
  }
}

class DatabaseHelper {
  static late Database _database;
  static const String _tableName = 'posts';

  static Future<void> initializeDatabase() async {
    final String path = await getDatabasesPath();
    _database = await openDatabase(
      join(path, 'posts.db'),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE $_tableName(
            id INTEGER PRIMARY KEY,
            userId INTEGER,
            title TEXT,
            body TEXT
          )
        ''');
      },
    );
  }

  static Future<void> insertPost(PostModel post) async {
    await _database.insert(
      _tableName,
      post.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<PostModel>> getPosts() async {
    final List<Map<String, dynamic>> postMaps = await _database.query(_tableName);
    return List.generate(postMaps.length, (index) {
      return PostModel(
        id: postMaps[index]['id'],
        userId: postMaps[index]['userId'],
        title: postMaps[index]['title'],
        body: postMaps[index]['body'],
      );
    });
  }
}

void main() async {
  await DatabaseHelper.initializeDatabase();

  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    var post = PostModel.fromJson(jsonData);
    print('Fetched post from API:');
    print('Post ID: ${post.id}');
    print('User ID: ${post.userId}');
    print('Title: ${post.title}');
    print('Body: ${post.body}');

    // Insert the fetched post into the SQLite database
    await DatabaseHelper.insertPost(post);

    // Retrieve all posts from the SQLite database and print them
    List<PostModel> postsFromDB = await DatabaseHelper.getPosts();
    print('\nPosts retrieved from SQLite database:');
    postsFromDB.forEach((post) {
      print('Post ID: ${post.id}');
      print('User ID: ${post.userId}');
      print('Title: ${post.title}');
      print('Body: ${post.body}');
      print('');
    });
  } else {
    print('Failed to fetch data from API. Status code: ${response.statusCode}');
  }
}
