import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thakaa_tourism_project/providers/auth_provider.dart';
import 'package:thakaa_tourism_project/screens/auth_screen.dart';
import 'package:thakaa_tourism_project/screens/bottom_navigation_bar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thakaa_tourism_project/screens/create_plan.dart';
import 'package:thakaa_tourism_project/screens/day1_screen.dart';
import 'package:thakaa_tourism_project/screens/days_screen.dart';
import 'firebase_options.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth.instance.signOut();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthProvider>(
        create: (_) => AuthProvider(),
      ),
    ],
    child: MyApp(),
  ));
  MysetSystemUIOverlayStyle();
}

void MysetSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return MaterialApp(
      title: 'Guidee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: authProvider.getUser() != null ? CreatePlanScreen() : AuthScreen(),
    );
  }
}
