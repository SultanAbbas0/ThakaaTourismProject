import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class SignupBottomStatement extends StatelessWidget {
  SignupBottomStatement(this.changeFormType, {Key? key}) : super(key: key);
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
            style: TextStyle(
              color: Colors.black,
            ),
            text: "Already have an account? ",
            children: [
              TextSpan(
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                  text: "Login!",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      changeFormType();
                    })
            ],
          ),
        ));
  }
}
