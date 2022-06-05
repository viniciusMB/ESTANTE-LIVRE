import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class FileUploader extends StatelessWidget {
  const FileUploader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 180,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: ShelfColors.blue,
            ),
            left: BorderSide(
              width: 1.0,
              color: ShelfColors.blue,
            ),
            right: BorderSide(
              width: 1.0,
              color: ShelfColors.blue,
            ),
            bottom: BorderSide(
              width: 1.0,
              color: ShelfColors.blue,
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Adicionar aqui os trâmites do upload da imagem',
          ),
        ),
      ),
    );
  }
}
