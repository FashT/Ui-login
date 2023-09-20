// lib/screens/intro_screen.dart
import 'package:flutter/material.dart';
import 'package:moder_ui/texfield.dart';

import 'button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void signUp() {}
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
                      hintText: 'Email'),
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
                  MyButton(
                    text: 'Sign Up',
                    onTap: signUp,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text.rich(
                    TextSpan(
                      text: 'I have an account already.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        WidgetSpan(
                          child: Text(
                            'LOG IN',
                          ),
                          style: TextStyle(
                            color: Colors.white,
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
