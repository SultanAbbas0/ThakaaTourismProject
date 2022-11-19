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
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 60, 106, 129), Colors.white],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome to Guidee",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Image(
                    image: AssetImage("assets/images/authpagee.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //Image(image: AssetImage('assets/images/Instagram_logo.svg.png')),
                        LoginForm(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: LoginBottomStatement(widget.ChangeFormType));
  }
}
