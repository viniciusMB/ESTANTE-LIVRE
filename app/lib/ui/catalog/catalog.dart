import 'package:estante_livre/model/book.dart';
import 'package:estante_livre/network/catalog_repository.dart';
import 'package:estante_livre/ui/components/book_item.dart';
import 'package:flutter/material.dart';

import '../../common/shelf_colors.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  static const List<String> _locations = [
    'Salvador',
    'Vitória da Conquista',
    'Camaçari',
  ];

  static const List<String> _bookConditions = [
    'Usado',
    'Novo',
  ];

  String _currentLocation = '';
  String _currentBookCondition = '';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CatalogRepository.getBooks(),
      builder: (context, state) {
        return state.hasData
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 33,
                        bottom: 50,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      width: MediaQuery.of(context).size.width,
                      color: ShelfColors.blueLighter,
                      child: Text(
                        'Navegando',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Container(
                              color: ShelfColors.greenLight,
                              padding: const EdgeInsets.symmetric(
                                vertical: 28,
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Filtros',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 30),
                                    child: Text('Localização'),
                                  ),
                                  ..._locations
                                      .map(
                                        (location) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10.0,
                                          ),
                                          child: Row(children: [
                                            Checkbox(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(2),
                                                ),
                                              ),
                                              value:
                                                  location == _currentLocation,
                                              onChanged: (bool? selected) =>
                                                  setState(() {
                                                _currentLocation =
                                                    selected ?? false
                                                        ? location
                                                        : '';
                                              }),
                                            ),
                                            Text(location),
                                          ]),
                                        ),
                                      )
                                      .toList(),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 20),
                                    child: Text('Estado'),
                                  ),
                                  ..._bookConditions
                                      .map(
                                        (condition) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10.0,
                                          ),
                                          child: Row(children: [
                                            Checkbox(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(2),
                                                ),
                                              ),
                                              value: condition ==
                                                  _currentBookCondition,
                                              onChanged: (bool? selected) =>
                                                  setState(() {
                                                _currentBookCondition =
                                                    selected ?? false
                                                        ? condition
                                                        : '';
                                              }),
                                            ),
                                            Text(condition),
                                          ]),
                                        ),
                                      )
                                      .toList(),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GridView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              gridDelegate:

                                  /// The following ignore could be removed by
                                  /// extracting this widget.
                                  /// ignore: lines_longer_than_80_chars
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio: 3 / 2,
                              ),
                              children: (state.data as List<Book>)
                                  .where((element) {
                                    bool locationMatch = _currentLocation ==
                                            '' ||
                                        element.location == _currentLocation;

                                    bool conditionMatch =
                                        _currentBookCondition == '' ||
                                            element.bookCondition ==
                                                _currentBookCondition;

                                    return locationMatch && conditionMatch;
                                  })
                                  .map((book) => BookItem(book: book))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
