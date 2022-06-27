import 'package:estante_livre/common/shelf_colors.dart';
import 'package:estante_livre/model/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
        backgroundColor: MaterialStateProperty.all(
          ShelfColors.greenLight,
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
      onPressed: () => Navigator.of(context).pushNamed('/book_details'),
      child: Row(
        children: [
          Image.network(
            book.imageUrl,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  book.title,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Estado: ${book.bookCondition}',
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  book.location,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
