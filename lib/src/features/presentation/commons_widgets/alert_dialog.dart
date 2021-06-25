import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubtitle, Widget doneButton) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          content: Container(
            height: 400.0,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText(
                      headerTitle,
                      primaryColor,
                      FontWeight.bold,
                      20.0,
                    )),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    headerSubtitle,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}
