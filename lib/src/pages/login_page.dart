import 'package:flutter/material.dart';
// Colors
import 'package:deliveryfood/src/colors/colors.dart';
// Widgets
import 'package:deliveryfood/src/widgets/back_button.dart';
// UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white),
    );
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image(
              width: double.infinity,
              height: 350.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1576473330911-c41aec45b972?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80'),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        Transform.translate(
          offset: Offset(0.0, -20.0),
          child: Container(
            width: double.infinity,
            height: 500.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    Text(
                      'Login to your account',
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0),
                    ),
                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),
                    _forgotPassword(context),
                    _signIn(context)
                  ],
                ),
              ),
              padding: EdgeInsets.all(20.0),
            ),
          ),
        )
      ],
    ));
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
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: 350.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Theme.of(context).accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _forgotPassword(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'forgotpassword');
      },
      child: Text(
        'Forgot you password',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
        ),
      ),
    ),
  );
}

Widget _signIn(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            color: gris,
            fontWeight: FontWeight.w400,
            fontSize: 15.0,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Sign up",
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    ),
  );
}
