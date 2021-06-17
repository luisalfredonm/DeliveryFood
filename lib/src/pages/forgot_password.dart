import 'package:deliveryfood/src/widgets/back_button.dart';
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
              Text(
                'Forgot password',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
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
              _buttonLogin(context),
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

Widget _buttonLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    width: 350.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: () {
        _showAlert(context);
        // Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Theme.of(context).accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Send',
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

void _showAlert(BuildContext context) {
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
                  image: AssetImage('assets/lock.png'),
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    'Your password has been reset',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    "You'll shortly receive an email with a code to setup a new password",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                _doneButton(context)
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    width: 370.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: () {
        // Navigator.pushNamed(context, 'login');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Theme.of(context).accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Done',
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
