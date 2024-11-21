import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_app/features/auth/screens/login_screen.dart';

void main() {
  runApp(const ProviderScope(child: reddit_app()));
}

class reddit_app extends ConsumerStatefulWidget {
  const reddit_app({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _reddit_appState();
}

class _reddit_appState extends ConsumerState<reddit_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
