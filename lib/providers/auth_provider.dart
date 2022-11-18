import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// ALL GOOD ///

///////
/// Listens to Authentication changes, storing the returned user.
///

class AuthProvider extends ChangeNotifier {
  Stream<User?>? authListener;
  User? _user;

  AuthProvider() {
    _ListenToAuthChanges();
  }

  void _ListenToAuthChanges() {
    final authListener =
        FirebaseAuth.instance.authStateChanges().listen((event) {
      _user = event;
      notifyListeners();
    });
  }

  User? getUser() {
    return _user;
  }
}
