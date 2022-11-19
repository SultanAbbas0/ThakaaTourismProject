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
    return Container(
      child: Scaffold(
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image: AssetImage("assets/images/authpagee.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          //Image(image: AssetImage('assets/images/Instagram_logo.svg.png')),
                          SignupForm(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: SignupBottomStatement(widget.ChangeFormType)),
    );
  }
}
