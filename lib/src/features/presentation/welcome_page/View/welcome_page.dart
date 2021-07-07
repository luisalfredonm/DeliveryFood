import 'dart:ui';

import 'package:deliveryfood/src/colors/colors.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:deliveryfood/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  // const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: headerText(
                      texto: 'DELIVERED FAST FOOD TO YOUR DOOR ',
                      color: Colors.white,
                      fontSize: 45.0)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the right restaurants near you ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0),
                ),
              ),
              roundedButton(
                  labelButton: "Log in",
                  color: orange,
                  func: () {
                    Navigator.pushNamed(context, 'login');
                  }),
              roundedButton(
                  labelButton: 'Connect with facebook',
                  color: fbbuttonColor,
                  isWithIcon: true,
                  icon: AssetImage('assets/facebook.png'),
                  func: () => print('go to facebook')),
              // aqui va el boton azul del facebook
            ],
          )
        ],
      ),
    );
  }
}
