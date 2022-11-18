import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/screens/signup_screen/signup_bottom_statement.dart';
import 'package:thakaa_tourism_project/screens/signup_screen/signup_form.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen(this.ChangeFormType, {Key? key}) : super(key: key);
  VoidCallback ChangeFormType;
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage('assets/images/Instagram_logo.svg.png')),
              SignupForm(),
            ],
          ),
        ),
        bottomNavigationBar: SignupBottomStatement(widget.ChangeFormType));
  }
}
