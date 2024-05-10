import 'package:bloc_clean_coding/config/color/colors.dart';
import 'package:flutter/material.dart';

class LoginVIew extends StatefulWidget {
  const LoginVIew({super.key});

  @override
  State<LoginVIew> createState() => _LoginVIewState();
}

class _LoginVIewState extends State<LoginVIew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
    );
  }
}
