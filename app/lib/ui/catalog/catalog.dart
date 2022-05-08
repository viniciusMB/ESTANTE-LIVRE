import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 33,
            bottom: 50,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: Text(
            'Navegando por',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Row(
          children: [
            Container(
              color: Theme.of(context).colorScheme.surface,
              child: const Text('Catálogo'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Novo'),
            ),
          ],
        ),
      ],
    );
  }
}
