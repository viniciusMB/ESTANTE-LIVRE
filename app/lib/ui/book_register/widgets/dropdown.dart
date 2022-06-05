import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  final List<String> options;
  final String hintText;

  const Dropdown({
    Key? key,
    required this.options,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? selectedGenre = '';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 40,
      width: 345,
      decoration: const BoxDecoration(
        color: ShelfColors.greenLight,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: ShelfColors.greenLight,
        ),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<String>(
            focusColor: ShelfColors.greenLight,
            isExpanded: true,
            items: options
                .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                .toList(),
            onChanged: (value) => {},
            hint: Text(hintText),
            underline: const SizedBox(),
          ),
        ),
      ),
    );
  }
}
