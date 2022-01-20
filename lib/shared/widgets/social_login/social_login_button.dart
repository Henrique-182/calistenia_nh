import 'package:calistenia_nh/shared/themes/app_colors.dart';
import 'package:calistenia_nh/shared/themes/app_images.dart';
import 'package:calistenia_nh/shared/themes/app_styles.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.googleButtonBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.googleButtonBorderColor,
            )
          )
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.google),
                  SizedBox(width: 10),
                  Container(
                    height: 56,
                    width: 1,
                    color: AppColors.googleButtonBorderColor,
                  ),
                ],
              )
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Faça login com Google",
                    style: TextStyles.googleButtonTextStyle,
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