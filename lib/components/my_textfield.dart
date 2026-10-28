import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final String hint;
  final TextInputType? keyboardType;

  const MyTextField({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    required this.hint,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}