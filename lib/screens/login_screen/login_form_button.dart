import 'package:flutter/material.dart';

class LoginFormButton extends StatelessWidget {
  LoginFormButton(this.Login, {Key? key}) : super(key: key);
  VoidCallback Login;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Login(),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue[400],
        ),
        alignment: Alignment.center,
        child: Text(
          "Log in",
          style: TextStyle(fontSize: 16),
        ),
        height: 40,
      ),
    );
  }
}
