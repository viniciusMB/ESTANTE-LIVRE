import 'package:estante_livre/ui/book_request/book_request.dart';
import 'package:flutter/material.dart';
import '../../common/shelf_colors.dart';

class BookConfirmation extends StatefulWidget {
  const BookConfirmation({
    Key? key,
    required this.bookName,
    required this.bookOwner,
    required this.bookLocation,
  }) : super(key: key);
  @override
  _BookConfirmationState createState() => _BookConfirmationState();

  final String bookName;
  final String bookOwner;
  final String bookLocation;
}

class _BookConfirmationState extends State<BookConfirmation> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

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
              //Nome do Livro
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Solicitando Doação do Livro: ${widget.bookName}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Responsável pelo Anúncio
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Responsável Pelo Anúncio: ${widget.bookOwner}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Localização
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Localização: ${widget.bookLocation}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Local para usuário inserir detalhes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: myController, //Adicionando o Controller
                  maxLines: 3,
                  decoration: const InputDecoration(
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
                              '''Entre em mais detalhes sobre sua solicitação '''
                              '''e não esqueça de seu e-mail!''',
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
                          //Random random = Random(); //Possibilidade de falha
                          //bool rng = random.nextBool();
                          if (myController.text.trim() != '') {
                            Navigator.of(context).pop(); //Já que o process foi
                            //um sucesso, podemos dar pop, nenhum texto será
                            //perdido.
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: BookRequest(success: true),
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: BookRequest(success: false),
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
