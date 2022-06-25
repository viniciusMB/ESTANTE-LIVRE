import 'package:flutter/material.dart';

class GenreSelection extends StatelessWidget {
  const GenreSelection({Key? key}) : super(key: key);

  static const List<String> genres = [
    'Romance',
    'Ficção Científica',
    'Ação/Aventura',
    'Drama',
    'Infantil',
    'Universitários',
    'Ficção',
    'Terror/Suspense',
    'LGBTQIA+',
    'Outros',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Navegue por Gêneros',
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Wrap(
            spacing: 10,
            runSpacing: 12,
            children: genres
                .map((item) => ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(12),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff80A9E0),
                        ),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () => {},
                      child: Text(
                        item,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
