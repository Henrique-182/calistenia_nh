import 'package:calistenia_nh/modules/login/login_page.dart';
import 'package:calistenia_nh/modules/splash/splash_page.dart';
import 'package:calistenia_nh/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calistenia-NH App',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: LoginPage(),
    );
  }
}