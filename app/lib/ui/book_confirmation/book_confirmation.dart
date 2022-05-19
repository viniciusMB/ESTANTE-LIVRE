// ignore_for_file: unnecessary_new

import 'dart:math';

import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';
import '../book_request_success/book_request_success.dart';
import '../book_request_fail/book_request_fail.dart';

class BookConfirmation extends StatelessWidget {
  const BookConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Card em si
    return Center(
      child: SizedBox(
        height: (MediaQuery.of(context).size.height * 0.7),
        width: (MediaQuery.of(context).size.height * 0.7),
        child: Card(
          shadowColor: Colors.black,
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
              //Nome do Livro
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Solicitando Doação do Livro: NOME DO LIVRO',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Responsável pelo Anúncio
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Responsável Pelo Anúncio: NOME DA PESSOA',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Localização
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Localização: NOME DA SEDE',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Local para usuário inserir detalhes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  //minLines: 1,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    //border: InputBorder.none,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    fillColor: ShelfColors.greenLight,
                    filled: true,
                    //floatingLabelAlignment: null,
                    label: Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'INSIRA AQUI MAIS INFORMAÇOES SOBRE SUA SOLICITAÇÃO, LEMBRE-SE DE CHECAR SEU EMAIL PARA ACOMPANHAR',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    labelStyle: null,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Botão do tipo Elevated Button - Cancelar
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 60),
                          primary: ShelfColors.red,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text(
                          'Cancelar',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  //Botão do tipo Elevated Button - Enviar Mensagem
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 60),
                          primary: ShelfColors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                        //Renderização do Widget
                        onPressed: () {
                          Random random = new Random(); //Possibilidade de falha
                          bool rng = random.nextBool();
                          if (rng) {
                            Navigator.of(context).pop(); //Já que o process foi
                            //um sucesso, podemos dar pop, nenhum texto será
                            //perdido.
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: BookRequestSuccess(),
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: BookRequestFail(),
                                );
                              },
                            );
                          }
                        },
                        child: const Text(
                          'Enviar Mensagem',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
