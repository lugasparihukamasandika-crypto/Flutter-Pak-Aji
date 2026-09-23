import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),

          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Instagram",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username, email or mobile number",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Forgot password?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 30),

          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Log in with Facebook",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),

          SizedBox(height: 100),

          Text(
            "Don't have an account?",
            style: TextStyle(fontSize: 14),
          ),

          SizedBox(height: 10),

          OutlinedButton(
            onPressed: () {},
            child: Text("Sign up"),
          ),
        ],
      ),
    );
  }
}