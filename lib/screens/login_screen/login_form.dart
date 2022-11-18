import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:thakaa_tourism_project/screens/login_screen/login_form_button.dart';
import 'package:thakaa_tourism_project/text_form_field.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  void Login() async {
    try {
      _formKey.currentState!.save();
      if (_formKey.currentState!.validate()) {
        final formData = _formKey.currentState!.value;
        showDialog(
            context: context,
            builder: (context) {
              return AbsorbPointer(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            });
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: formData['Email'].toString().trim(),
          password: formData['Password'],
        );
        Navigator.pop(context);
      }
    } catch (e) {
      print("My Print: ${e}");
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 1),
          content: Text('email/password is not valid')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          MyTextFormField("Email"),
          SizedBox(height: 10),
          MyTextFormField("Password"),
          LoginFormButton(Login),
        ],
      ),
    );
  }
}
