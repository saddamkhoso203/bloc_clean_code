import 'package:bloc_clean_coding/config/componants/loading-widget.dart';
import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../config/componants/internet_expection_widget.dart';
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
