import 'package:estante_livre/common/consts.dart';
import 'package:estante_livre/ui/components/book_item.dart';
import 'package:estante_livre/ui/home/call_to_action.dart';
import 'package:estante_livre/ui/home/genre_selection.dart';
import 'package:estante_livre/ui/home/popular_books_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Flexible(
                      child: CallToAction(),
                    ),
                    SizedBox(width: 48),
                    Flexible(
                      child: GenreSelection(),
                    ),
                  ],
                ),
              ),
              const PopularBooksTitle(),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 32),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 50,
                  mainAxisExtent: 200,
                ),
                children:
                    mockBooks.map((item) => BookItem(book: item)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
