import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginBottomStatement extends StatelessWidget {
  LoginBottomStatement(this.changeFormType, {Key? key}) : super(key: key);
  final VoidCallback changeFormType;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: (BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black26),
          ),
        )),
        height: 45,
        width: double.infinity,
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            text: "Don't have an account? ",
            children: [
              TextSpan(
                  text: "Sign up!",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      changeFormType();
                    })
            ],
          ),
        ));
  }
}
