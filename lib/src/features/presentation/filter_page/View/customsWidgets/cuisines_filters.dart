import 'package:deliveryfood/src/colors/colors.dart';
import 'package:flutter/material.dart';

class CuisinesFilter extends StatefulWidget {
  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietnamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'American'),
            _roundedButtonFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, btnSushi, 'Sushi'),
            _roundedButtonFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, btnAsia, 'Asia'),
            _roundedButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, 'Pizza'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, 'Desserts'),
            _roundedButtonFilter(() {
              setState(() => btnFastFood = !btnFastFood);
            }, btnFastFood, 'Fast Food'),
            _roundedButtonFilter(() {
              setState(() => btnVietnamese = !btnVietnamese);
            }, btnVietnamese, 'Vietnamese'),
          ],
        )
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText) {
  return RaisedButton(
    onPressed: func,
    elevation: 0.5,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.circular(30.0),
      side: BorderSide(
        color: isActive ? orange : gris,
      ),
    ),
    child: Text(
      labelText,
      style: TextStyle(
        color: isActive ? orange : gris,
      ),
    ),
  );
}
