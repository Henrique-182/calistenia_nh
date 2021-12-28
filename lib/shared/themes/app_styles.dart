import 'package:calistenia_nh/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final textStyle = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: AppColors.textColor,
  );

  static final googleButtonTextStyle = GoogleFonts.lexendDeca(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.googleButtonTextColor,
  );
}