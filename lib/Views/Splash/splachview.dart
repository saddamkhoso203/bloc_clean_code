import 'package:bloc_clean_coding/Services/splash/splashservices.dart';
import 'package:bloc_clean_coding/Views/routes/routes_name.dart';

import 'package:flutter/material.dart';

import '../../config/componants/internet_exception_widget.dart';
import '../../config/componants/rouded_button.dart';
import '../../data/exception/app_exceptiom.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // ignore: prefer_final_fields
  SplashServices _splashServices = SplashServices();
  @override
  void initState() {
    super.initState();
    _splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Text(
      'Splash Screen',
      style: TextStyle(fontSize: 50),
    )));
  }
}
