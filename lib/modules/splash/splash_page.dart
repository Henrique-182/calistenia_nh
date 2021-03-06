import 'package:calistenia_nh/shared/auth/auth_controller.dart';
import 'package:calistenia_nh/shared/themes/app_colors.dart';
import 'package:calistenia_nh/shared/themes/app_images.dart';
import 'package:calistenia_nh/shared/themes/app_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 35,
            child: Image.asset(AppImages.splashPageLogo)
          ),
          Positioned(
            bottom: size.height * 0.08,
            left: 0,
            right: 0,
            child: Text("CALISTENIA NH", textAlign: TextAlign.center, style: TextStyles.textStyle,),
          ),
        ]
      ),
    );
  }
}