import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_authtest/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: Column(
          children: [
            // Text field for email
            TextField(
              controller: emailController,
            ),
            // Text field for password
            TextField(
              controller: passwordController,
            ),
            // Button for sign in, required email and password
            ElevatedButton(onPressed: ()async{
              await AuthServices.signIn(emailController.text, passwordController.text);
            }, child: const Text('Sign In'))
          ],
        ),
      ),
    );
  }
}