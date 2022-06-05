import 'package:estante_livre/ui/book_register/widgets/button.dart';
import 'package:estante_livre/ui/book_register/widgets/dropdown.dart';
import 'package:estante_livre/ui/book_register/widgets/file_uploader.dart';
import 'package:estante_livre/ui/book_register/widgets/file_visualizer.dart';
import 'package:estante_livre/ui/book_register/widgets/subtitle.dart';
import 'package:estante_livre/ui/book_register/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:estante_livre/common/shelf_colors.dart';

class BookRegister extends StatefulWidget {
  const BookRegister({Key? key}) : super(key: key);

  @override
  State<BookRegister> createState() => _BookRegisterState();
}

class _BookRegisterState extends State<BookRegister> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  List<String> bookGenres = [
    'Romance',
    'Drama',
    'Ação/Aventura',
    'Ficção',
    'Infantil',
    'LGBTQIA+',
    'Ficção Científica',
    'Outros',
  ];

  List<String> bookState = [
    'Novo',
    'Usado',
  ];

  List<String> bookSituation = [
    'Boa',
    'Com marcas de uso',
  ];

  List<String> bookLocation = [
    'Salvador',
    'Camaçari',
    'Vitória da Conquista',
  ];

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const Subtitle(text: 'Cadastre o seu livro: '),
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Faça o upload da foto do seu livro:'),
                  SizedBox(height: 20),
                  FileUploader(),
                  SizedBox(height: 20),
                  Text('Confira aqui o arquivo selecionado:'),
                  SizedBox(height: 20),
                  FileVisualizer(),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Insira o nome do livro:'),
                  const SizedBox(height: 5),
                  TextFieldInput(
                    width: 740,
                    textEditingController: _titleController,
                    hintText: 'Nome',
                    textInputType: TextInputType.text,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Selecione o gênero do livro: '),
                          Dropdown(
                            options: bookGenres,
                            hintText: 'Gênero:',
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Selecione o estado do livro: '),
                          Dropdown(
                            options: bookState,
                            hintText: 'Estado:',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Selecione a situação do livro: '),
                          Dropdown(
                            options: bookSituation,
                            hintText: 'Situação:',
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Selecione a localização do livro: '),
                          Dropdown(
                            options: bookLocation,
                            hintText: 'Localização:',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Insira informações adicionais sobre o livro: '),
                  TextFieldInput(
                    width: 740,
                    textEditingController: _descriptionController,
                    hintText: 'Informações adicionais',
                    textInputType: TextInputType.text,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 335),
                      Button(
                        text: 'Cancelar',
                        height: 56,
                        width: 171,
                        isAlert: true,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Button(
                        text: 'Concluir',
                        height: 56,
                        width: 171,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
