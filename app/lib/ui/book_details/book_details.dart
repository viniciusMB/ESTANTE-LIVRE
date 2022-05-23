// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';
import '../book_confirmation/book_confirmation.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        height: (MediaQuery.of(context).size.height * 0.8),
        child: Card(
          shadowColor: Colors.black,
          color: ShelfColors.greenLight,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),

          //Definindo a coluna que vai ter a imagem e a parte de conteúdos do livro

          child: Padding(
            padding: const EdgeInsets.all(48),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Vertical -- Row
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //Horizontal -- Row
              mainAxisSize: MainAxisSize.min,
              children: [
                //Imagem do Livro
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 46,
                    ),
                    child: SizedBox(
                      height: 450,
                      width: 275,
                      child: Image.asset(
                        'assets/images/test_BD.jpg',
                      ),
                    ),
                  ),
                ),
                //Conteúdo Escrito do Livro
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Nome do Livro',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 48), //Espaçamento
                      const Text(
                        'Gênero do Livro',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24), //Espaçamento
                      const Text(
                        'Estado: Novo ou Usado',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24), //Espaçamento
                      const Text(
                        'Localização',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24), //Espaçamento
                      const Text(
                        'Condição: Boa ou Mostra Marcas',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24), //Espaçamento
                      //Descrição mais elaborada do livro
                      const Text(
                        'Breve descrição pelo autor do anúncio sobre o livro.',
                        maxLines: 3,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 24), //Espaçamento
                      //Linha de Botões
                      Row(
                        children: [
                          //Botão de Voltar
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 30), //right:10
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(
                                    260,
                                    60,
                                  ),
                                  primary: ShelfColors.red,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(32.0),
                                    ),
                                  ),
                                ),
                                //Renderização do Widget
                                onPressed: () {},
                                child: const Text(
                                  'Voltar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //Botão de Solicitação
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 30), //right:10
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(
                                    260,
                                    60,
                                  ),
                                  primary: ShelfColors.green,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(32.0),
                                    ),
                                  ),
                                ),
                                //Renderização do Widget
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const Dialog(
                                        backgroundColor: Colors.transparent,
                                        child: BookConfirmation(),
                                      );
                                    },
                                  );
                                },
                                child: const Text(
                                  'Solicitar Doação',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
          ),
        ),
      ),
    );
  }
}
