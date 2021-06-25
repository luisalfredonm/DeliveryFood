import 'package:flutter/material.dart';

Widget roundedButton({
  BuildContext context,
  double width = 350.0,
  double height = 45.0,
  double radius = 20.0,
  bool isWithIcon = false,
  ImageProvider<Object> icon,
  Color color,
  Function func,
  String labelButton,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon, labelButton, color, func)
        : _raisedButtonNotIcon(radius, labelButton, color, func),
  );
}

// AssetImage('assets/facebook.png'),
// 'Connect with facebook'
Widget _raisedButtonWithIcon(double radius, ImageProvider<Object> icon,
    String labelButton, Color color, Function func) {
  return RaisedButton(
    onPressed: func,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // falta imagen
        Image(
          image: icon,
          width: 20.0,
          height: 20.0,
        ),

        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            labelButton,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
    ),
  );
}

Widget _raisedButtonNotIcon(
    double radius, String labelButton, Color color, Function func) {
  return RaisedButton(
    onPressed: func,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            labelButton,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
    ),
  );
}
