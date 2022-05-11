import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';

class BookRequestSuccess extends StatelessWidget {
  const BookRequestSuccess({Key? key}) : super(key: key);

  static const IconData check = IconData(0xe156, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        shadowColor: Colors.black,
        margin: const EdgeInsets.symmetric(vertical: 180, horizontal: 250),
        color: ShelfColors.yellowLight,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children:  [
            const Center(
              child: Icon(
              Icons.check,
              color: ShelfColors.green,
              size: 320,
            ),),
            const Center(
              child: Text(
                'Sua solicitação foi enviada!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(120, 60),
                  primary: ShelfColors.green,
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Concluir',
                  style: TextStyle(color: Colors.black),),
              ),
            ),
        ),],
        ),
      ),
    );
  }
}
