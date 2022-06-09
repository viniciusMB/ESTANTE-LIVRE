// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';
import '../book_confirmation/book_confirmation.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({
    Key? key,
  }) : super(key: key);
  @override
  _BookDetailsState createState() => _BookDetailsState();

  final String bookName = 'Harry Potter e a Câmara Secreta';
  final String bookGenre = 'Aventura';
  final String bookState = 'Novo';
  final String bookLocation = 'Salvador';
  final String bookCondition = 'Boa';
  final String bookDescription =
      'This book tells the story of a boy called Harry Potter when he and his friends find out about a secret chamber inside their magic school.';
  final String bookOwner = 'Victor';
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          height: (MediaQuery.of(context).size.height * 0.8),
          width: (MediaQuery.of(context).size.width * 0.8),
          child: Card(
            shadowColor: Colors.black,
            color: ShelfColors.greenLight,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),

            //Definindo a coluna que vai ter a imagem e a parte de conteúdos do livro

            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Vertical -- Row
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //Horizontal -- Row
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Imagem do Livro
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 46,
                      ),
                      child: SizedBox(
                        //child: SizedBox(
                        height:
                            (MediaQuery.of(context).size.height * 0.6), //450,
                        width: (MediaQuery.of(context).size.width * 0.2), //300,
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
                        Text(
                          widget.bookName,
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Gênero do Livro: ${widget.bookGenre}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Estado: ${widget.bookState}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Localização: ${widget.bookLocation}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Condição: ${widget.bookCondition}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        //Descrição mais elaborada do livro
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            widget.bookDescription,
                            maxLines: 3,
                            style: const TextStyle(
                              //overflow: TextOverflow.ellipsis,
                              fontSize: 20,
                            ),
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        //Linha de Botões
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Botão de Voltar
                            ElevatedButton(
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
                              child: const Text(
                                'Voltar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                            ),

                            //Botão de Solicitação
                            ElevatedButton(
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
                              child: const Text(
                                'Solicitar Doação',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      backgroundColor: Colors.transparent,
                                      child: BookConfirmation(
                                        bookName: widget.bookName,
                                        bookOwner: widget.bookOwner,
                                        bookLocation: widget.bookLocation,
                                      ),
                                    );
                                  },
                                );
                              },
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
      ),
    );
  }
}
