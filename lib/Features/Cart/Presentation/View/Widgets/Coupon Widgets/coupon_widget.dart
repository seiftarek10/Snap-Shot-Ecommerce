import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Shared%20Widgets/button.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Widgets/Coupon%20Widgets/coupon_text_field.dart';

class CuponWidget extends StatelessWidget {
  const CuponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(flex: 5, child: CuoponTextField()),
          Space.instance.horizontal8,
          Expanded(
              flex: 2,
              child: AppButton(
                label: 'Apply',
                fontSize: 15.sp,
                onPressed: () {},
                radius: 15.r,
              )),
        ],
      ),
    );
  }
}
