import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputType;
  final double width;
  final int maxLines;

  const TextFieldInput({
    Key? key,
    required this.width,
    required this.textEditingController,
    required this.hintText,
    required this.textInputType,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    );

    return SizedBox(
      width: width,
      child: TextField(
        maxLines: maxLines,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          fillColor: ShelfColors.greenLight,
          contentPadding: const EdgeInsets.all(20),
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
