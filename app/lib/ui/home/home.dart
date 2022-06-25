import 'package:estante_livre/ui/home/call_to_action.dart';
import 'package:estante_livre/ui/home/genre_selection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
        ],
      ),
    );
  }
}
