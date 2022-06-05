import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final bool isAlert;

  const Button({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    this.isAlert = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    buttonColor = isAlert == true ? ShelfColors.pink : ShelfColors.green;

    return InkWell(
      onTap: () {},
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
        height: height,
        width: width,
        child: Text(text),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: ShapeDecoration(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          color: buttonColor,
        ),
      ),
    );
  }
}
