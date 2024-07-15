import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Login Page'),
        ElevatedButton(
          onPressed: () {
          },
          child: const Text('Login with github'),
        ),
      ],
    );
  }
}