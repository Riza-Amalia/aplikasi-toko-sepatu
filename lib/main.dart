import 'package:aplikasi_toko_sepatu/pages/signup.dart';
import 'package:aplikasi_toko_sepatu/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-up': (context) => SignUpPage(),
      },
    );
  }
}
