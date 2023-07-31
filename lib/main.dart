import 'package:flutter/material.dart';
import 'package:th/features/auth/screens/log_in_screen.dart';
import 'package:th/features/auth/screens/log_in_screen_details.dart';
import 'package:th/features/auth/screens/save_info_screen.dart';
import 'package:th/features/home/screens/home_screen.dart';
import 'package:th/theme/pallete.dart';

import 'features/home/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Threads Clone',
      theme: Pallete.darkModeAppTheme,
      home: const SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        LogInScreen.routeName: (context) => const LogInScreen(),
        LogInScreenDetails.routeName: (context) => const LogInScreenDetails(),
        SaveInfoLogInScreen.routeName: (context) => const SaveInfoLogInScreen()
      },
    );
  }
}
