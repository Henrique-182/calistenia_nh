import 'package:calistenia_nh/modules/home/home_page.dart';
import 'package:calistenia_nh/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calistenia-NH App',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}