import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

Widget headerText(
    String texto, Color color, FontWeight fontWeight, double fontSize) {
  return Text(
    texto,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
