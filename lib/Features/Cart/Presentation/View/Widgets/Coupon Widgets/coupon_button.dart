import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class CouponButton extends StatelessWidget {
  const CouponButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: AppColors.instance.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: Text('Apply',
              style: Fonts.instance.font14_500Black
                  .copyWith(color: AppColors.instance.white,))),
    );
  }
}
