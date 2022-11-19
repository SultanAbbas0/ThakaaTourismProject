import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/screens/login_screen/login_screen.dart';
import 'package:thakaa_tourism_project/screens/signup_screen/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLoginScreen = true;
  void ChangeFormType() {
    setState(() {
      _isLoginScreen = !_isLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return !_isLoginScreen
        ? SigninScreen(ChangeFormType)
        : SignupScreen(ChangeFormType);
  }
}
