// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
      color: ShelfColors.greenLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),

      //Definindo coluna com 2 elementos, imagens e conteúdos do livro e botão de doação.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Definindo a linha que vai ter a imagem e a parte de conteúdos do livro
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              //Imagem do Livro
              const Align(
                child: Padding(
                  padding: EdgeInsets.only(right: 100, left: 50),
                  child: Center(
                    child: Text(
                      'Aqui vem a imagem',
                    ),
                  ),
                ),
              ),
              //Conteúdo Escrito do Livro
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Nome do Livro',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Gênero do Livro',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Estado: Novo ou Usado',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Localização',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Condição: Boa ou Mostra Marcas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //Descrição mais elaborada do livro
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Breve descrição pelo autor do anúncio sobre o livro.',
                      maxLines: 3,
                      style: TextStyle(
                        //maxLines:3,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Botão de Solicitação
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(260, 60),
                  primary: ShelfColors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                onPressed: () {},
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
    );
  }
}
