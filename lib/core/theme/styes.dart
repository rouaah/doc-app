import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app/core/theme/colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainBlue);

  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.grey);

  static TextStyle font16WhiteSmibold = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white);
}
