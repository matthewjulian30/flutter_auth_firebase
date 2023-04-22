import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_authtest/loginpage.dart';
import 'package:flutter_application_authtest/mainpage.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // ASSIGN USER
    User? firebaseUser = Provider.of<User?>(context);

    // IF USER null go to LoginPage, ELSE go to MainPage
    return (firebaseUser == null) ? const LoginPage() : MainPage(user: firebaseUser);
  }
}