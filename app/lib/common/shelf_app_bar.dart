import 'package:flutter/material.dart';

class ShelfAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShelfAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      title: const Text('Estante Livre'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Catálogo Completo',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Login',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Criar conta',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
