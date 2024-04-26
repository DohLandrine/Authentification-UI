import 'package:flutter/material.dart';
import 'package:sample_screen/screens/forgot_password.dart';
import 'package:sample_screen/screens/reset_password.dart';
import 'package:sample_screen/screens/sign_in.dart';
import 'package:sample_screen/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResetPasswordScreen(),
    );
  }
}