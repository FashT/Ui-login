// lib/screens/login_page.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moder_ui/texfield.dart';

import 'button.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmdController = TextEditingController();

  void signIn() async {
    showDialog(
      context: context,
      builder: (ctx) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      Navigator.pop(context);
      //Wrong Email
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: Colors.purple,
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  MyTextField(
                    icon: const Icon(
                      Icons.email,
                    ),
                    obsecureText: false,
                    hintText: 'Email',
                  ),
                  MyTextField(
                      icon: const Icon(
                        Icons.password,
                      ),
                      obsecureText: true,
                      hintText: 'Password'),
                  const SizedBox(
                    height: 6,
                  ),
                  MyTextField(
                      icon: const Icon(Icons.flashlight_on),
                      obsecureText: true,
                      hintText: 'Confirm Password'),
                  const SizedBox(
                    height: 6,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  MyButton(
                    text: 'Log In',
                    onTap: signIn,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Don\'t have an account already?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        WidgetSpan(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
