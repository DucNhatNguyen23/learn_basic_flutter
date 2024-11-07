import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/home/home.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPass = true;
  String email = '';

  void handleLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        color: Colors.white,
      ),
      width: screenWidth,
      height: screenHeight / 1.75,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
        child: Column(
          children: [
            SizedBox(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text('Email'),
                    )),
                TextField(
                  onChanged: (text) {
                    setState(() {
                      email = text;
                    });
                  },
                  cursorColor: const Color(0xFFFF7622),
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFF0F5FA),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  ),
                ),
              ],
            )),
            const SizedBox(height: 10),
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Password'),
                      )),
                  TextField(
                    cursorColor: const Color(0xFFFF7622),
                    obscureText: showPass ? false : true,
                    decoration: InputDecoration(
                        fillColor: const Color(0xFFF0F5FA),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPass = !showPass;
                              });
                            },
                            icon: Icon(
                              showPass
                                  ? Icons.no_encryption
                                  : Icons.enhanced_encryption,
                              size: 20,
                            ))),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        iconSize: 20,
                        icon: const Icon(Icons.check_box_outline_blank)),
                    const Text('Remember me')
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Color(0xFFFF7622)),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 31),
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: handleLogin,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFFF7622),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign up here',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF7622), // Màu chữ cho phần đăng ký
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Xử lý sự kiện nhấn vào "Sign up here"
                      },
                  ),
                ]),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Or'),
                ))
          ],
        ),
      ),
    );
  }
}
