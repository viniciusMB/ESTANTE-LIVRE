import 'package:flutter/material.dart';

class ShelfAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShelfAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      title: const Text('Estante Livre'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
