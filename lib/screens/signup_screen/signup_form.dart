import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thakaa_tourism_project/screens/signup_screen/signup_form_button.dart';
import 'package:thakaa_tourism_project/text_form_field.dart';

class SignupForm extends StatefulWidget {
  SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormBuilderState>();
  void Signup() async {
    UserCredential new_user;
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
        final new_user =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: formData['Email'].toString().trim(),
          password: formData['Password'],
        );
        final x = await FirebaseFirestore.instance
            .collection("Users")
            .doc(new_user.user!.uid);

        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      print(e);
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
          MyTextFormField("Username"),
          SizedBox(height: 10),
          MyTextFormField("Email"),
          SizedBox(height: 10),
          MyTextFormField("Password"),
          SignupFormButton(Signup),
        ],
      ),
    );
  }
}
