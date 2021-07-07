import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/back_button.dart';

import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText(
                texto: 'Forgot password',
                color: primaryColor,
                fontSize: 30.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your emil address. You will receive  link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _emailInput(),
              roundedButton(
                color: orange,
                labelButton: 'Send',
                func: () => _showAlert(context),
              )
              // _buttonLogin(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Your Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

void _showAlert(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('assets/lock.png'),
      'Your password has been reset',
      "You'll shortly receive an email with a code to setup a new password",
      roundedButton(
          labelButton: 'Done',
          color: orange,
          func: () {
            Navigator.pushNamed(context, 'login');
          })
      // roundedButton(context, "Done"),
      );
}
