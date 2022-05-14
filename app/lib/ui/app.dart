import 'package:estante_livre/common/shelf_app_bar.dart';
import 'package:estante_livre/common/shelf_bottom_sheet.dart';
import 'package:estante_livre/common/theme.dart';
import 'package:estante_livre/ui/book_details/book_details.dart';
import 'package:estante_livre/ui/book_request_success/book_request_success.dart';
import 'package:estante_livre/ui/book_request_fail/book_request_fail.dart';
import 'package:estante_livre/ui/catalog/catalog.dart';
import 'package:estante_livre/ui/home/home.dart';
import 'package:estante_livre/ui/login/login.dart';
import 'package:estante_livre/ui/my_area/my_area.dart';
import 'package:estante_livre/ui/register/register.dart';
import 'package:flutter/material.dart';

/// The main application widget.
/// It is the root widget of the application.
class App extends StatelessWidget {
  /// Creates the main application widget.
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estante Livre',
      theme: shelfTheme,
      home: const Home(),
      routes: <String, WidgetBuilder>{
<<<<<<< HEAD
        'catalog': (BuildContext context) => const Catalog(),
        'login': (BuildContext context) => const Login(),
        'register': (BuildContext context) => const Register(),
        'my_area': (BuildContext context) => const MyArea(),
        'book_details': (BuildContext context) => const BookDetails(),
        'book_request_success': (BuildContext context) =>
            const BookRequestSuccess(),
        'book_request_fail': (BuildContext context) => const BookRequestFail(),
=======
        '/catalog': (BuildContext context) => const Catalog(),
        '/login': (BuildContext context) => const Login(),
        '/register': (BuildContext context) => const Register(),
        '/my_area': (BuildContext context) => const MyArea(),
        '/book_request': (BuildContext context) => const BookRequest(),
>>>>>>> e9caa3b0d87a8093433921c14711a60bae63031a
      },
      builder: (BuildContext context, Widget? pageWidget) => Scaffold(
        appBar: const ShelfAppBar(),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1290,
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: pageWidget,
            ),
          ),
        ),
        bottomSheet: const ShelfBottomSheet(),
      ),
    );
  }
}
