import 'package:deliveryfood/src/pages/forgot_password.dart';
import 'package:deliveryfood/src/pages/login_page.dart';
import 'package:deliveryfood/src/pages/welcome_page.dart';
import 'package:flutter/widgets.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgotpassword': (BuildContext context) => ForgotPassword(),
};
