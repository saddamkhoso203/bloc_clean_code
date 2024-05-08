import 'package:bloc_clean_coding/Views/routes/routes_name.dart';
import 'package:bloc_clean_coding/config/data/exception/app_exceptiom.dart';
import 'package:flutter/material.dart';

import '../../config/componants/internet_exception_widget.dart';
import '../../config/componants/rouded_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        throw NoInternetException();
      }),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InternetExpections(
                onPress: () {},
              ),
            )
          ],
        )),
      ),
    );
  }
}
