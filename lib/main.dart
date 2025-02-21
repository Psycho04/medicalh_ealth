import 'package:flutter/material.dart';
import 'package:medicalh_ealth/auth/auth_screen.dart';
import 'package:medicalh_ealth/auth/login_screen.dart';
import 'package:medicalh_ealth/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Health',
      home: const AuthScreen(),
      initialRoute: 'AuthScreen',
      routes: {
        'AuthScreen': (context) => const AuthScreen(),
        'LoginScreen': (context) => LoginScreen(),
        'signupScreen': (context) => const SignupScreen(),
      },
    );
  }
}