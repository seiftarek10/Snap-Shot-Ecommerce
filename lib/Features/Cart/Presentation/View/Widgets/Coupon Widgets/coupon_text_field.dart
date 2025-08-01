
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CuoponTextField extends StatelessWidget {
  const CuoponTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Fonts.instance.font16_500Black,
      decoration: InputDecoration(
        isDense: true, // removes default extra space
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.h), // balanced padding
        hintText: 'Apply Coupon',
        hintStyle: Fonts.instance.font14_500Black.copyWith(
          color: AppColors.instance.grey,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Icon(
            Icons.confirmation_num_outlined,
            size: 24.sp,
            color: AppColors.instance.grey,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 50.w,
          minHeight: 50.h,
        ),
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
      ),
    );
  }

  OutlineInputBorder get outlineInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: Colors.grey[500]!, width: 1.sp),
    );
  }
}