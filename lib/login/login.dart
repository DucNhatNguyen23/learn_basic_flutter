import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'loginForm.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2E),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 100),
                  child: const Column(
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Please sign in to your existing account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,

                        ),
                      ),
                    ],
                  )),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
