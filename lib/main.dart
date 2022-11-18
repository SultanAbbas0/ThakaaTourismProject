import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thakaa_tourism_project/providers/auth_provider.dart';
import 'package:thakaa_tourism_project/screens/auth_screen.dart';
import 'package:thakaa_tourism_project/screens/bottom_navigation_bar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import "package:cloud_firestore/cloud_firestore.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthProvider>(
        create: (_) => AuthProvider(),
      ),
    ],
    child: MyApp(),
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
      ),
      home: authProvider.getUser() != null
          ? BottomNavigationBarScreen()
          : AuthScreen(),
    );
  }
}
