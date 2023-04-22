import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // SIGN UP
  static Future<User?> signUp(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // SIGN IN
  static Future<User?> signIn(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // SIGN OUT
  static Future<void> signOut() async {
    _auth.signOut();
  }

  // USER STREAM
  static Stream<User?> get firebaseUserStream => _auth.authStateChanges();
}