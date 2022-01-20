import 'package:calistenia_nh/modules/login/login_controller.dart';
import 'package:calistenia_nh/shared/themes/app_colors.dart';
import 'package:calistenia_nh/shared/themes/app_images.dart';
import 'package:calistenia_nh/shared/themes/app_styles.dart';
import 'package:calistenia_nh/shared/widgets/social_login/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned( // logo da LoginPage
              top: 50,
              left: 0,
              right: 0,
              child: Image.asset(AppImages.loginPage),
            ),
            Positioned(
              bottom: size.height * 0.08,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Aprenda SKILLS na CALISTENIA",
                    textAlign: TextAlign.center,
                    style: TextStyles.textStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: Text(
                      "A partir da experiência de CALISTÊNICOS",
                      textAlign: TextAlign.center,
                      style: TextStyles.textStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
                    child: Text(
                      "Comece hoje sua EVOLUÇÃO!",
                      textAlign: TextAlign.start,
                      style: TextStyles.textStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 40, right: 40
                    ),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}