import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Venha passar para frente!',
          style: Theme.of(context).textTheme.headline1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            '''Nós somos uma plataforma feita por estudantes e para estudantes da '''
            '''Universidade federal da bahia (UFBA) para realização doações de livros '''
            '''usados ou novos! Crie agora sua conta gratuitamente.''',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
