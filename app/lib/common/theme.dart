import 'package:estante_livre/common/shelf_colors.dart';
import 'package:flutter/material.dart';

final shelfTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: ShelfColors.green,
    surface: ShelfColors.greenLight,
    surfaceVariant: ShelfColors.yellowLight,
    inverseSurface: ShelfColors.blueLight,
    secondary: ShelfColors.red,
    secondaryContainer: ShelfColors.pink,
    tertiary: ShelfColors.greenLight,
    background: ShelfColors.fakeWhite,
    error: ShelfColors.red,
  ),
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
);
