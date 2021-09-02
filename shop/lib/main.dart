import 'package:flutter/material.dart';
import 'package:shop/routs.dart';
import 'package:shop/screens/splash/splash_screen.dart';
import 'package:shop/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme:theme(),
        home: SplashScreen(),
    initialRoute: SplashScreen.routeName,
    routes: routes,
    );
  }
}