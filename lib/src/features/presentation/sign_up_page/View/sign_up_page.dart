import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/back_button.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/rounded_button.dart';

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(
                texto: 'Create an account',
                color: primaryColor,
                fontSize: 30.0,
              ),
              _userInput(context),
              _emailInput(context),
              _phoneInput(context),
              _dayOfBirthInput(context),
              _passwordInput(context),
              // _signUpButton(context),
              roundedButton(
                color: orange,
                labelButton: 'Sign Up',
                func: () {},
              ),
              _termsAndConditions(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _userInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _emailInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _phoneInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Phone',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _dayOfBirthInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Date of Birth',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _passwordInput(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: bgInputs,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _termsAndConditions(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
    child: Text(
      'By clicking Sign up you agree to the following Terms and Conditions without reservation',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
      ),
    ),
  );
}
