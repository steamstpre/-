import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginCheck extends ChangeNotifier {
  bool _statusOfLogin = false;

  bool get statusOfLogin => _statusOfLogin;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void checkStatusOfLogin() {
    // if (_firebaseAuth.currentUser != null) {
    //   _statusOfLogin = true;
    // } else {
    //   _statusOfLogin = false;
    // }

    notifyListeners();
  }
}
