import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.06,
      child: TextFormField(
        cursorColor: AppColors.instance.black,
        style: Fonts.instance.font14_500Black,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 1, color: AppColors.instance.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.instance.black),
            ),
            label: Text(label,
                style: Fonts.instance.font16_500Grey.copyWith(fontSize: 14.sp)),
            labelStyle: Fonts.instance.font22Black),
      ),
    );
  }
}
