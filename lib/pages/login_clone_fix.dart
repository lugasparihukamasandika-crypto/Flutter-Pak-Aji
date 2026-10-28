import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/login_clone_text.dart';
import 'package:flutter_application_2/components/login_clone_textfield.dart';
import 'package:flutter_application_2/components/login_clone_button.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

  @override
  Widget build(BuildContext context) {
    // pindah login clone kemarin ke sini
    // lalu buat reusable component
    return Scaffold(
       body: Column(
        children: [
          SizedBox(height: 100),

          Container(
            margin: EdgeInsets.all(10),
            child: LoginCloneText(text: "Instagram", fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 45)
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: LoginCloneTextfield(hint: "Username, email or mobile number", txtController: TextEditingController()),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: LoginCloneTextfield(hint: "Password", txtController: TextEditingController()),
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            child: LoginCloneButton(
              onPressed: () {},
              text: "Log in",
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: LoginCloneText(
              text: "Forgot Password?",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            )
            ),
        ],
      ),
    );
  }
}