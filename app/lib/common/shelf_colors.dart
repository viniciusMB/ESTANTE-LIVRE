import 'package:flutter/material.dart';

/// A class that holds the colors used in the application.
/// It is used to avoid duplicating the same colors in multiple places.
/// It is also used to make the colors accessible in the whole application.
class ShelfColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension. You can see this same pattern
  // on some flutter classes, such as Colors.
  const ShelfColors._();

  static const Color blue = Color(0xFF80A9E0);
  static const Color blueLight = Color(0xFF74DAE0);
  static const Color pink = Color(0xFFEE6060);
  static const Color pinkLight = Color(0xFFE0948B);
  static const Color yellow = Color(0xFFE0B45E);
  static const Color yellowLight = Color(0xFFF7E0B5);
  static const Color green = Color(0xFF69E0A3);
  static const Color greenLight = Color(0xFFC2F2D9);
  static const Color fakeWhite = Color(0xFFF5EFEF);
  static const Color grey = Color(0xFF333333);
}
