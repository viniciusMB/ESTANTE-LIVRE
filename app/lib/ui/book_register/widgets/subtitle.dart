import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String text;

  const Subtitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ShelfColors.blueLight,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
