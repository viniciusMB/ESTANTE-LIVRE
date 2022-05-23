import 'package:estante_livre/common/shelf_colors.dart';
import 'package:estante_livre/ui/my_area/widgets/book_tile.dart';
import 'package:estante_livre/ui/my_area/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class MyArea extends StatelessWidget {
  const MyArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 50,
            right: 0,
            bottom: 20,
          ),
          child: SizedBox(
            child: SizedBox(
              width: 1290,
              height: 56,
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Olá! Nomezin da pessoa',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    height: 56,
                    child: TextButton(
                      child: const Text(
                        'Adicionar anúncio',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: ShelfColors.greenLight,
                        onPrimary: const Color.fromARGB(255, 64, 64, 64),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    width: 126,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Sair',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: ShelfColors.pink,
                        onPrimary: const Color.fromARGB(255, 64, 64, 64),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: ShelfColors.blueLight,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 10,
              right: 40,
              bottom: 10,
            ),
            child: Row(
              children: const [
                Expanded(
                  flex: 10,
                  child: Text(
                    'Seus anúncios: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      backgroundColor: ShelfColors.blueLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SpaceWidget(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return const BookTile();
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SpaceWidget(),
          ),
        ),
        const SpaceWidget(),
        const SpaceWidget(),
        const SpaceWidget(),
      ],
    );
  }
}
