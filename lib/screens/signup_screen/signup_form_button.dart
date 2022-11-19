import 'package:flutter/material.dart';

class SignupFormButton extends StatelessWidget {
  SignupFormButton(this.Signup, {Key? key}) : super(key: key);
  VoidCallback Signup;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Signup(),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue[400],
        ),
        alignment: Alignment.center,
        child: Text(
          "Sign up",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        height: 40,
        width: 110,
      ),
    );
  }
}
