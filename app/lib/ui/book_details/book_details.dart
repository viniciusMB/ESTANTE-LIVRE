import 'package:estante_livre/model/book.dart';
import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';
import '../book_confirmation/book_confirmation.dart';

class BookDetails extends StatefulWidget {
  final Book book;
  const BookDetails({
    required this.book,
    Key? key,
  }) : super(key: key);
  @override
  _BookDetailsState createState() => _BookDetailsState();
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

            /// Definindo a coluna que vai ter a imagem
            /// e a parte de conteúdos do livro
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
                        child: Image.network(widget.book.imageUrl),
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
                          widget.book.title,
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Gênero do Livro: ${widget.book.genre}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Estado: ${widget.book.rentStatus}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Localização: ${widget.book.location}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 24), //Espaçamento

                        Text(
                          'Condição: ${widget.book.bookCondition}',
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
                            widget.book.description,
                            maxLines: 3,
                            style: const TextStyle(
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
                              onPressed: Navigator.of(context).pop,
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
                                        bookName: widget.book.title,
                                        bookOwner: widget.book.owner,
                                        bookLocation: widget.book.location,
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
