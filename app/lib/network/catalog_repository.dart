// ignore_for_file: avoid_dynamic_calls

import 'package:estante_livre/common/consts.dart';
import 'package:estante_livre/model/book.dart';
import 'package:estante_livre/network/config/dio_singleton.dart';

// ignore: avoid_classes_with_only_static_members
class CatalogRepository {
  static Future<List<Book>> getBooks() async {
    // Response<dynamic> response = await DioSingleton.get(
    //   'books',
    // );

    // if (response.statusCode == 200) {
    //   return response.data.map<Book>((item) => Book.fromJson(item)).toList();
    // }

    return mockBooks;
  }

  static Future<void> addBook(Book book, int id) async {
    await DioSingleton.post(
      'users/$id',
      data: book,
      queryParameters: {
        'search_query': '',
      },
    );
  }
}
