import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Detalhes do Livro'),
            onPressed: () => Navigator.of(context).pushNamed('/book_details'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Catálogo'),
            onPressed: () => Navigator.of(context).pushNamed('/catalog'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Minha área'),
            onPressed: () => Navigator.of(context).pushNamed('/my_area'),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
