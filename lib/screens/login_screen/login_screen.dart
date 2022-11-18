import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/screens/login_screen/login_bottom_statement.dart';
import 'package:thakaa_tourism_project/screens/login_screen/login_form.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen(this.ChangeFormType, {Key? key}) : super(key: key);
  VoidCallback ChangeFormType;
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage('assets/images/Instagram_logo.svg.png')),
              LoginForm(),
            ],
          ),
        ),
        bottomNavigationBar: LoginBottomStatement(widget.ChangeFormType));
  }
}
