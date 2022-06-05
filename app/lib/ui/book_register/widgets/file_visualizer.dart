import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class FileVisualizer extends StatelessWidget {
  const FileVisualizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 180,
      child: Container(
        decoration: const BoxDecoration(
          color: ShelfColors.greenLight,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Colocar aqui a foto selecionada',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
