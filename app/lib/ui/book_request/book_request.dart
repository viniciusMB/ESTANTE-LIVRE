import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';

class BookRequest extends StatefulWidget {
  const BookRequest({
    Key? key,
    required this.success,
  }) : super(key: key);
  @override
  _BookRequestState createState() => _BookRequestState();

  final bool success;
}

class _BookRequestState extends State<BookRequest> {
  @override
  Widget build(BuildContext context) {
    //Card em si
    return Center(
      child: SizedBox(
        height: (MediaQuery.of(context).size.height * 0.7),
        width: (MediaQuery.of(context).size.height * 0.7),
        child: Card(
          shadowColor: Colors.black,
          color: ShelfColors.blueLighter,
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
              Center(
                child: Icon(
                  widget.success ? Icons.check_circle : Icons.cancel,
                  color: widget.success ? ShelfColors.green : ShelfColors.red,
                  size: 320,
                ),
              ),

              //Descrição
              Center(
                child: Text(
                  widget.success
                      ? 'Sua solicitação foi enviada!'
                      : 'Envio de solicitação falhou.',
                  style: const TextStyle(
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
                      primary:
                          widget.success ? ShelfColors.green : ShelfColors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      widget.success ? 'Concluir' : 'Voltar',
                      style: const TextStyle(color: Colors.black),
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
