import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/models/trip.dart';
import 'package:thakaa_tourism_project/screens/bottom_navigation_bar_screen.dart';
import 'package:thakaa_tourism_project/screens/homescreen.dart';

class SubmitFormButton extends StatelessWidget {
  SubmitFormButton(this.submit, {Key? key}) : super(key: key);
  Function submit;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showDialog(
            context: context,
            builder: (context) {
              return AbsorbPointer(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            });
        String id = await submit();
        final tripDoc = await FirebaseFirestore.instance
            .collection("Users")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection("trips")
            .doc(id)
            .get();
        final tripData = TripModel.fromFirestore(tripDoc.data()!);
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(tripData: tripData)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 35, right: 35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue[400],
        ),
        alignment: Alignment.center,
        child: Text(
          "Submit",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        height: 40,
      ),
    );
  }
}
