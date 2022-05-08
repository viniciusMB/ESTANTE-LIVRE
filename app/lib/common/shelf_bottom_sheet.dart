import 'package:flutter/material.dart';

/// A simple widget that acts as a footer for the entire application.
class ShelfBottomSheet extends StatelessWidget {
  /// Creates a new [ShelfBottomSheet] instance,
  /// which is a styled [BottomSheet].
  const ShelfBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      builder: (BuildContext context) => Container(
        color: Theme.of(context).colorScheme.inverseSurface,
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        child: const Text(
          'Desenvolvido pela equipe 18',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      onClosing: () {},
    );
  }
}
