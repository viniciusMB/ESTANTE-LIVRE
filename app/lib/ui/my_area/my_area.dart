//import 'package:estante_livre/common/shelf_colors.dart';
import 'package:estante_livre/ui/my_area/widgets/book_tile.dart';
import 'package:estante_livre/ui/my_area/widgets/button.dart';
import 'package:estante_livre/ui/my_area/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class MyArea extends StatelessWidget {
  const MyArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const numberOfBooks = 2;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Header my_area
          Row(
            children: const [
              Expanded(
                child: Text(
                  'Olá, nomezin da pessoa!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Button(
                text: 'Adicionar anúncio',
                height: 56,
                width: 280,
              ),
              SizedBox(
                width: 50,
              ),
              Button(
                text: 'Sair',
                height: 56,
                width: 126,
                isAlert: true,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          const Subtitle(text: 'Seus anúncios: '),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: numberOfBooks,
              itemBuilder: (BuildContext context, int index) {
                return const BookTile();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
