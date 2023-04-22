import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_authtest/auth_services.dart';

class MainPage extends StatelessWidget {
  final User user;

  const MainPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Page")),
      body: Center(child: Column(
        children: [
          // Text that show user id
          Text(user.uid),

          // Button for sign out
          ElevatedButton(onPressed: () async{
            await AuthServices.signOut();
          }, child: const Text('Sign Out'))
        ],
      )),
    );
  }
}