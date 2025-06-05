import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fonts {
  Fonts._();

  static Fonts instance = Fonts._();

  TextStyle get font18_500Grey => TextStyle(
      fontSize: 18.sp, color: Colors.grey[500], fontWeight: FontWeight.w500);
  TextStyle get font16_500Black => TextStyle(
      fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w500);
  TextStyle get font18_500Black => TextStyle(
      fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500);
  TextStyle get font40BoldBlack => TextStyle(
      color: Colors.black, fontSize: 40.sp, fontWeight: FontWeight.bold);
  TextStyle get font24White => TextStyle(
        color: Colors.white,
        fontSize: 24.sp,
      );
  TextStyle get font36White => TextStyle(
        color: Colors.white,
        fontSize: 36.sp,
      );
  TextStyle get font16White => TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
      );
  TextStyle get font24Black => TextStyle(
        color: Colors.black,
        fontSize: 24.sp,
      );
}
