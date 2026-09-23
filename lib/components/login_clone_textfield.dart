import 'package:flutter/material.dart';

class LoginCloneTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController txtController;
  const LoginCloneTextfield({super.key, required this.hint, required this.txtController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(),
      ),
    );
  }
}