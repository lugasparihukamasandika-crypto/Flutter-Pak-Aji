import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: MyTextField(
              myHint: "Input Username",
              txtController: txtUsername,
              radius: 10,
              hint: "Input Username",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: MyTextField(
              myHint: "Input Password",
              txtController: TextEditingController(),
              radius: 10,
              hint: "Input Password",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 196, 5, 234),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 196, 5, 234),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}