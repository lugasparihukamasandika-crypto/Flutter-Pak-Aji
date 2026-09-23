import 'package:flutter/material.dart';

class LoginCloneButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const LoginCloneButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                )),
    );
  }
}