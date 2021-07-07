import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

Widget cardVertical({
  BuildContext context,
  double width,
  double height,
  ImageProvider<Object> image,
  String title,
  String subtitle,
}) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: headerText(
                texto: title,
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: headerText(
                  texto: subtitle,
                  fontSize: 13.0,
                  color: gris,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    ),
  );
}
