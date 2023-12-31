// lib/main.dart
import 'package:flutter/material.dart';
import 'package:moder_ui/introductory_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';
import 'splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
runApp(MyApp());
} 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isFirstTimeUser = true;

  @override
  void initState() {
    super.initState();
    checkFirstTimeUser();
  }

  Future<void> checkFirstTimeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isFirstTimeUser = prefs.getBool('isFirstTimeUser') ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter App',
      home: LoginPage(),
   // isFirstTimeUser ? SplashScreen() : LoginPage(),
    );
  }
}