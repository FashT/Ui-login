import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Widget icon;
  bool obsecureText;
   final controller ;
  final String hintText;
   MyTextField({super.key, required this.icon, required this.obsecureText, this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: hintText,
          prefix: icon,iconColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          fillColor: const Color(0x0080376f),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(),),),
        ),
        controller: controller,
      ),
    );
  }
}