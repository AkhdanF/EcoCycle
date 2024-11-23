import 'package:flutter/material.dart';
import 'package:ecocycle/screen/confirmpage.dart';
import 'package:ecocycle/screen/homepage.dart';
import 'package:ecocycle/screen/landingpage.dart';
import 'package:ecocycle/screen/profile_screen.dart';
import 'package:ecocycle/screen/signinpage.dart';
import 'package:ecocycle/screen/signuppage.dart';
import 'package:ecocycle/widget/pickuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfileScreen(),
        '/pickup': (context) => const PickupPage(),
        '/confirmpage': (context) => const Confirmpage(),



      },
    );
  }
}

