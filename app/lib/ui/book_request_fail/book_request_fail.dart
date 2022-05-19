import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';

class BookRequestFail extends StatelessWidget {
  const BookRequestFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Card em si
    return Center(
      child: SizedBox(
        height: (MediaQuery.of(context).size.height * 0.7),
        width: (MediaQuery.of(context).size.height * 0.7),
        child: Card(
          shadowColor: Colors.black,
          //margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 250),
          color: ShelfColors.yellowLight,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),

          //Coluna contendo o ícone, descrição e botão
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              //Ícone
              const Center(
                child: Icon(
                  Icons.cancel,
                  color: ShelfColors.red,
                  size: 320,
                ),
              ),

              //Descrição
              const Center(
                child: Text(
                  'Envio de solicitação falhou.',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Botão do tipo Elevated Button
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 60),
                      primary: ShelfColors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                    onPressed: () =>
                        Navigator.of(context).pop(), //Função pendente
                    child: const Text(
                      'Voltar',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
