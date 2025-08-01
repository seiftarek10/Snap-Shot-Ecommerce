import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.label, this.radius, this.fontSize,
  });

  final void Function() onPressed;
  final String label;
  final double? radius,fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.instance.black,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius?? 30.r))),
        child: Text(
          label,
          style: Fonts.instance.font20White.copyWith(fontSize: fontSize),
        ));
  }
}
