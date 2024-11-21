import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_app/core/common/signIn_button.dart';
import 'package:reddit_app/core/constant/constant.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 70),
            child: Image.asset(
              Constant.logoPath,
              height: 50,
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'skip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          const Text(
            'Dive into anything',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Constant.loginEmotePath,
              height: 400,
            ),
          ),
          const SizedBox(height: 20),
          SignInButton()
        ],
      ),
    );
  }
}
