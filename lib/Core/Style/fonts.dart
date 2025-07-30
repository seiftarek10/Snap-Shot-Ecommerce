import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fonts {
  Fonts._();

  static Fonts instance = Fonts._();

  TextStyle get font16_500Grey => TextStyle(
      fontSize: 16.sp, color: Colors.grey[500], fontWeight: FontWeight.w500);
  TextStyle get font16_500Black => TextStyle(
      fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w500);

  TextStyle get font18_700Black => TextStyle(
      fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w700);
  TextStyle get font14_500Black => TextStyle(
      fontSize: 14.sp, color: Colors.black, fontWeight: FontWeight.w500);
  TextStyle get font36BoldBlack => TextStyle(
      color: Colors.black, fontSize: 36.sp, fontWeight: FontWeight.bold);
  TextStyle get font20White => TextStyle(
        color: Colors.white,
        fontSize: 20.sp,
      );
  TextStyle get font32BoldWhite => TextStyle(
      color: Colors.white, fontSize: 32.sp, fontWeight: FontWeight.bold);
  TextStyle get font14_500White => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      );
  TextStyle get font22Black => TextStyle(
        color: Colors.black,
        fontSize: 22.sp,
      );

  TextStyle get font26BoldBlack => TextStyle(
      color: Colors.black, fontSize: 26.sp, fontWeight: FontWeight.bold);
}
