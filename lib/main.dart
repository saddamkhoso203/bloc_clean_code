import 'package:bloc_clean_coding/Views/routes/routes.dart';
import 'package:bloc_clean_coding/Views/routes/routes_name.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your  application.
// This widget is the root of your  application.



  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.splashview,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}







