import 'package:flutter/material.dart';

class PopularBooksTitle extends StatelessWidget {
  const PopularBooksTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xffACDFE2)),
      padding: const EdgeInsets.fromLTRB(10, 2, 0, 5),
      child: Text(
        'Livro adicionados recentemente',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
