import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import '../view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.homeview);
              },
              child: const Text('Hpme View'))),
    );
  }
}
