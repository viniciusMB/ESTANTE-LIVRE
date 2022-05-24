import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  const BookTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      alignment: Alignment.center,
      color: ShelfColors.blueLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 10,
              right: 40,
              bottom: 10,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 190,
                      height: 190,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.network(
                          'https://picsum.photos/id/1074/400/400',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: const [
                      SizedBox(
                        width: 400,
                        child: Text(
                          'Nome do Livro',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          'Gênero',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          'Estado USADO OU NOVO',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          'Localização',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          'Situação - Bom ou marcas de uso',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 338,
                        height: 199,
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
                                'Informações adicionais',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 210,
                      height: 50,
                      child: TextButton(
                        child: const Text(
                          'Editar anúncio',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: ShelfColors.green,
                          onPrimary: const Color.fromARGB(255, 64, 64, 64),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 96,
                    ),
                    SizedBox(
                      width: 210,
                      height: 50,
                      child: TextButton(
                        child: const Text(
                          'Excluir anúncio',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: ShelfColors.pink,
                          onPrimary: const Color.fromARGB(255, 64, 64, 64),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
