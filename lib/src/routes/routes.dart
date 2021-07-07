import 'package:deliveryfood/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:deliveryfood/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:deliveryfood/src/features/presentation/login_page/View/login_page.dart';
import 'package:deliveryfood/src/features/presentation/search_page/View/searchView.dart';
import 'package:deliveryfood/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:deliveryfood/src/features/presentation/tabs/tabs_page.dart';
import 'package:deliveryfood/src/features/presentation/welcome_page/View/welcome_page.dart';

import 'package:flutter/widgets.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgotpassword': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
};
