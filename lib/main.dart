import 'package:aplikasi_toko_sepatu/pages/home/edit_profile_page.dart';
import 'package:aplikasi_toko_sepatu/pages/home/main_page.dart';
import 'package:aplikasi_toko_sepatu/pages/home/wishlist_page.dart';
import 'package:aplikasi_toko_sepatu/pages/signup.dart';
import 'package:aplikasi_toko_sepatu/pages/signin.dart';
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
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/wishlist': (context) => WishlistPage(),
        '/edit-profile': (context) => EditProfilePage(),
      },
    );
  }
}
