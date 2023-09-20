import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  Function()? onTap;

   MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.black)
          ),
          child: Text(text,textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
