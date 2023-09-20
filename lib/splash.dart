// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(8),
          decoration:const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Text(
      
            'S',
            style: TextStyle(
              fontSize: 200,
            
            ),
          ),
        ),
      ),
    );
  }
}
