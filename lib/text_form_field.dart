import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField(this._fieldType, {this.controller, Key? key})
      : super(key: key);
  final String _fieldType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[50],
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(10)),
        child: FormBuilderTextField(
          name: _fieldType,
          validator: ((value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          }),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: _fieldType,
              border: InputBorder.none,
              focusColor: Colors.red),
          keyboardType: TextInputType.text,
          obscureText: _fieldType == "Password" ? true : false,
        ));
  }
}
