import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thakaa_tourism_project/screens/calendar.dart';
import 'package:thakaa_tourism_project/screens/submit_plan.dart';
import 'package:thakaa_tourism_project/text_form_field.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CreatePlanScreen extends StatelessWidget {
  CreatePlanScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 1000,
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
            child: Container(
              margin: EdgeInsets.only(top: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Trip",
                    style: GoogleFonts.righteous(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 33, 101, 141),
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(image: AssetImage("assets/images/create.png")),
                  CreatePlanForm(formKey: _formKey)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CreatePlanForm extends StatelessWidget {
  const CreatePlanForm({
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormBuilderState> _formKey;
  Future<String> Submit() async {
    _formKey.currentState!.save();

    final formData = _formKey.currentState!.value;
    final x = await FirebaseFirestore.instance
        .collection("Users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("trips")
        .doc();
    await x.set({
      "City": formData["City"],
      "Budget": formData["Budget \$"],
      "Country": formData["Country"],
      "Month": "OCT",
      "From": "10",
      "To": "12",
    });
    return x.id;
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Container(
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            MyTextFormField("Country"),
            SizedBox(height: 10),
            MyTextFormField("City"),
            SizedBox(height: 10),
            MyTextFormField("Budget \$"),
            SizedBox(height: 10),
            HomePage(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(width: 70, child: MyTextFormField("Year")),
            //     SizedBox(width: 70, child: MyTextFormField("Month")),
            //     SizedBox(width: 70, child: MyTextFormField("From")),
            //     SizedBox(width: 70, child: MyTextFormField("To")),
            //   ],
            // ),
            SizedBox(height: 10),
            SubmitFormButton(Submit)
          ],
        ),
      ),
    );
  }
}
