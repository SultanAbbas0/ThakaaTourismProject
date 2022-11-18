import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/screens/bottom_navigation_bar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import "package:cloud_firestore/cloud_firestore.dart";

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guidee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationBarScreen(),
    );
  }
}
